---
    title: Migrate from Azure DevOps (cosmo.json) to GitHub (AL-Go)
    description: Step-by-step migration guide from Azure DevOps cosmo.json to GitHub AL-Go settings
---

# Migrate from Azure DevOps (cosmo.json) to GitHub (AL-Go)

This page documents how to convert an Azure DevOps repository that uses `.devops/cosmo.json` into a GitHub repository with AL-Go settings.

For the repository migration itself (code, history, branches), use the Microsoft AL-Go migration scenarios:

- [Migrate from Azure DevOps to AL-Go for GitHub (without history)](https://github.com/microsoft/AL-Go/blob/main/Scenarios/MigrateFromAzureDevOpsWithoutHistory.md)
- [Migrate from Azure DevOps to AL-Go for GitHub (with history)](https://github.com/microsoft/AL-Go/blob/main/Scenarios/MigrateFromAzureDevOpsWithHistory.md)

This page focuses on the **settings migration**: turning the content of `cosmo.json` into the correct AL-Go settings files.

## Target file structure on GitHub

| File | Purpose |
| - | - |
| `.github/AL-Go-Settings.json` | Repository-wide defaults (replaces most of `cosmo.json`) |
| `.github/<workflow>.settings.json` | Workflow-specific overrides (replaces `nextMinor`/`nextMajor` configs) |
| `.AL-Go/settings.json` | Project-specific settings (multi-project repositories only) |

See also: [Where are the settings located](https://aka.ms/algosettings#where-are-the-settings-located)

## Settings mapping: cosmo.json → AL-Go

### BC artifact configuration

In `cosmo.json`, the BC version is configured per `bcArtifacts` configuration with separate fields. In AL-Go, these are combined into a single `artifact` string.

**Format:** `<storageAccount>/<type>/<version>/<country>/<select>`

| cosmo.json field | AL-Go setting | Notes |
| - | - | - |
| `bcArtifacts.current.country` | `country` | Same values (`w1`, `de`, `us`, etc.) |
| `bcArtifacts.current.storageAccount` | first segment of `artifact` | Default `bcartifacts` can be omitted |
| `bcArtifacts.current.type` | second segment of `artifact` | Default `sandbox` can be omitted |
| `bcArtifacts.current.version` | third segment of `artifact` | Use `*` to derive from app dependencies |
| `bcArtifacts.current.select` | fifth segment of `artifact` | `latest`, `nextMinor`, `nextMajor`, etc. |

#### Example

**Before** (`.devops/cosmo.json`):

```json
{
    "bcArtifacts": {
        "current": {
            "country": "de",
            "type": "onprem",
            "version": "24.2",
            "select": "latest"
        }
    }
}
```

**After** (`.github/AL-Go-Settings.json`):

```json
{
    "country": "de",
    "artifact": "/onprem/24.2//latest"
}
```

### Multiple BC configurations (current / nextMinor / nextMajor)

In `cosmo.json`, `bcArtifacts` holds named configurations. In AL-Go, the equivalent is workflow-specific settings files.

**Before** (`.devops/cosmo.json`):

```json
{
    "bcArtifacts": {
        "current": {
            "country": "de",
            "version": "24",
            "select": "latest"
        },
        "nextMinor": {
            "country": "de",
            "version": "24",
            "select": "nextMinor"
        },
        "nextMajor": {
            "country": "de",
            "version": "25",
            "select": "latest"
        }
    }
}
```

**After:**

`.github/AL-Go-Settings.json` (used by CI/CD and as baseline):

```json
{
    "country": "de",
    "artifact": "//24//latest"
}
```

`.github/Next Minor.settings.json`:

```json
{
    "artifact": "//24//nextMinor"
}
```

`.github/Next Major.settings.json`:

```json
{
    "artifact": "//25//latest"
}
```

### Artifacts (dependencies)

In `cosmo.json`, dependencies come from `artifacts` (URL/fileshare), `devopsArtifacts` (NuGet or Azure DevOps feed), and `ipArtifacts` (product feed). In GitHub AL-Go, all dependencies are consolidated under `alpaca.artifacts`.

#### URL artifacts

**Before** (`.devops/cosmo.json`):

```json
{
    "artifacts": [
        {
            "name": "OPplus Extension",
            "version": "17.0.201002.0",
            "url": "C:\\azurefileshare\\customer-acme\\OPplus_17.0.app",
            "target": "app"
        }
    ]
}
```

**After** (`.github/AL-Go-Settings.json`):

```json
{
    "alpaca": {
        "artifacts": [
            {
                "type": "url",
                "name": "OPplus Extension",
                "url": "https://my.blob.core.windows.net/artifacts/OPplus_17.0.app?sv=..."
            }
        ]
    }
}
```

> [!NOTE]
> Fileshare paths (`C:\azurefileshare\...`) are not available on GitHub runners. Replace them with a direct download URL (Azure Blob Storage, any HTTPS endpoint, or use the [Alpaca fileshare URL](setup-artifacts.md#url)).

#### NuGet artifacts

**Before** (`.devops/cosmo.json`):

```json
{
    "devopsArtifacts": [
        {
            "type": "nuget",
            "name": "Contoso.MyProductApp.a1b2c3d4-e5f6-7890-abcd-ef1234567890",
            "version": "5.2.270944.0"
        }
    ]
}
```

**After** (`.github/AL-Go-Settings.json`):

```json
{
    "alpaca": {
        "artifacts": [
            {
                "name": "Contoso.MyProductApp.a1b2c3d4-e5f6-7890-abcd-ef1234567890",
                "version": "5.2.270944.0"
            }
        ]
    }
}
```

NuGet is the default artifact type in AL-Go, so `"type": "nuget"` can be omitted.

#### Azure DevOps feed artifacts

**Before** (`.devops/cosmo.json`):

```json
{
    "devopsArtifacts": [
        {
            "organization": "AL-Workshop",
            "project": "a88b7a20-8fcc-4cac-ae29-1d18614e9c02",
            "scope": "project",
            "feed": "P-MMe",
            "name": "fin"
        }
    ]
}
```

Azure DevOps feed artifacts (`upack`) have **no direct equivalent** in AL-Go. You must convert them to one of:

- A **NuGet package** published to a GitHub-accessible NuGet feed, then reference it as a NuGet artifact
- A **URL artifact** pointing to a direct download

If you use private NuGet feeds, also configure `trustedNuGetFeeds`:

```json
{
    "trustedNuGetFeeds": [
        {
            "url": "https://pkgs.dev.azure.com/myorg/_packaging/myfeed/nuget/v3/index.json",
            "authTokenSecret": "MyFeedToken"
        }
    ]
}
```

### Translations (XLIFF)

**Before** (`.devops/cosmo.json`):

```json
{
    "createTranslations": true,
    "translationLanguages": ["de-DE", "de-AT"],
    "testTranslations": true,
    "testTranslationRules": ["All"]
}
```

**After** (`.github/AL-Go-Settings.json`):

```json
{
    "alpaca": {
        "createTranslations": true,
        "translationLanguages": ["de-DE", "de-AT"],
        "testTranslations": true,
        "testTranslationRules": ["All"]
    }
}
```

The fields are the same, but they move under the `alpaca` key.

### NuGet feeds

**Before** (`.devops/cosmo.json`):

```json
{
    "customNuGetFeeds": [
        {
            "url": "https://pkgs.dev.azure.com/myorg/_packaging/myfeed/nuget/v3/index.json",
            "authToken": "$(MyFeedPAT)"
        }
    ]
}
```

**After** (`.github/AL-Go-Settings.json`):

```json
{
    "trustMicrosoftNuGetFeeds": true,
    "trustedNuGetFeeds": [
        {
            "url": "https://pkgs.dev.azure.com/myorg/_packaging/myfeed/nuget/v3/index.json",
            "authTokenSecret": "MyFeedToken"
        }
    ]
}
```

> [!NOTE]
> In AL-Go, `authTokenSecret` is the **name of a GitHub secret** (not the token itself). Create the corresponding secret in your GitHub repository settings.

### Compiler settings

| cosmo.json field | AL-Go setting | Notes |
| - | - | - |
| `codeCops` | `enableCodeCop`, `enableUICop`, `customCodeCops` | AL-Go uses individual boolean flags plus an array for custom cops |
| `rulesetFile` | `rulesetFile` | Same concept |
| `compilerVsixVersion` | `vsixFile` | Values differ: `container`→`default`, `latest`→`latest`, `prerelease`→`preview` |

### Versioning

| cosmo.json field | AL-Go setting | Notes |
| - | - | - |
| `setBuildIdInManifestOn` = `"Revision"` | `versioningStrategy` = `0` | Conceptual mapping only; choose the AL-Go strategy that fits. See [Versioning Strategies](versioning-strategies.md) |

### Premium / test settings

| cosmo.json field | AL-Go setting | Notes |
| - | - | - |
| `enablePremium` | `assignPremiumPlan` | Same intent |
| `importTestApps` | `installTestFramework` / `installTestRunner` | AL-Go has separate flags |

## Full migration example

**Before** — a typical `.devops/cosmo.json`:

```json
{
    "artifactsFeed": "MyProject",
    "devopsPool": "$(devopsPool)",
    "licenseFile": "$(dbclic-bc-de)",

    "createTranslations": true,
    "translationLanguages": ["de-DE"],
    "testTranslations": true,
    "codeCops": ["CodeCop", "UICop"],

    "customNuGetFeeds": [
        {
            "url": "https://pkgs.dev.azure.com/myorg/_packaging/myfeed/nuget/v3/index.json",
            "authToken": "$(MyFeedPAT)"
        }
    ],

    "bcArtifacts": {
        "current": {
            "country": "de",
            "type": "onprem",
            "version": "24.2",
            "select": "latest",
            "artifacts": [
                {
                    "name": "OPplus",
                    "version": "17.0.201002.0",
                    "url": "C:\\azurefileshare\\customer\\OPplus.app",
                    "target": "app"
                }
            ],
            "devopsArtifacts": [
                {
                    "name": "Contoso.MyTestLibrary.f1e2d3c4-b5a6-7890-dcba-0987654321fe",
                    "type": "nuget"
                }
            ]
        },
        "nextMajor": {
            "country": "de",
            "type": "onprem",
            "version": "25",
            "select": "latest"
        }
    }
}
```

**After** — GitHub AL-Go settings:

`.github/AL-Go-Settings.json`:

```json
{
    "country": "de",
    "artifact": "/onprem/24.2//latest",
    "versioningStrategy": 0,
    "enableCodeCop": true,
    "enableUICop": true,
    "trustMicrosoftNuGetFeeds": true,
    "trustedNuGetFeeds": [
        {
            "url": "https://pkgs.dev.azure.com/myorg/_packaging/myfeed/nuget/v3/index.json",
            "authTokenSecret": "MyFeedToken"
        }
    ],
    "alpaca": {
        "createTranslations": true,
        "translationLanguages": ["de-DE"],
        "testTranslations": true,
        "artifacts": [
            {
                "type": "url",
                "name": "OPplus",
                "url": "https://my.blob.core.windows.net/artifacts/OPplus.app?sv=..."
            },
            {
                "name": "Contoso.MyTestLibrary.f1e2d3c4-b5a6-7890-dcba-0987654321fe"
            }
        ]
    }
}
```

`.github/Next Major.settings.json`:

```json
{
    "artifact": "/onprem/25//latest"
}
```

Fields that were dropped:

- `artifactsFeed`, `devopsPool` — Azure DevOps specific, not needed
- `licenseFile` — BC 23+ uses Cronus by default; if needed, use `licenseFileUrlSecretName`
- fileshare `url` — replaced with HTTPS URL
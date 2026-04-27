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

> [!IMPORTANT]
> On GitHub, we recommend **one repository per customer** with all apps in the same repo. This way, dependencies between apps are found automatically by AL-Go. See [Recommendations](recommendations.md) for naming conventions and repository structure.

> [!IMPORTANT]
> Migration steps:
>
> 1. Open **COSMO Alpaca** in VS Code and run **Initialize** on the repository.
> 2. In GitHub, run the **Update AL-Go System Files** GitHub Action and set the template URL to `https://github.com/cosmoconsult/Alpaca-PTE@main`.
> 3. Run **Update AL-Go System Files** again with the same template URL a second time.
>
> Running the update twice is required to fully apply the COSMO Alpaca template configuration.

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
    "artifact": "/onprem/24.2//"
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
            "select": "nextMinor"
        },
        "nextMajor": {
            "country": "de",
            "select": "nextMajor"
        }
    }
}
```

**After:**

`.github/AL-Go-Settings.json` (used by CI/CD and as baseline):

```json
{
    "country": "de",
    "artifact": "//24//"
}
```

`.github/Next Minor.settings.json`:

```json
{
    "artifact": "////nextMinor"
}
```

`.github/Next Major.settings.json`:

```json
{
    "artifact": "////nextMajor"
}
```

### Artifacts (dependencies)

In `cosmo.json`, dependencies come from `artifacts` (URL/fileshare), `devopsArtifacts` (NuGet or Azure DevOps feed), and `ipArtifacts` (product feed). In GitHub AL-Go, all dependencies are consolidated under `alpaca.artifacts`.

> [!NOTE]
> `ipArtifacts` (product feed artifacts) have no direct equivalent in AL-Go. They must be migrated to NuGet artifacts.

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
                "url": "https://<cluster>.westeurope.cloudapp.azure.com/filebrowser/api/public/dl/<id>"
            }
        ]
    }
}
```

> [!NOTE]
> Fileshare paths (`C:\azurefileshare\...`) are not available on GitHub runners. Replace them with:
>
> - The [Alpaca fileshare URL](setup-artifacts.md#use-alpaca-fileshare) (recommended — colleagues don't need to move the files elsewhere)
> - Azure Blob Storage or any other HTTPS endpoint
>
> See also: [Setup Artifacts to Import on Container Startup](setup-artifacts.md)

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
            "authTokenSecret": "NUGET_FEED_TOKEN"
        }
    ]
}
```
> [!NOTE]
> `authTokenSecret` is the **name of a GitHub secret** that holds the feed token (not the token value itself). Create the corresponding secret in your GitHub repository settings.
> See also: [AL-Go `trustedNuGetFeeds`](https://aka.ms/algosettings#trustednugetfeeds)

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
    "trustedNuGetFeeds": [
        {
            "url": "https://pkgs.dev.azure.com/myorg/_packaging/myfeed/nuget/v3/index.json",
            "authTokenSecret": "NUGET_FEED_TOKEN"
        }
    ]
}
```


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
            "select": "nextMajor"
        }
    }
}
```

**After** — GitHub AL-Go settings:

`.github/AL-Go-Settings.json`:

```json
{
    "country": "de",
    "artifact": "/onprem/24.2//",
    "versioningStrategy": 0,
    "enableCodeCop": true,
    "enableUICop": true,
    "trustMicrosoftNuGetFeeds": true,
    "trustedNuGetFeeds": [
        {
            "url": "https://pkgs.dev.azure.com/myorg/_packaging/myfeed/nuget/v3/index.json",
            "authTokenSecret": "NUGET_FEED_TOKEN"
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
                "url": "https://<cluster>.westeurope.cloudapp.azure.com/filebrowser/api/public/dl/<id>"
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
    "artifact": "/onprem///nextMajor"
}
```

> [!NOTE]
> The `nextMajor` configuration in `cosmo.json` used a version. In AL-Go, `nextMajor` is handled via the `select` segment of the artifact string without a specific version.

Fields that were dropped:

- `artifactsFeed`, `devopsPool` — Azure DevOps specific, not needed
- `licenseFile` — BC 23+ uses Cronus by default; if needed, use `licenseFileUrlSecretName`
- fileshare `url` — replaced with HTTPS URL

## Merge multiple Azure DevOps Repositories into one multi project AL-Go repository

In Azure DevOps, a repository was often created for each app, with one subfolder for the actual app and another for the test app.
In AL-Go, it often makes sense to convert several of these repositories into one multi-project repository.
If you want to [merge them without history](https://github.com/microsoft/AL-Go/blob/main/Scenarios/MigrateFromAzureDevOpsWithoutHistory.md), this can be easily done by simply copying the repositories together.

However, if you want to preserve the history of both source repositories, this is also possible. To do this, first create and [initialize the destination repository](initialize-repository.md), and then merge the source repositories.

> [!IMPORTANT]
> The following procedure should be executed entirely locally or in a codespace and only pushed to GitHub after proper review.

```powershell
# Step 1: Clone the target repository
$TargetRepoPath = "C:\git\TargetRepo" # adjust as needed
Set-Location -Path $TargetRepoPath
git clone https://github.com/[MyOrga]/[MyRepo].git .

# Step 2: Add RepoA and fetch its history
git remote add repoa "https://[MyOrga]@dev.azure.com/[MyOrga]/[MyProject]/_git/[MyRepoA]"
git fetch repoa --tags

# Step 3: Merge RepoA into projA subdirectory
git merge -s ours --no-commit --allow-unrelated-histories repoa/main
git read-tree --prefix=projA/ -u repoa/main # projA is the name of the AL-Go project folder
git commit -m "Merge RepoA into projA subdirectory"

# Step 4: Add RepoB and fetch its history
git remote add repob "https://[MyOrga]@dev.azure.com/[MyOrga]/[MyProject]/_git/[MyRepoB]"
git fetch repob --tags

# Step 5: Merge RepoB into projB subdirectory
git merge -s ours --no-commit --allow-unrelated-histories repob/main
git read-tree --prefix=projB/ -u repob/main # projB is the name of the AL-Go project folder
git commit -m "Merge RepoB into projB subdirectory"

# Step 6: Verify the result
git log --all --graph --oneline

# Step 7: Remove remotes
git remote remove repoa
git remote remove repob

# Step 8: Push to GitHub
git push origin main --tags
```

It's possible that the `git log` won't resolve properly changes before the merge commit. However, `git blame` should provide the full history for all files.

When pushing to GitHub, an error may occur if the repository history contains files larger than 100 MB. In this case, these files must be removed or managed using Git LFS.
The files can be removed from the history using the following commands (requires Python and pip; use Codespace if necessary). The filenames can be found in the Git error message that appears during the push. Warning: This changes the commit history and should only be done if absolutely necessary. As always, test and verify locally first before pushing the changes to GitHub.

```powershell
# Step 1: Install git-filter-repo if not already installed
python -m pip install git-filter-repo

# Step 2: Remove large files from history
git filter-repo --path migration/Export-NAVObjects/01_NavBaseObjects.txt --invert-paths
git filter-repo --path migration/Export-NAVObjects/02_NavModuleObjects.txt --invert-paths # Repeat for each large file

#Step 3: Add origin remote and push to GitHub
git remote add origin https://github.com/[MyOrga]/[MyRepo].git
git push origin --force --all
git push origin --force --tags
```
---
    title: Migrate Common Settings from alpaca.json
    description: Migration guide for frequently used settings when moving from alpaca.json to AL-Go settings on GitHub
---

# Migrate Common Settings from alpaca.json

GitHub repositories should use AL-Go settings files instead of `alpaca.json`.

The base migration mapping is already documented in [Setup AL-Go Settings](setup-al-go-settings.md#migrating-from-alpacajson). This page expands that mapping with the most frequently used settings and migration examples.

The official AL-Go settings behavior is documented here:

- [AL-Go settings overview](https://aka.ms/algosettings)
- [Where are the settings located](https://aka.ms/algosettings#where-are-the-settings-located)
- [Overwrite settings](https://aka.ms/algosettings#overwrite-settings)

## Where the settings live now

The most common target files are:

- `.github/AL-Go-Settings.json` for repository-wide defaults
- `.github/<workflow>.settings.json` for workflow-specific behavior
- `.AL-Go/settings.json` for project-specific settings in multi-project repositories

## How to select the BC artifact version in AL-Go

In AL-Go, the old separate container settings are combined into the `artifact` setting.

Format:

`<storageaccount>/<type>/<version>/<country>/<select>`

The most common compact form omits values you keep at default, for example:

- `//24.2//latest`
- `//*//latest`
- `bcinsider/sandbox/27/us/nextmajor`

Relevant docs:

- [Change BC Version/Country](change-container.md)
- [AL-Go `artifact` setting](https://github.com/microsoft/AL-Go/blob/main/Scenarios/settings.md#artifact)

### Migration examples

Old intent: use BC `24.2`, keep normal latest selection

```json
{
    "country": "w1",
    "artifact": "//24.2//latest"
}
```

Old intent: let app dependencies determine the major/minor version

```json
{
    "artifact": "//*//latest"
}
```

Old intent: select an insider artifact explicitly

```json
{
    "artifact": "bcinsider/sandbox/27/us/latest"
}
```

## Frequently used settings migration

| Old configuration intent | New GitHub AL-Go setting |
| - | - |
| BC country | `country` |
| BC artifact selection | `artifact` |
| Container startup artifacts | `alpaca.artifacts` |
| Translation generation | `alpaca.createTranslations` |
| Translation languages | `alpaca.translationLanguages` |
| Translation validation | `alpaca.testTranslations` |
| Translation rules | `alpaca.testTranslationRules` |
| Trusted external NuGet feeds | `trustedNuGetFeeds` |
| Use Microsoft NuGet feeds | `trustMicrosoftNuGetFeeds` |
| Workflow versioning model | `versioningStrategy` |

## Example: migrate frequently used settings into `.github/AL-Go-Settings.json`

```json
{
    "$schema": "https://raw.githubusercontent.com/microsoft/AL-Go-Actions/v8.1/.Modules/settings.schema.json",
    "country": "w1",
    "artifact": "//24.2//latest",
    "versioningStrategy": 3,
    "trustMicrosoftNuGetFeeds": true,
    "trustedNuGetFeeds": [
        {
            "url": "https://pkgs.dev.azure.com/myorg/_packaging/myfeed/nuget/v3/index.json",
            "authTokenSecret": "MyFeedToken"
        }
    ],
    "alpaca": {
        "createTranslations": true,
        "translationLanguages": ["de-DE", "en-US"],
        "artifacts": [
            {
                "name": "CosmoConsult.Example.Dependency",
                "version": "1.2.3.4"
            }
        ]
    }
}
```

## Migration notes for artifacts

If you previously managed dependencies separately, move them into `alpaca.artifacts`.

Relevant docs:

- [Setup Artifacts to Import on Container Startup](setup-artifacts.md)
- [Packages View](packages-view.md)

Use:

- NuGet artifacts for packages from supported feeds
- URL artifacts for direct `.app` or `.zip` downloads

## Migration notes for workflow behavior

If a setting should only affect one workflow, move it out of the global settings file and place it in a workflow-specific settings file instead.

Examples:

- `.github/Minimum.settings.json`
- `.github/Next Minor.settings.json`
- `.github/Update AL-Go System Files.settings.json`

See also:

- [Setup Minimum & Other Workflows](setup-workflows.md)

## Recommended migration order

1. Move repository-wide defaults into `.github/AL-Go-Settings.json`.
2. Move workflow-specific overrides into `.github/<workflow>.settings.json`.
3. Move project-specific overrides into `.AL-Go/settings.json` when using multi-project repositories.
4. Commit and push the changes.
5. Run **Update AL-Go System Files** if workflow generation depends on the changed settings.

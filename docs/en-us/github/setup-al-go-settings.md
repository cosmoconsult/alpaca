---
    title: Setup AL-Go Settings
    description: Setup AL-Go Settings
---

# Setup AL-Go Settings

> [!IMPORTANT]
> This documentation is only relevant for GitHub/AL-Go repositories

The AL-Go settings of a GitHub repository control the behavior of the **development and build containers** as well as the **GitHub workflows**.

- They can be defined in GitHub variables or in various settings files as documented in the [AL-Go documentation](https://github.com/microsoft/AL-Go/blob/main/Scenarios/settings.md#where-are-the-settings-located)
- They can contain conditional settings as documented in the [AL-Go documentation](https://github.com/microsoft/AL-Go/blob/main/Scenarios/settings.md#conditional-settings)
- They are merged as documented in the [AL-Go documentation](https://github.com/microsoft/AL-Go/blob/main/Scenarios/settings.md#overwrite-settings-)

**Development containers** are [created via VS Code](../vsc-extension/create-container.md) while **Build containers** are automatically created by Build workflows (e.g. CI/CD) to publish compiled apps and run automated tests on them.

## AL-Go settings

All available AL-Go settings are documentented in the [AL-Go documentation](https://github.com/microsoft/AL-Go/blob/main/Scenarios/settings.md#settings)

| Element | Type | Default | Scope | Value |
| - | - | - | - | - |
| `country`                  | string   | `us`                                    | container, workflow | The country to determine the BC artifact. <br>[AL-Go documentation](https://github.com/microsoft/AL-Go/blob/main/Scenarios/settings.md#country) |
| `artifact`                 | string   | `bcartifacts/sandbox//<country>/latest` | container, workflow | The reference to the BC artifact used to create a container. <br>Either absolute url *(`https://...`)* or search uri *(`<storageaccount>/<type>/<version>/<country>/<select>`)*. <br>[AL-Go documentation](https://github.com/microsoft/AL-Go/blob/main/Scenarios/settings.md#artifact) |
| `trustedNuGetFeeds`        | object[] | `[]`                                    | container, workflow | Array of trusted NuGet feed specifications. <br>*(e.g. `{ "url": "...", "authTokenSecret": "..." }`)* <br>[AL-Go documentation](https://github.com/microsoft/AL-Go/blob/main/Scenarios/settings.md#trustedNuGetFeeds) |
| `trustMicrosoftNuGetFeeds` | boolean  | `true`                                  | container, workflow | Set `true` to trust NuGet feeds provided by Microsoft. <br>[AL-Go documentation](https://github.com/microsoft/AL-Go/blob/main/Scenarios/settings.md#trustMicrosoftNuGetFeeds) |
| `versioningStrategy`       | integer  | `0`                                     | workflow            | Determines how versioning is performed *(Recommendation: `3`)*. <br>[AL-Go documentation](https://github.com/microsoft/AL-Go/blob/main/Scenarios/settings.md#versioningStrategy) |
| `assignPremiumPlan`        | boolean  | `false`                                 | container           | Set `true` to enable premium user experience for the default user of sandbox containers. <br>[AL-Go documentation](https://github.com/microsoft/AL-Go/blob/main/Scenarios/settings.md#assignPremiumPlan) |

## BcContainerHelper Settings

The AL-Go settings can contain BcContainerHelper settings as documented in the [AL-Go documentation](https://github.com/microsoft/AL-Go/blob/main/Scenarios/settings.md#bccontainerhelper-settings)

| Element | Type | Default | Scope | Value |
| - | - | - | - | - |
| `TreatWarningsAsErrors` | string[] | `[]` | workflow | Array of AL warning codes, which should be treated as errors. |

## COSMO Alpaca Settings

The AL-Go settings can contain COSMO Alpaca specific settings, which are stored in the property `alpaca`.

```json title="Example"
{
    "$schema": "https://raw.githubusercontent.com/microsoft/AL-Go-Actions/v8.1/.Modules/settings.schema.json",
    "country": "w1",    // AL-Go Setting
    "debugMode": true,  // BcContainerHelper Setting
    "alpaca": {
        "artifacts": [] // COSMO Alpaca Setting
    }
}
```

### Artifacts

Settings to setup artifacts for containers.

| Element | Type | Default | Scope | Value |
| - | - | - | - | - |
| `alpaca.artifacts` | object[] | `[]` | container | Array of artifacts to import during the startup of a container. [COSMO Alpaca documentation](../containers/setup-artifacts.md) |

### Translations

Settings to setup translations creation and testing using [xliff-sync](https://github.com/rvanbekkum/ps-xliff-sync).

| Element | Type | Default | Scope | Value |
| - | - | - | - | - |
| `alpaca.createTranslations`   | boolean  | `false` | workflow | Set `true` to enable automatic generation of translation files (.xlf) based on the comments *(e.g. `Comment="de-DE=Foo\|\|de-AT=Bar"`)* for AL caption/labels using [xliff-sync](https://github.com/rvanbekkum/ps-xliff-sync). |
| `alpaca.translationLanguages` | string[] | `[]`    | workflow | Array of language tags for which the translation files are to be generated *(e.g. `[ "de-DE", "de-AT" ]`)* |
| `alpaca.testTranslations`     | boolean  | `false` | workflow | Set `true` to enable tests of the generated translation files (.xlf) for missing translations and additional rules using [xliff-sync](https://github.com/rvanbekkum/ps-xliff-sync) |
| `alpaca.testTranslationRules` | string[] | `[]`    | workflow | Array of the additional rules for which the generated translations files should be tested *(`All`, `ConsecutiveSpacesConsistent`, `ConsecutiveSpacesExist`, `OptionMemberCount`, `OptionLeadingSpaces`, `Placeholders`, `PlaceholdersDevNote`)*. <br>See [xliff-sync documentation](https://github.com/rvanbekkum/vsc-xliff-sync?tab=readme-ov-file#check-for-need-work-translations) for details. |
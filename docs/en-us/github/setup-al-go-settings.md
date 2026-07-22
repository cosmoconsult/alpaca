---
    title: Setup AL-Go Settings
    description: Setup AL-Go Settings
---

# Setup AL-Go Settings

The AL-Go settings of a GitHub repository control the behavior of the **development and build containers** as well as the **GitHub workflows**.

- They can be defined in GitHub variables or in various settings files as documented in the [AL-Go documentation](https://aka.ms/algosettings#where-are-the-settings-located)
- They can contain conditional settings as documented in the [AL-Go documentation](https://aka.ms/algosettings#conditional-settings)
- They are merged as documented in the [AL-Go documentation](https://aka.ms/algosettings#overwrite-settings-)

**Development containers** are [created via VS Code](create-container.md) while **Build containers** are automatically created by Build workflows (e.g. CI/CD) to publish compiled apps and run automated tests on them.

## AL-Go settings

All available AL-Go settings are documented in the [AL-Go documentation](https://aka.ms/algosettings#settings)

| Element | Type | Default | Scope | Value |
| - | - | - | - | - |
| `country`                  | string   | `us`                                    | container, workflow | The country to determine the BC artifact. <br>[AL-Go documentation](https://aka.ms/algosettings#country) |
| `artifact`                 | string   | `bcartifacts/sandbox//<country>/latest` | container, workflow | The reference to the BC artifact used to create a container. <br>Either absolute URL *(`https://...`)* or search URI *(`<storageaccount>/<type>/<version>/<country>/<select>`)*. <br>[AL-Go documentation](https://aka.ms/algosettings#artifact) |
| `trustedNuGetFeeds`        | object[] | `[]`                                    | container, workflow | Array of trusted NuGet feed specifications. <br>*(e.g. `{ "url": "...", "authTokenSecret": "..." }`)* <br>[AL-Go documentation](https://aka.ms/algosettings#trustedNuGetFeeds) |
| `trustMicrosoftNuGetFeeds` | boolean  | `true`                                  | container, workflow | Set `true` to trust NuGet feeds provided by Microsoft. <br>[AL-Go documentation](https://aka.ms/algosettings#trustMicrosoftNuGetFeeds) |
| `versioningStrategy`       | integer  | `0`                                     | workflow            | Determines how versioning is performed. Use the AL-Go default `0` unless you have a concrete reason for another strategy. <br>[AL-Go documentation](https://aka.ms/algosettings#versioningstrategy) |
| `assignPremiumPlan`        | boolean  | `false`                                 | container           | Set `true` to enable premium user experience for the default user of sandbox containers. <br>[AL-Go documentation](https://aka.ms/algosettings#assignPremiumPlan) |
| `licenseFileUrlSecretName` | string   | `LicenseFileUrl`                        | container           | The name of a GitHub secret containing the URL of the license file. <br>[AL-Go documentation](https://aka.ms/algosettings#licenseFileUrlSecretName) |

### License File

The AL-Go setting `licenseFileUrlSecretName` specifies the GitHub secret name containing the license file URL used by the BC service in the container.

#### Cronus License

To use the default Cronus license of your BC version, ensure that the GitHub secret containing the license file URL *(default: `LicenseFileUrl`)* does not exist.

For this you could set the AL-Go setting `licenseFileUrlSecretName` to a dummy value:

```json
{
  "licenseFileUrlSecretName": "NonExistingSecret"
}
```

#### Recommendations

- BC Version **< 23**:
  - If you don't use any 3rd party dependencies you can use the [default Cronus license](#cronus-license) of your BC version

  - If you use 3rd party dependencies you can use the BC23 Cronus license

    > [!NOTE]
    > Only for BC Versions **17.12+**, **18.7+**, **19.1+** or up until **BC22**

    - Create a GitHub secret:
        - Name: `BC_LIC_23_CRONUS`
        - Value: `https://ccppi.blob.core.windows.net/lic/Cronus.bclicense?sp=r&st=2023-06-08T05:34:31Z&se=2033-08-06T13:34:31Z&spr=https&sv=2022-11-02&sr=b&sig=5Noq50jApcWD4XQOG09v%2BChscfio%2B813Kfim79v88RY%3D`
    - Set AL-Go setting `licenseFileUrlSecretName`:

      ```json
      {
        "licenseFileUrlSecretName": "BC_LIC_23_CRONUS"
      }
      ```

- BC Version **>= 23**:
  - You can always use the [default Cronus license](#cronus-license) of your BC version because it includes all license ranges

- **COSMO-only**:

  If the default Cronus license of your BC version doesn't work for you, you can use a preconfigured GitHub Secret for a COSMO development license.

  These secrets are named after the following format: `BC_LIC_<language>[_<version>]` *(.bclicense)* or `BC_LIC_<language>[_<version>]_FLF` *(.flf)*

  Examples:
  - **.bclicense** *(BC version **17.12**, **18.7**, **19.1** and later)*:
    - BC_LIC_AT
    - BC_LIC_DE
    - BC_LIC_DE_CH
    - BC_LIC_ES
    - BC_LIC_FR
    - BC_LIC_HU
    - BC_LIC_RO_W1
    - BC_LIC_SE
  - **.flf** *(BC Version **17.11**, **18.6**, **19.0** and earlier)*
    - BC_LIC_AT_FLF
    - BC_LIC_DE_FLF
    - BC_LIC_DE_CH_FLF
    - BC_LIC_ES_FLF
    - BC_LIC_FR_FLF
    - BC_LIC_HU_FLF
    - BC_LIC_RO_W1_FLF
    - BC_LIC_SE_FLF

  > [!NOTE]
  > The list of all preconfigured GitHub Secrets can be found here:
  >
  > *GitHub* -> *Repository* -> *Settings* -> *Secrets and variables* -> *Actions* -> *Organization secrets*

## BcContainerHelper Settings

The AL-Go settings can contain BcContainerHelper settings as documented in the [AL-Go documentation](https://aka.ms/algosettings#bccontainerhelper-settings)

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
| `alpaca` > `artifacts` | object[] | `[]` | container | Array of artifacts to import during the startup of a container. [COSMO Alpaca documentation](setup-artifacts.md) |
| `alpaca` > `artifactsAppExcludeExpr` | string | `""` | container | Regular expression used to exclude apps while importing the artifacts during the container start. |

### Authentication

| Element | Type | Default | Scope | Value |
| - | - | - | - | - |
| `alpaca` > `auth` | string | `NavUserPassword` | container | The authentication method to access the container. This can be either `NavUserPassword` (default) or `AAD`. |

> [!IMPORTANT]
> To use `AAD` authentication, you must have a verified email address in your GitHub account that matches the domain of the [AAD authentication configuration](../admin/index.md#configuring-your-backend-for-aad-authentication).

> [!NOTE]
> This setting is only relevant for development containers created via VS Code. Build containers used in GitHub workflows always use `NavUserPassword` authentication.

### Translations

Settings to setup translations creation and testing using [xliff-sync](https://github.com/rvanbekkum/ps-xliff-sync).

| Element | Type | Default | Scope | Value |
| - | - | - | - | - |
| `alpaca` > `createTranslations`   | boolean  | `false` | workflow | Set `true` to enable automatic generation of translation files (.xlf) based on the comments *(e.g. `Comment="de-DE=Foo||de-AT=Bar"`)* for AL caption/labels using [xliff-sync](https://github.com/rvanbekkum/ps-xliff-sync). |
| `alpaca` > `translationLanguages` | string[] | `[]`    | workflow | Array of language tags for which the translation files are to be generated *(e.g. `[ "de-DE", "de-AT" ]`)* |
| `alpaca` > `testTranslations`     | boolean  | `false` | workflow | Set `true` to enable tests of translation files (.xlf) for missing translations and additional rules using [xliff-sync](https://github.com/rvanbekkum/ps-xliff-sync) |
| `alpaca` > `testTranslationRules` | string[] | `[]`    | workflow | Array of the additional rules for which the generated translations files should be tested *(`All`, `ConsecutiveSpacesConsistent`, `ConsecutiveSpacesExist`, `OptionMemberCount`, `OptionLeadingSpaces`, `Placeholders`, `PlaceholdersDevNote`)*. <br>See [xliff-sync documentation](https://github.com/rvanbekkum/vsc-xliff-sync?tab=readme-ov-file#check-for-need-work-translations) for details. |

### Breaking Change Check using NuGet Feeds

Settings to change the behavior of the breaking change check of the build workflows.

| Element | Type | Default | Scope | Value |
| - | - | - | - | - |
| `alpaca` > `useNuGetFeedsForUpgrade` | boolean | `false` | workflow | Set `true` to test for breaking changes by downloading previous app versions from the trusted NuGet feeds rather than from the assets of the latest GitHub release. |

### Tests

Settings to change the behavior of running tests for the build workflows.

| Element | Type | Default | Scope | Value |
| - | - | - | - | - |
| `alpaca` > `actionOnMissingTests` | string | `Warning` | workflow | Defines the action for the case where no test was executed for the test apps *(`None`, `Warning`, `Error`)*. |

### Code Analyzers for Test Apps

Settings to override code analyzer settings for test apps and BCPT apps.

> [!NOTE]
> These settings are only applied when [`enableCodeAnalyzersOnTestApps`](https://aka.ms/algosettings#enablecodeanalyzersontestapps) is enabled.

| Element | Type | Default | Scope | Value |
| - | - | - | - | - |
| `alpaca` > `enableCodeCopForTestApps` | boolean | [`enableCodeCop`](https://aka.ms/algosettings#enablecodecop) | workflow | Overrides `enableCodeCop` for test app builds. |
| `alpaca` > `enableUICopForTestApps` | boolean | [`enableUICop`](https://aka.ms/algosettings#enableuicop) | workflow | Overrides `enableUICop` for test app builds. |
| `alpaca` > `enablePerTenantExtensionCopForTestApps` | boolean | [`enablePerTenantExtensionCop`](https://aka.ms/algosettings#enablepertenantextensioncop) | workflow | Overrides `enablePerTenantExtensionCop` for test app builds. |
| `alpaca` > `enableAppSourceCopForTestApps` | boolean | [`enableAppSourceCop`](https://aka.ms/algosettings#enableappsourcecop) | workflow | Overrides `enableAppSourceCop` for test app builds. |
| `alpaca` > `customCodeCopsForTestApps` | string[] | [`customCodeCops`](https://aka.ms/algosettings#customcodecops) | workflow | Overrides `customCodeCops` for test app builds. If set to an empty array, the `customCodeCops` compilation parameter is removed. |
| `alpaca` > `rulesetFileForTestApps` | string | [`rulesetFile`](https://aka.ms/algosettings#rulesetfile) | workflow | Overrides `rulesetFile` for test app builds. |

### Update of AL-Go Settings Files

Settings to change the behavior of the workflow "COSMO Alpaca - Update Settings Files".

| Element | Type | Default | Scope | Value |
| - | - | - | - | - |
| `alpaca` > `enforceOrgBuildModesSettings` | boolean | `false` | workflow | Set `true` to enforce the conditional settings for build modes of the organization settings (`ALGoOrgSettings`). The conditional settings are only enforced in repositories using at least one build mode in any settings file. The conditional settings are only added to a settings file if both contain at least one matching setting (e.g. both contain `artifact`). |

### Container

Settings to change the behavior of the container.

| Element | Type | Default | Scope | Value |
| - | - | - | - | - |
| `alpaca` > `startupScriptUrl` | string | `""` | container | Overrides the startup scripts downloaded and used by the container. **NOTE**: This overrides the COSMO Alpaca specific customizations for the container startup. Should only be used with caution. |

## Migrating from alpaca.json

Migrate and remove existing *alpaca.json* files.

Mapping of container configurations to AL-Go settings files:
> - default   -> .github/AL-Go-Settings.json
> - current   -> .github/AL-Go-Settings.json
> - NextMinor -> .github/Test Next Minor.settings.json
> - NextMajor -> .github/Test Next Major.settings.json

Mapping of container configuration settings to AL-Go settings
> - name                                  -> *N/A*
> - inheritFromWorkflow                   -> *N/A*
> - country                               -> country
> - storageAccount, type, version, select -> artifact
> - artifacts                             -> alpaca > artifacts
> - licenseFile                           -> licenseFileUrlSecretName
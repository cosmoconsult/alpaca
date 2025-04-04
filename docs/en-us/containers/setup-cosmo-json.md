---
    title: Set up cosmo.json/alpaca.json parameters
    description: Set up cosmo.json/alpaca.json parameters
---

# Set up `cosmo.json`/`alpaca.json` parameters

# [**GitHub (AL-Go)**](#tab/github)
WIP

# [**Azure DevOps**](#tab/azdevops)

The `cosmo.json` define the used artifacts during setup of the container.

A container is created and used as:

* `build` ... Build Container in CI
* `dev`   ... Development / Demo Container

`"artifacts"` as well as `"devopsArtifacts"` can be specified global or in a specific `"bcArtifacts"` (`"current"`, `nextMinor`, `nextMajor`) configuration. Specific artifacts will be merged with global artifacts. Additionally the `"previousRelease"` can be specified in the global configuration. The `"previousRelease"` is a feed artifact and has the corresponding properties. The `"previousRelease"` option is **mandatory** if you enable the breaking change evaluation in the AppSourceCop code analyzer and therefore pulled for all builds.

```json
{
    // Common Parameters
    "artifactsFeed":  "MyProject",
    "devopsPool":     "$(devopsPool)",
    "dockerSwarmUrl": "$(dockerSwarmUrl)",
    "licenseFile":    "$(devlic-bc17-de)",
    "licenseScope":   "NavDatabase",
    // ...

    "customNavSettings": [
        {
            "settings": "EnableTaskScheduler=true,somethingElse=false",
            "ignoreIn": ["build"]
        }
    ],
    "customWebSettings": [
        {
            "settings": "a=true,b=false",
            "ignoreIn": ["dev"]
        }
    ],
   
    // Common Artifacts used for each bcArtifact configuration
    "artifacts": [],
    "devopsArtifacts": [],
    "previousRelease": {
        "organization": "MyOrganization",
        "scope": "organization",
        "feed": "MyFeed",
        "name": "MyPackageName"
    },

    "bcArtifacts": {
        "current": {
            // Specific Artifacts used only for this bcArtifact configuration
            "artifacts": [],
            "devopsArtifacts": []    
        },
        "nextMinor": {
            // ...
            "artifacts": [],
            "devopsArtifacts": []    
        },
        "nextMajor": {
            // ...
            "artifacts": [],
            "devopsArtifacts": []    
        },
        // ...
    },
    // ...
}
```

## Common Parameters

|Element|Type||Value|
|-|-|-|-|
|`"artifactsFeed"`        |string |**mandatory**|The name of the used Artifact Feed during build.|
|`"artifactsScope"`       |string |optional     |The scope of the artifact feed. Values are `organization` or **`project`** (default).|
|`"artifactsPackageName"` |string |optional     |The name of the output artifact. Otherwise, the default artifact is generated from App-Name (app.json) and non alpha numeric characters are replaced by `_`.|
|`"additionalDeploymentFeeds"` |array |optional |An optional array of additional deployment feeds. [more][additional-deployment-feeds]|
|`"publishToFolderStructure"` | boolean | optional | Publishes the artifact in a folder structure. The app file is put in a folder `app` and the test app is put into a folder `test`.
|`"devopsPool"`           |string |**mandatory**|The reference to the used DevOps build agent pool. The default `"$(devopsPool)"` references a variable from `CI Build Agent` variable group of the project.|
|`"licenseFile"`          |string |**mandatory**|The used license file for the container. [more](setup-cosmo-json.md#license-file)|
|`"customerLicense"`      |string |optional     |The  used license file for PR-Test during build to ensure all IDs are included in the customer license. Note: "licenseFile" is used, when this parameter is empty.|
|`"customerLicenseScope"` |string |optional     |The import scope for the customer license file. Values are: `Default`, `NavDatabase`, `Master`, `Tenant`.|
|`"useCustomScriptsFromRepo"`|boolean |optional |`true` to use custom scripts during container start. More information can be found here: [Set up custom scripts][setup-custom-scripts] |
|`"downloadSourcePreviousRelease"` |string |optional |Specify if the artifact for the breaking change test should be taken from the target branch of the pull request or from a feed. Values are: `Feed`, **`PR-Target`** (default). Use the above described option `"previousRelease"` to specify the feed and package name. |
|`"auth"`|string |optional |This can be either **`navuserpassword`** (default) or `aad`. Please note that to use `aad`, you first need to set up your backend correctl<>: [Configuring your backend for AAD authentication][aad-setup]. *This feature works with with docker-automation 0.11.29, azdevops-automation 0.11.35 and the VS Code extension 0.11.57 and later*|
|`"bcVersionDirectory"`|string|optional|Specify the subfolder for locating the Business Central management libraries. The default value is `"*"`. Use e.g. "200" if your  Business Central insallation is located in "C:\Program Files (x86)\Microsoft Dynamics 365 Business Central\200". |
|`"importTestApps"`|boolean|optional|Set to true to import the System Application Test App as well as the [AL Test Runner](https://marketplace.visualstudio.com/items?itemName=jamespearson.al-test-runner) Service App|

### Additional Deployment Feeds

The additional deployment feeds are used in Product Development to deploy the same artifact to additional artifact feeds than the primary output feed during builds.

|Element|Type||Value|
|-|-|-|-|
|`"project"`     |string |optional, mandatory|The project id of the artifact feed (**mandatory** for project scoped feeds).|
|`"feed"`        |string |**mandatory**|The name of the used Artifact Feed during build.|
|`"scope"`       |string |optional     |The scope of the artifact feed. Values are `organization` or **`project`** (default).|
|`"packageName"` |string |optional     |The name of the artifact for the feed. Otherwise, the default artifact is generated from App-Name (app.json) and non alpha numeric characters are replaced by `_`.|

**Example:**

```json
{
    // ...
    // The additional deployment feeds are used in Product Development to deploy the same artifact to additional artifact feeds than the primary output feed during builds.
    "additionalDeploymentFeeds":  [
        {
            "organization": "ACME",
            "scope":        "organization",
            "feed":         "AllProjects",
            "packageName":  "my-super-app-package"
        }
    ],    
    // ...
}
```

### License File

- For **< BC23**: If you don't use any 3rd party dependencies you can use the default Cronus license by specifying this in your cosmo.json:

```json
"licenseFile": ""
```

- If you use third 3rd party dependencies and running BC version **17.12+**, **18.7+**, **19.1+** or up until **BC22** you can use the BC23 Cronus license that contains all license ranges by specifying this in your cosmo.json:

```json
"licenseFile": "https://ccppi.blob.core.windows.net/lic/Cronus.bclicense?sp=r&st=2023-06-08T05:34:31Z&se=2033-08-06T13:34:31Z&spr=https&sv=2022-11-02&sr=b&sig=5Noq50jApcWD4XQOG09v%2BChscfio%2B813Kfim79v88RY%3D" 
```

- Starting with **BC23** you can always use the default Cronus license since it includes all license ranges by specifying this in your cosmo.json:
  
```json
"licenseFile": ""
```

- *COSMO-only*: If the default Cronus license doesn't work for you, you can use a country specific development license. Unfortunatly we can only provide updated licenses for the latest BC versions, but to avoid updating the license in your cosmo.json repeatedly, you can now use the new "latest" license secrets. Those secrets are named after the following format: `dbclic-bc-<language>` *(.bclicense)* or `devlic-bc-<language>` *(.flf)*. e.g.:
  - **.bclicense** *(BC version **17.12**, **18.7**, **19.1** and later)*:
    - dbclic-bc-at
    - dbclic-bc-de
    - dbclic-bc-de-ch
    - dbclic-bc-es
    - dbclic-bc-fr
    - dbclic-bc-hu
    - dbclic-bc-ro-w1
    - dbclic-bc-se
  - **.flf** *(BC Version **17.11**, **18.6**, **19.0** and earlier)*
    - devlic-bc-at
    - devlic-bc-de
    - devlic-bc-es
    - devlic-bc-fr
    - devlic-bc-hu
    - devlic-bc-se

## Docker-Specific Parameters

|Element|Type||Value|
|-|-|-|-|
|`"dockerSwarmUrl"`       |string |**mandatory**|The reference to the used Docker-Swarm URL. The default `"$(dockerSwarmUrl)"` references a variable from `CI Build Agent` variable group of the project|
|`"dockerParamsForBuild"` |string |**optional** |The optional docker params for Build. The default is <br />`"--env folders=c:\\run=https://ppi-devops.germanywestcentral.cloudapp.azure.com/automation/0.11/startupfile/package/build --env alops-docker-username=$(alops-docker-username) --env alops-docker-password=$(alops-docker-password)"`.|
|`"dockerImage"`          |string |**optional** |A specific docker image which will overrule the `bcArtifacts`. This parameter is ***deprecated*** and not used anymore.|
|`"dockerMemoryGb"`       |integer|**optional** |The used memory in GB for the container. This parameter is ***deprecated*** and not used anymore|
|`"isolation"`            |string |**optional** |The used isolation for the container. Values are: **`process`** (default) or `hyperv`. This parameter is ***deprecated*** and not used anymore|
|`"multitenant"`          |string |**optional** |Setup the container as multi-tenant container or not. Values are: `Y` or `N`. Note: onprem containers are single-tenant by default, sandbox containers are multi-tenant by default.|
|`"appImportScope"`       |string |**optional** |The import scope for all Apps. Values are: **`Global`** (default) or `Tenant`. This can be overruled by adding the `"appImportScope"` to a specific App-Artifact. |
|`"appImportSyncMode"`    |string |**optional** |The sync mode for all App Imports. Values are: **`Add`** (default), `Clean`, `Development` or `ForceSync`. This can be overruled by adding the `"appImportSyncMode"` to a specific App-Artifact. |
|`"locale"`               |string |**optional** |Setup the locale which is used in the container. If you want to understand the consequences, check what happens in the BC container if you set this [here](https://github.com/microsoft/nav-docker/blob/573359a13e7ac57f5c42b1aeca882a39ee55932b/generic/Run/SetupVariables.ps1#L215-L222)|
|`"enableSymbolLoading"`  |boolean |**optional** |Enable Symbol loading inside Container, the default value (if nothing is specified) is true|
|`"enablePremium"`        |boolean |**optional** |Enable premium SKU (User Experience) for the default admin user, the default value (if nothing is specified) is false. **This is only valid for sandbox containers**. This requires docker-automation backend version v0.11.15|
|`"enablePerformanceCounter"` |boolean |**optional** |Enable performance counters for better monitoring, the default value (if nothing is specified) is true. This requires docker-automation backend version v0.11.18 and docker-automation backend version v0.11.26 |
|`"testImportAction"`     |string|**optional**|The import action for the C/Side Testtoolikit. The default Value is 'Overwrite' *This parameter is only for BC14 and earlier Versions* |

### Custom BC Service tier or Web server settings

You can optionally set custom BC service tier or Web server settings within the cosmo.json in `customNavSettings` or `customWebSettings`. Those get applied to the dev or build container. The blocks take the following parameters:

|Element|Type||Value|
|-|-|-|-|
|`"settings"` |string |**mandatory**|Comma-separated string of `key=value` pairs, e.g. `EnableTaskScheduler=true` (case-sensitive)|
|`"ignoreIn"`|string[]|**optional**|Specify in which container setup your settings should be ignored. The value is an array of: `dev` and/or `build`. *(see also [cosmo.json](#-cosmo.json-))*|

## Artifact Target

The `"target"` specify the target folder and finally what should hapen with the artifact.

|Target(s)|Destination|Import|
|-|-|-|
|`bak`|---|The **first** *(not ignored)* `bak` Artifact is used as database backup file during container creation.|
|`saasbak`|---|Backup file from an online SaaS environment, [converted from bacpac to bak](../vsc-extension/convert-bacpac-to-bak.md), **cannot** be combined with `bak` |
|`dll` or `add-ins`|`<serviceTierFolder>/Add-Ins/<targetFolder>`|The Artifact will be imported as an App |
|`font` or `fonts`|`c:/fonts`|The Artifact will be imported as an App |
|`fob`, `app`, `rapidStart`, ...|`C:\run\my\apps`|The Artifact content will be imported as fob, app or rapid start package depending on the file extension. |

The order of import is:

1. DLL(s) and Add-Ins
1. Font(s)
1. FOB(s)
1. App(s)
1. Rapid Start Package(s)

## Artifact

|Element|Type||Value|
|-|-|-|-|
|***common***|
|`"target"`|string|**mandatory**|Specify the [Artifact Target](#Artifact-Target) folder in the container file system and import action.|
|`"targetFolder"`|string|optional|This folder is used for `"target": "dll"` as optional subfolder: `<serviceTierFolder>/Add-Ins/<targetFolder>`|
|`"appImportScope"`|string|optional|Specify the import scope for apps. The value can be **`Global` (default)** or `Tenant`.|
|`"ignoreIn"`|string[]|optional|Specify in which container setup this artifact should be ignored. The value is an array of: `dev` and/or `build`. *(see also [cosmo.json](#-cosmo.json-))*|
|***file artifact***|
|`"name"`|string|optional|The name of the artifact. *This is for informational purpose only.*|
|`"version"`|string|optional|The version of the artifact. *This is for informational purpose only.*|
|`"url"`|string|**mandatory**|The path or url to download the artifact.|
|***feed artifact***|
|`"organization"`|string|**mandatory**|The organization name of the feed.|
|`"project"`|string|optional, mandatory|The project id of the artifact feed (**mandatory** for project scoped feeds).|
|`"feed"`|string|**mandatory**|The name of the artifact feed.|
|`"name"`|string|**mandatory**|The name of the artifact.|
|`"scope"`|string|optional|The scope of the feed can be `organization` and **`project` (default)**.|
|`"version"`|string|optional|The version of the artifact. (Latest - when not specified)|
|`"view"`|string|optional|The view (promotion-level) of the artifact determines which version is used.|
|`"type"`|string[]|optional|Specify the type of the artifact feed. COSMO uses **`upack` (default)** (for now only `upack` is supported).|

## Compiler

|Element|Type||Value|
|-|-|-|-|
|`"compilerVsixVersion"`|string|optional|Defines the version of the AL language VSC Extension whose AL compiler is to be used (`container` *(default)*, `latest`, `prerelease`, `<a>[.<b>][.<c>][.<d>]`)|
|`"codeCops"`|string[]|optional|Defines the array of the AL Analyzer(s) used for compiling (e.g. `[ "CodeCop", "UICop", "LinterCop", "<url>", "<path>" ]`)|
|`"rulesetFile"`|string|optional|Overrule the rules from the code cops. Path relative to AlSourcePath or an external url.|
|`"appManifestFile"`|string|optional|Sets the path to [manifest file (app.json)](https://docs.microsoft.com/en-us/dynamics365/business-central/dev-itpro/developer/devenv-json-files#Appjson) of the app. Path is relative [Build.SourcesDirectory](https://docs.microsoft.com/en-us/azure/devops/pipelines/build/variables?view=azure-devops&tabs=yaml#build-variables-devops-services)|
|`"testAppManifestFile"`|string|optional|Sets the path to manifest file (app.json) of the test app. Path is relative [Build.SourcesDirectory](https://docs.microsoft.com/en-us/azure/devops/pipelines/build/variables?view=azure-devops&tabs=yaml#build-variables-devops-services)|
|`"setBuildIdInManifestOn"`|string|optional|If this option is set the version is taken from the manifest file (app.json) and the BuildId is set on the position defined with this option. Possible values are: "None", "Build", "Revision"|
|`"createRuntimePackage"`|boolean |optional|If this option is set additionally a runtime package is created and published to the pipeline build.|
|`"enableCompilerOutput"`|boolean |optional|Enable or disable the additional logging output from the Compiler. Per default the output is enabled.|
|`"useLegacyCompiler"`|boolean |optional|Switch back to old .net framework compiler. Per default the .net core compiler version is used.|
|`"createTranslations"`|boolean|optional|Enable or disable the generation of translation files (.xlf) based on .g.xlf using [xliff-sync](https://www.powershellgallery.com/packages/XliffSync/)|
|`"translationLanguages"`|string[]|optional|Defines the array of language tags for which the translation files are to be generated (e.g. `[ "de-DE", "de-AT" ]`)|
|`"testTranslations"`|boolean|optional|Enable or disable tests of the generated translation files (.xlf) for missing translations and additional rules using [xliff-sync](https://www.powershellgallery.com/packages/XliffSync/)|
|`"testTranslationRules"`|string[]|optional|Defines the array of additional rules for which the generated translation files should be tested (`All`, `ConsecutiveSpacesConsistent`, `ConsecutiveSpacesExist`, `OptionMemberCount`, `OptionLeadingSpaces`, `Placeholders`, `PlaceholdersDevNote`)|

---

[additional-deployment-feeds]: setup-cosmo-json.md#additional-deployment-feeds
[setup-custom-scripts]:        setup-custom-scripts.md
[aad-setup]: ../admin/index.md#configuring-your-backend-for-aad-authentication

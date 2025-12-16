---
    title: Setup cosmo.json/alpaca.json Config
    description: Setup cosmo.json/alpaca.json Config
---

# Setup `cosmo.json`/`alpaca.json` Config

# [**GitHub (AL-Go)**](#tab/github)

The `alpaca.json` is usually located in `.alpaca/alpaca.json` in your repository and defines the configuration for all **development and build containers**. **Development containers** are [created via VS Code](../vsc-extension/create-container.md) while **build containers** are automatically created by the CI/CD workflows to publish compiled apps and run automated tests on them.

The basic `alpaca.json` looks like the following:

```json
{
    "containerConfigurations": [
        {
            "name": "default",
            "artifacts": []
        },
        {
            "name": "current",
            "inheritFromWorkflow": "Test Current"
        },
        {
            "name": "NextMajor",
            "inheritFromWorkflow": "Test Next Major"
        },
        {
            "name": "NextMinor",
            "inheritFromWorkflow": "Test Next Minor"
        }
    ]
}
```

## Container Configurations

The `containerConfigurations` array defines different configurations for your containers.

By default you will have the following configurations:

- `default`: The default configuration for all dev and build containers. All other container will inherit from this configuration automatically if you don't set something different in `inheritFromConfig` (see below). This allows you to e.g. specify artifacts "globally" which are then used by all other configurations.
- `current`: The configuration for the current BC version. It's automatically used when running the `CI/CD` or `Test Current` workflow.
- `NextMajor`: The configuration for the next major BC version. It's automatically used when running the `Test Next Major` workflow.
- `NextMinor`: The configuration for the next minor BC version. It's automatically used when running the `Test Next Minor` workflow.

You can define additional configurations like e.g. one which imports RapidStart packages ore one with a backup. When [creating a new dev container](../vsc-extension/create-container.md) you can specify which configuration to use.

### Parameters

|Element|Type||Value|
|-|-|-|-|
|`name`               |string|**mandatory**|The name of the configuration. This is used to identify the configuration when creating a new dev container.|
|`inheritFromWorkflow`|string|optional     |The name of the workflow to inherit settings from (e.g. `Test Current` will inherit settings like artifact, country etc. from `.github/Test Current.settings.json`)|
|`inheritFromConfig`  |string|optional     |The name of the container configuration to inherit settings from. This allows you to create a hierarchy of configurations.|
|`storageAccount`     |string|optional     |The name of the storage account to use for the BC artifact. This can be `bcartifacts` (default) or `bcinsider`.|
|`type`               |string|optional     |The type of the BC artifact. This can be `sandbox` (default) or `onprem`.|
|`version`            |string|optional     |The version of the BC artifact (e.g. `25`, `25.1`, `25.1.12345`). This will default to the latest version.|
|`select`             |string|optional     |The [selector](https://github.com/microsoft/navcontainerhelper/blob/49da2c44a41e3671ed3d94c4d8e8362578eda520/Artifacts/Get-BCArtifactUrl.ps1#L12-L22) for the BC artifact. One of `latest`, `first`, `all`, `closest`, `secondToLastMajor`, `current`, `nextMinor`, `nextMajor`, `daily`, `weekly`.|
|`country`            |string|optional     |The country of the BC artifact (e.g. `w1`, `de`, `fr`, ..). This will default to `w1`|
|`artifacts`          |array |optional     |The artifacts to import during the startup of the container. See the [documentation](setup-artifacts.md).|

# [**Azure DevOps**](#tab/azdevops)

The `cosmo.json` is  located in `.devops/cosmo.json` in your repository and defines the configuration for all **development and build containers**. **Development containers** are [created via VS Code](../vsc-extension/create-container.md) while **build containers** are automatically created by the pipeline runs to publish compiled apps and run automated tests on them.

A container is created and used as:

* `build` ... Build Container in CI
* `dev`   ... Development / Demo Container

`"artifacts"` as well as `"devopsArtifacts"` can be specified global or in a specific `"bcArtifacts"` container configuration (see [below](#container-configurations-1)). Specific artifacts will be merged with global artifacts. Additionally the `"previousRelease"` can be specified in the global configuration. The `"previousRelease"` is a feed artifact and has the corresponding properties. The `"previousRelease"` option is **mandatory** if you enable the breaking change evaluation in the AppSourceCop code analyzer and therefore pulled for all builds.

A basic `cosmo.json` could look like the following:

```json
{
    // Common Parameters
    "artifactsFeed":  "MyProject",
    "devopsPool":     "$(devopsPool)",
    "licenseFile":    "$(dbclic-bc-de)",
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

## Container Configurations

The objects under `bcArtifacts` define different configurations for your containers.

By default you will have the following configurations:

- `current`: The default configuration for all dev and build containers. It's automatically used when running a build pipeline.
- `nextMajor`: The configuration for the next major BC version. It's automatically used when running the `Next Major` pipeline.
- `nextMinor`: The configuration for the next minor BC version. It's automatically used when running the `Next Minor` pipeline.

You can define additional configurations like e.g. one which imports RapidStart packages ore one with a backup. When [creating a new dev container](../vsc-extension/create-container.md) you can specify which configuration to use.

### Parameters

|Element|Type||Value|
|-|-|-|-|
|object name          |string|**mandatory**|The name of the configuration. This is used to identify the configuration when creating a new dev container (e.g. "current").|
|`storageAccount`     |string|optional     |The name of the storage account to use for the BC artifact. This can be `bcartifacts` (default) or `bcinsider`.|
|`type`               |string|optional     |The type of the BC artifact. This can be `sandbox` (default) or `onprem`.|
|`version`            |string|optional     |The version of the BC artifact (e.g. `25`, `25.1`, `25.1.12345`). This will default to the latest version.|
|`select`             |string|optional     |The [selector](https://github.com/microsoft/navcontainerhelper/blob/49da2c44a41e3671ed3d94c4d8e8362578eda520/Artifacts/Get-BCArtifactUrl.ps1#L12-L22) for the BC artifact. One of `latest`, `first`, `all`, `closest`, `secondToLastMajor`, `current`, `nextMinor`, `nextMajor`, `daily`, `weekly`.|
|`country`            |string|optional     |The country of the BC artifact (e.g. `w1`, `de`, `fr`, ..). This will default to `w1`|
|`artifacts`          |array |optional     |The artifacts to import during the startup of the container. See the [documentation](setup-artifacts.md).|

## Common Parameters

|Element|Type||Value|
|-|-|-|-|
|`"artifactsFeed"`                |string |**mandatory**|The name of the used Artifact Feed during build.|
|`"artifactsScope"`               |string |optional     |The scope of the artifact feed. Values are `organization` or `project` (default).|
|`"artifactsPackageName"`         |string |optional     |The name of the output artifact. Otherwise, the default artifact is generated from App-Name (app.json) and non alpha numeric characters are replaced by `_`.|
|`"additionalDeploymentFeeds"`    |array  |optional     |An optional array of additional deployment feeds. [more](#additional-deployment-feeds)|
|`"devopsPool"`                   |string |**mandatory**|The reference to the used DevOps build agent pool. The default `"$(devopsPool)"` references a variable from `CI Build Agent` variable group of the project.|
|`"licenseFile"`                  |string |optional     |The used license file for the container. [more](setup-cosmo-json.md#license-file)|
|`"useCustomScriptsFromRepo"`     |boolean|optional     |Set `true` to use custom scripts during container start. More information can be found here: [Set up custom scripts](setup-custom-scripts.md)|
|`"downloadSourcePreviousRelease"`|string |optional     |Specify if the artifact for the breaking change test should be taken from the target branch of the pull request or from a feed. Values are: `Feed`, `PR-Target` (default). Use the above described option `"previousRelease"` to specify the feed and package name.|
|`"auth"`                         |string |optional     |The used authentication method to access the container. This can be either `NavUserPassword` (default) or `AAD`.|
|`"importTestApps"`               |boolean|optional     |Set to true to import the System Application Test App as well as the [AL Test Runner](https://marketplace.visualstudio.com/items?itemName=jamespearson.al-test-runner) Service App|
|`"customNuGetFeeds"`             |array  |optional     |An optional array of custom NuGet feeds. [more](#custom-nuget-feeds)|

### Additional Deployment Feeds

The additional deployment feeds are used in Product Development to deploy the same artifact to additional artifact feeds than the primary output feed during builds.

|Element|Type||Value|
|-|-|-|-|
|`"project"`    |string|optional, mandatory|The project id of the artifact feed (**mandatory** for project scoped feeds).|
|`"feed"`       |string|**mandatory**      |The name of the used Artifact Feed during build.|
|`"scope"`      |string|optional           |The scope of the artifact feed. Values are `organization` or `project` (default).|
|`"packageName"`|string|optional           |The name of the artifact for the feed. Otherwise, the default artifact is generated from App-Name (app.json) and non alpha numeric characters are replaced by `_`.|

**Example:**

```json
{
    // The additional deployment feeds are used in Product Development to deploy the same artifact to additional artifact feeds than the primary output feed during builds.
    "additionalDeploymentFeeds":  [
        {
            "organization": "ACME",
            "scope":        "organization",
            "feed":         "AllProjects",
            "packageName":  "my-super-app-package"
        }
    ]
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

- *COSMO-only*: If the default Cronus license doesn't work for you, you can use a country specific development license variable. Unfortunatly we can only provide updated licenses for the latest BC versions, but to avoid updating the license in your cosmo.json repeatedly, you can now use the new "latest" license secrets. Those secrets are named after the following format: `dbclic-bc-<language>` *(.bclicense)* or `devlic-bc-<language>` *(.flf)*. e.g.:
  - **.bclicense** *(BC version **17.12**, **18.7**, **19.1** and later)*:
    - $(dbclic-bc-at)
    - $(dbclic-bc-de)
    - $(dbclic-bc-de-ch)
    - $(dbclic-bc-es)
    - $(dbclic-bc-fr)
    - $(dbclic-bc-hu)
    - $(dbclic-bc-ro-w1)
    - $(dbclic-bc-se)
  - **.flf** *(BC Version **17.11**, **18.6**, **19.0** and earlier)*
    - $(devlic-bc-at)
    - $(devlic-bc-de)
    - $(devlic-bc-es)
    - $(devlic-bc-fr)
    - $(devlic-bc-hu)
    - $(devlic-bc-se)

### Custom NuGet Feeds

You can specify custom NuGet feeds to be used by the container when downloading NuGet artifacts (e.g. 3rd party dependencies).

|Element|Type||Value|
|-|-|-|-|
|`"feedUrl"`|string|**mandatory**|The URL of the NuGet feed.|
|`"pat"`    |string|optional     |The Personal Access Token (PAT) to access the NuGet feed.|

In the Visual Studio Code extension you can configure custom NuGet feeds in the setting `cc-azdevops.customNuGetFeeds`. Those feeds will be automatically passed to the container when creating a new container (together with the ones from the repository configuration). Additionally you can explore your configured custom feeds and their packages in the "Product Packages" view under the group "Custom NuGet Feeds".

## Docker-Specific Parameters

|Element|Type||Value|
|-|-|-|-|
|`"dockerSwarmUrl"`                     |string |**mandatory**|The reference to the used Backend URL. The default `"$(dockerSwarmUrl)"` references a variable from `CI Build Agent` variable group of the project. *Will be removed in the future.*|
|`"dockerParamsForBuild"`               |string |optional     |The optional docker params for Build. The default is <br />`"--env folders=c:\\run=https://cosmo-alpaca-enterprise.westeurope.cloudapp.azure.com/automation/0.11/startupfile/package/build --env alops-docker-username=$(alops-docker-username) --env alops-docker-password=$(alops-docker-password)"`. *Will be removed in the future.*|
|`"multitenant"`                        |string |optional     |Setup the container as multi-tenant container or not. Values are: `Y` or `N`. Note: onprem containers are single-tenant by default, sandbox containers are multi-tenant by default. *Will be removed in the future.*|
|`"appImportScope"`                     |string |optional     |The import scope for all Apps. Values are: `Global` (default) or `Tenant`. This can be overruled by adding the `"appImportScope"` to a specific App-Artifact. *(see [setup artifacts](setup-artifacts.md))*|
|`"appImportSyncMode"`                  |string |optional     |The sync mode for all App Imports. Values are: `Add` (default), `Clean`, `Development` or `ForceSync`. This can be overruled by adding the `"appImportSyncMode"` to a specific App-Artifact. *(see [setup artifacts](setup-artifacts.md))*|
|`"enableSymbolLoading"`                |boolean|optional     |Enable Symbol loading inside the Container, the default value (if nothing is specified) is `true`. *Will be removed in the future.*|
|`"enablePremium"`                      |boolean|optional     |Enable premium SKU (User Experience) for the default admin user, the default value (if nothing is specified) is `false`. **This is only valid for sandbox containers**.|
|`"enablePerformanceCounter"`           |boolean|optional     |Enable performance counters for better monitoring, the default value (if nothing is specified) is `false`.|
|`"containerAsyncMode"`                 |boolean|optional     |Enable/disable the Async mode for containers, the default value (if nothing is specified) is `false`.|
|`"containerPersistentServerFileCache"` |boolean|optional     |Enable/disable the Server File Cache persistence for containers, the default value (if nothing is specified) is `false`.|

## Custom BC Service tier or Web server settings

You can optionally set custom BC service tier or Web server settings within the `cosmo.json` in `customNavSettings` or `customWebSettings`. Those get applied to the dev or build container. The blocks take the following parameters:

|Element|Type||Value|
|-|-|-|-|
|`"settings"`|string  |**mandatory**|Comma-separated string of `key=value` pairs, e.g. `EnableTaskScheduler=true` (case-sensitive)|
|`"ignoreIn"`|string[]|optional     |Specify in which container setup your settings should be ignored. The value is an array of: `dev` and/or `build`. *(see [cosmo.json](setup-cosmo-json.md))*|

## Compiler

|Element|Type||Value|
|-|-|-|-|
|`"compilerVsixVersion"`    |string  |optional|Defines the version of the AL language VSC Extension whose AL compiler is to be used (`container` (default), `latest`, `prerelease`, `<a>[.<b>][.<c>][.<d>]`)|
|`"codeCops"`               |string[]|optional|Defines the array of the AL Analyzer(s) used for compiling (e.g. `[ "CodeCop", "UICop", "LinterCop", "<url>", "<path>" ]`) <br/>For [LinterCop](https://github.com/StefanMaron/BusinessCentral.LinterCop) it is recommended to set `"compilerVsixVersion"` to `"latest"` for the BC artifact `current` |
|`"rulesetFile"`            |string  |optional|Overrule the rules from the code cops. Path relative to AlSourcePath or an external url.|
|`"appManifestFile"`        |string  |optional|Sets the path to [manifest file (app.json)](https://docs.microsoft.com/en-us/dynamics365/business-central/dev-itpro/developer/devenv-json-files#Appjson) of the app. Path is relative [Build.SourcesDirectory](https://docs.microsoft.com/en-us/azure/devops/pipelines/build/variables?view=azure-devops&tabs=yaml#build-variables-devops-services)|
|`"testAppManifestFile"`    |string  |optional|Sets the path to manifest file (app.json) of the test app. Path is relative [Build.SourcesDirectory](https://docs.microsoft.com/en-us/azure/devops/pipelines/build/variables?view=azure-devops&tabs=yaml#build-variables-devops-services)|
|`"setBuildIdInManifestOn"` |string  |optional|If this option is set the version is taken from the manifest file (app.json) and the BuildId is set on the position defined with this option. Possible values are: "None", "Build", "Revision"|
|`"createRuntimePackage"`   |boolean |optional|If this option is set additionally a runtime package is created and published to the pipeline build.|
|`"createTranslations"`     |boolean |optional|Enable or disable the generation of translation files (.xlf) based on .g.xlf using [xliff-sync](https://www.powershellgallery.com/packages/XliffSync/)|
|`"translationLanguages"`   |string[]|optional|Defines the array of language tags for which the translation files are to be generated (e.g. `[ "de-DE", "de-AT" ]`)|
|`"testTranslations"`       |boolean |optional|Enable or disable tests of the generated translation files (.xlf) for missing translations and additional rules using [xliff-sync](https://www.powershellgallery.com/packages/XliffSync/)|
|`"testTranslationRules"`   |string[]|optional|Defines the array of additional rules for which the generated translation files should be tested (`All`, `ConsecutiveSpacesConsistent`, `ConsecutiveSpacesExist`, `OptionMemberCount`, `OptionLeadingSpaces`, `Placeholders`, `PlaceholdersDevNote`)|

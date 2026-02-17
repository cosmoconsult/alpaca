---
    title: Setup alpaca.json Config
    description: Setup alpaca.json Config (DEPRECATED)
---

# Setup `alpaca.json` Config

> [!CAUTION]
> **DEPRECATED**
>
> Use **[AL-Go settings](../github/setup-al-go-settings.md)** instead.
>
> Migrate and remove existing *alpaca.json* files.
> 
> Mapping of container configurations to AL-Go settings files:
>> - default   -> .github/AL-Go-Settings.json
>> - current   -> .github/AL-Go-Settings.json
>> - NextMinor -> .github/Test Next Minor.settings.json
>> - NextMajor -> .github/Test Next Major.settings.json
>
> Mapping of container configuration settings to AL-Go settings
>> - name                                  -> *N/A*
>> - inheritFromWorkflow                   -> *N/A*
>> - country                               -> country
>> - storageAccount, type, version, select -> artifact
>> - artifacts                             -> alpaca.artifacts

The `alpaca.json` is usually located in `.alpaca/alpaca.json` in your repository and defines the configuration for all **development and build containers**. **Development containers** are [created via VS Code](../vsc-extension/create-container-github.md) while **build containers** are automatically created by the CI/CD workflows to publish compiled apps and run automated tests on them.

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

You can define additional configurations like e.g. one which imports RapidStart packages ore one with a backup. When [creating a new dev container](../vsc-extension/create-container-github.md) you can specify which configuration to use.

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
|`artifacts`          |array |optional     |The artifacts to import during the startup of the container. See the [documentation](setup-artifacts-github.md).|

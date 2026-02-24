---
    title: Setup Artifacts to Import on Container Startup
    description: Setup Artifacts to Import on Container Startup
---

# Setup Artifacts to Import on Startup

Artifacts are configured in the [AL-Go settings](setup-al-go-settings.md). The defined artifacts are automatically installed in the containers during the container startup.

Two types of artifacts are supported:

1. [Artifacts from a NuGet feed](#nuget-feed)
1. [Artifacts from a URL](#url)

## Parameters

Optional parameters available for all artifacts:

|Element|Type||Value|
|-|-|-|-|
|`target`           |string  |Specify the [Artifact Target](#artifact-target) folder in the container file system and import action.|
|`targetFolder`     |string  |This folder is used for `"target": "dll"` as optional subfolder: `<serviceTierFolder>/Add-Ins/<targetFolder>`|
|`appImportScope`   |string  |Specify the import scope for apps. The value can be `Global` (default) or `Tenant`.|
|`appImportSyncMode`|string  |Specify the import sync mode for apps. The value can be `Add` (default), `Clean`, `Development` or `ForceSync`.|
|`ignoreIn`         |string[]|Specify in which container setup this artifact should be ignored. The value is an array of: `dev` and/or `build`.|

# Artifact Types

## NuGet feed

Define NuGet packages of BC Apps as artifacts.

The dependencies of a NuGet package are included automatically but can be overwritten by also defining them as artifacts.

By default all Microsoft NuGet feeds are available for AL-Go, but only the feed for the Microsoft Apps is used for containers.
Trusted NuGet feeds can either be configured in the [AL-Go settings](setup-al-go-settings.md) or per-user by specifying custom nuget feeds in the Alpaca settings in VS Code.

1. Find out the name and version of the NuGet package you want to use
1. Add the Artifact to `alpaca.artifacts` in your [AL-Go settings](setup-al-go-settings.md):

```json
{
    "alpaca": {
        "artifacts": [
            {
                "type": "nuget",  // optional, default when not specified
                "name": "CosmoConsult.COSMORental.b945e3cd-da15-4575-990e-37ff46875f27",
                "version": "5.2.270944.0"
            }
        ]
    }
}
```

### Parameters

|Element|Type||Value|
|-|-|-|-|
|`type`             |string  |optional     |Type of the artifact, use `nuget`. Default when not specified.|
|`name`             |string  |**mandatory**|The name of the artifact.|
|`version`          |string  |optional     |The version of the artifact. (latest - when not specified)|

## URL

Define URLs of APP or ZIP files as artifacts.

ZIP files are automatically extracted after they are downloaded.

1. Find out which url you want to use.
1. Add the Artifact to `alpaca.artifacts` in your [AL-Go settings](setup-al-go-settings.md):
 
```json
{
    "alpaca": {
        "artifacts": [
            {
                "type": "url",
                "name": "myapp",
                "url": "https://my.blob.core.windows.net/test/myapp/myapp_1.2.3.4.app?sv=2019-02-02&..."
            }
        ]
    }
}
```

### Parameters

|Element|Type||Value|
|-|-|-|-|
|`type`             |string  |**mandatory**|The type of the artifact. Must be `url` for fileshare/URL artifacts.|
|`name`             |string  |**mandatory**|The name of the artifact. Informational only.|
|`version`          |string  |optional     |The version of the artifact. Informational only.|
|`url`              |string  |**mandatory**|The url to download the artifact.|

### Use Alpaca fileshare

Upload files into the Alpaca fileshare, share them and define their download urls as url artifacts.

1. Open the Alpaca fileshare. Please contact the Alpaca support if you don't have access yet.
1. Copy your artifact to the fileshare. One option to organize your folder structure could look like this, but if you have some other structure already in place in your organization, it also might be a good idea to use that:
   * product-artifacts used by multiple projects: `/common/<product>`
   * artifacts related to a customer project: `/<customer-name>/<project-name>`
1. Create a share link for a file or folder *(without duration and without password)*
1. Get the download url from the share link 
    1. Open the share link *(https://<cluster>.westeurope.cloudapp.azure.com/filebrowser/share/<id>)*
    1. Copy the download link *(https://<cluster>.westeurope.cloudapp.azure.com/filebrowser/api/public/dl/<id>)*
1. Add the Artifact to `alpaca.artifacts` in your AL-Go settings:

```json
{
    "alpaca": {
        "artifacts": [
            {
                "type": "url",
                "name": "myapp",
                "url": "https://<cluster>.westeurope.cloudapp.azure.com/filebrowser/api/public/dl/<id>"
            }
        ]
    }
}
```

# Artifact Target

[!INCLUDE [Artifact Target](../includes/artifact-target.md)]

```json
{
    "alpaca": {
        "artifacts": [
            {
                "type": "url",
                "name": "Default-Fonts",
                "url": "https://my.blob.core.windows.net/test/fonts/default.zip?sv=2019-02-02&...",
                "target": "fonts",
                "ignoreIn": ["build"]
            },
            {
                "type": "url",
                "name": "Additional Fonts for Barcode Printing",
                "url": "https://my.blob.core.windows.net/test/fonts/barcode.zip?sv=2019-02-02&...",
                "target": "fonts",
                "ignoreIn": ["build"]
            }
        ]
    }
}
```
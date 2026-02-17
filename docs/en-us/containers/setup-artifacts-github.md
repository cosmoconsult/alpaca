---
    title: Setup Artifacts to Import on Container Startup
    description: Setup Artifacts to Import on Container Startup
---

# Setup Artifacts to Import on Startup

Artifacts are configured in the [AL-Go settings](../github/setup-al-go-settings.md). The defined artifacts are automatically installed in the containers during the container startup.

Four types of artifacts are supported:

1. Artifacts from a URL or the Alpaca fileshare
1. Artifacts from a NuGet feed
1. Artifacts from a product feed

# URL or Alpaca fileshare

1. Open the Alpaca fileshare. Please contact the Alpaca support if you don't have access yet.
1. Copy your artifact to the fileshare. One option to organize your folder structure could look like this, but if you have some other structure already in place in your organization, it also might be a good idea to use that:
   * product-artifacts used by multiple projects: `/common/<product>`
   * artifacts related to a customer project: `/<customer-name>/<project-name>`
1. Add the artifact to `artifacts` in your AL-Go settings:

```json
{
    "artifacts": [
        {
            "type": "url",
            "name": "myapp",
            "version": "1.2.3.4",
            // fileshare paths can reference a file or ZIP file
            "url": "C:\\azurefileshare\\my.app",
            "target": "app" // can also be DLL, RapidStart, Fonts, etc.
        },
        {
            "type": "url",
            "name": "myapp",
            // URLs MUST reference a ZIP file
            "url": "https://my.blob.core.windows.net/test/myapp/myapp_1.2.3.4.app.zip?sv=2019-02-02&...",
            "target": "app"
        }
    ]
}
```

> [!NOTE]
> You need to escape the folder separator `\` by using `\\` because the value must be a JSON-String.
> The fileshare path always is `c:\azurefileshare` inside of a container. That means that if you place a file `fantastic-app.app` in the root of your fileshare, you need to reference it as `c:\\azurefileshare\\fantastic-app.app`.
> Fileshare artifacts can be a "normal" files or an archive (`.zip` extension) which will be extracted during the container startup.

## Parameters

|Element|Type||Value|
|-|-|-|-|
|`type`             |string  |**mandatory**|The type of the artifact. Must be `url` for fileshare/URL artifacts.|
|`name`             |string  |**mandatory**|The name of the artifact. Informational only.|
|`version`          |string  |optional     |The version of the artifact. Informational only.|
|`url`              |string  |**mandatory**|The path or url to download the artifact.|
|`target`           |string  |optional     |Specify the [Artifact Target](#artifact-target) folder in the container file system and import action.|
|`targetFolder`     |string  |optional     |This folder is used for `"target": "dll"` as optional subfolder: `<serviceTierFolder>/Add-Ins/<targetFolder>`|
|`appImportScope`   |string  |optional     |Specify the import scope for apps. The value can be `Global` (default) or `Tenant`.|
|`appImportSyncMode`|string  |optional     |Specify the import sync mode for apps. The value can be `Add` (default), `Clean`, `Development` or `ForceSync`.|
|`ignoreIn`         |string[]|optional     |Specify in which container setup this artifact should be ignored. The value is an array of: `dev` and/or `build`.|
|`dependsOn`        |string  |optional     |Specify the dependency of an artifact. The value can be missing (default) or `App`.<br/><br/>Artifacts with a dependency will still be downloaded on container start but only installed by the build pipeline after the dependency *(e.g. `App`)* was installed.|

# NuGet feed

By default all Microsoft NuGet feeds are available. Custom nuget feeds can either be configured globally, per-project or per-user by specifying custom nuget feeds in the Alpaca settings in VS Code.

```json
{
    "artifacts": [
        {
            "type": "nuget",  // optional, default when not specified
            "name": "CosmoConsult.COSMORental.b945e3cd-da15-4575-990e-37ff46875f27",
            "version": "5.2.270944.0"
        }
    ]
}
```

## Parameters

|Element|Type||Value|
|-|-|-|-|
|`type`   |string|optional      |Type of the artifact, use `nuget`. Default when not specified.|
|`name`   |string|**mandatory** |The name of the artifact.|
|`version`|string|optional      |The version of the artifact. (latest - when not specified)|

# Product feed

The use case for the product feed is to enable users and pipelines/workflows to consume artifacts managed in a central feed. This is mainly used for feeds hosting intelectual property. As a bonus you can use the version overview in the VS Code Extension to browse your regularly used artifacts.

> [!IMPORTANT]
> Before using product feeds, you need to [configure the feed](../admin/index.md#ip-artifacts).

1. Find out which name the IP artifact has and which version you want to use
2. Add the Artifact to `artifacts` in your AL-Go settings:

```json
{
    "artifacts": [
        {
            "type": "ipartifact",
            "name": "alloy-management",
            "version": "2.2.*"
        },
        {
            "type": "ipartifact",
            "name": "commission",
            "version": "2.1.36626"
        }
    ]
}
```

### Parameters

|Element|Type||Value|
|-|-|-|-|
|`type`|string|**mandatory**|The type of the artifact. Must be `ipartifact` for product feed artifacts.|
|`name`|string|**mandatory**|The name of the artifact.|
|`version`|string|optional|The version of the artifact. (Latest - when not specified). The version can include wildcards ("*") at the end, e.g. `2.*` or `2.1.*`|
|`type`|string[]|optional|Specify the type of the artifact you want to use as an array. For now, you only get the full app with type "app", but in the future test apps, rapidstart packages or runtime packages might follow.|
|`ignoreIn`|string[]|optional|Specify in which container setup this artifact should be ignored. The value is an array of: `dev` and/or `build`.|
|`dependsOn`|string|optional|Specify the dependency of an artifact. The value can be **missing (default)** or `App`.<br/><br/>Artifacts with a dependecy will still be downloaded on container start but only installed by the build pipeline after the dependency *(e.g. `App`)* was installed.|

---

# Artifact Target

The `target` specifies the target folder and finally what should hapen with the artifact.

|Target(s)|Destination|Import|
|-|-|-|
|`bak`                          |---                                         |The **first** *(not ignored)* `bak` Artifact is used as database backup file during container creation.|
|`saasbak`                      |---                                         |Backup file from an online SaaS environment, [converted from bacpac to bak](../vsc-extension/convert-bacpac-to-bak.md), **cannot** be combined with `bak`.|
|`dll` or `add-ins`             |`<serviceTierFolder>/Add-Ins/<targetFolder>`|The Artifact will be imported as a DLL or Add-In.|
|`font` or `fonts`              |`c:/fonts`                                  |The Artifact will be imported as a Font.|
|`app`, `fob`, `rapidStart`, ...|`C:\run\my\apps`                            |The Artifact content will be imported as an App, Fob or RapidStart package depending on the file extension.|

The order of import is:

1. DLL(s) and Add-Ins
2. Font(s)
3. FOB(s)
4. App(s)
5. Rapid Start Package(s)

## Examples

### Add Fonts as Artifacts

Adding an additional font to a container **requires** you **to add also the default fonts as an additional artifact**. This is because there are not fonts installed in the container and your Business Central Reports might use your additional font as default font for your reports.

Here is an example how to add additional fonts as artifacts. Please note the `ignoreIn` setting as you probably won't need the fonts in a build pipeline and as they require a restart of the service tier, they make the pipeline slower and can cause issues with symbol loading in hybrid dev setups.

```json
{
    "artifacts": [
        {
            "type": "url",
            "name": "Default-Fonts",
            "url": "c:\\azurefileshare\\common\\default-fonts.zip",
            "target": "fonts",
            "ignoreIn": ["build"]
        },
        {
            "type": "url",
            "name": "Additional Fonts for Barcode Printing",
            "url": "c:\\azurefileshare\\myProject\\my-additional-fonts.zip",
            "target": "fonts",
            "ignoreIn": ["build"]
        }
    ]
}
```

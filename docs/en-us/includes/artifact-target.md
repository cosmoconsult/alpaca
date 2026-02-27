The `target` specifies what should happen with the artifact.

|Target(s)|Import|
|-|-|
|`app`             |The Artifact content will be imported as an App. This is the **default target**, so you can omit the target for apps.|
|`rapidStart`      |The Artifact content will be imported as a RapidStart package.|
|`bak`             |The **first** *(not ignored)* `bak` Artifact is used as database backup file during container creation.|
|`saasbak`         |Backup file from an online SaaS environment, [converted from bacpac to bak](../azure-devops/convert-bacpac-to-bak.md), **cannot** be combined with `bak`.|
|`dll` or `add-ins`|The Artifact will be imported as a DLL or Add-In.|
|`font` or `fonts` |The Artifact will be imported as a Font.|

The order of import is:

1. DLL(s) and Add-Ins
2. Font(s)
3. App(s)
4. Rapid Start Package(s)

## Examples

### Add Fonts as Artifacts

Adding an additional font to a container **requires** you **to add also the default fonts as an additional artifact**. This is because there are not fonts installed in the container and your Business Central Reports might use your additional font as default font for your reports.

Here is an example how to add additional fonts as artifacts. Please note the `ignoreIn` setting as you probably won't need the fonts in a build pipeline and as they require a restart of the service tier, they make the pipeline slower and can cause issues with symbol loading in hybrid dev setups.

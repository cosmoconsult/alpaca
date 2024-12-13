---
    title: Set up custom scripts
    description: Set up custom scripts
---

# Set up custom scripts

If you would like to execute custom scripts within your containers created for development, testing, build or demo purposes you can easily add them to your Git repository as follows:

1. Create a directory `.container-my` in the root of the Git repository of your application. In there you can create arbitary PowerShell scripts with the same filename [as the one in the Business Central image](https://github.com/microsoft/nav-docker/tree/master/generic/Run) to override them. You can override almost any script except from `navstart.ps1` (e.g. [`AdditionalSetup.ps1`](https://github.com/microsoft/nav-docker/blob/main/generic/Run/AdditionalSetup.ps1))
Your custom PowerShell scripts will be run during the start of the container instead of the default logic. To invoke the default script from within your overridden script you have to call `. (Join-Path $runPath $MyInvocation.MyCommand.Name)`.

1. Within your `cosmo.json` set the following parameter within the root node:

    ```json
    "useCustomScriptsFromRepo": true
    ```

To test changes to your custom scripts from a separate branch you can use [the option to create a container with configuration in a branch](../vsc-extension/create-branch-container.md) in the Visual Studio Code Extension.

## Example

Writing the message `Running custom script` to the console when the container is starting can be achieved by creating a file `.container-my/AdditionalSetup.ps1` with the following content.\
Note that the default script is called at the beginning of the custom script, so our message will be printed after the default logic of `AdditionalSetup` is executed.

```powershell
. (Join-Path $runPath $MyInvocation.MyCommand.Name)

Write-Host "Running custom script"
```

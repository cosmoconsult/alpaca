---
    title: Use Preprocessor Directives in a pipeline
    description: Use Preprocessor Directives in a pipeline
---

# Use preprocessorSymbols in the pipelines

If you e.g. have a multi-language app, you may have the same source code as a base but need different logic depending on the target localization. For that you can use [Preprocessor Directives](https://docs.microsoft.com/en-us/dynamics365/business-central/dev-itpro/developer/directives/devenv-directives-in-al) in AL.

You can use the [Pipeline Setup Hooks](pipeline-variables.md#pipeline-setup-hooks) to set the `preprocessorSymbols` in your `app.json` at build time to use them during the build.

One example is to add a new property to a [BC artifacts configuration](../containers/setup-cosmo-json.md) in the `cosmo.json`:

```json
{
    // ...
    "bcArtifacts": {
        // ...
        "currentDE": {
            "version": "",
            "type":    "sandbox",
            "country": "de",
            //...
            "TestAppPreProcessor" : "DE" 
        }
    }
}
```

And in the pipeline hook read that new property and set the `preprocessorSymbols` in the `app.json` of the test app accordingly:

```yaml
OnSetupBuildTasks:
    - powershell: |
        echo 'configure preprocessor on test app'
        $config = Get-Content "$(job.SourcesDirectory)\.devops\cosmo.json" | ConvertFrom-Json  
        $preprocessorContent = $config[0].bcArtifacts.${{ variables['BC-Artifacts'] }}.TestAppPreProcessor
        $TestApp = Get-Content "$(job.SourcesDirectory)\test\app.json" | ConvertFrom-Json
        if ($preprocessorContent -ne $null) {
            $list = New-Object System.Collections.ArrayList
            $list.Add($preprocessorContent)
            $TestApp | Add-Member -Type "NoteProperty" 'preprocessorSymbols' -Value ($list)
            $TestApp | ConvertTo-Json -Depth 100 | Out-File "$(job.SourcesDirectory)\test\app.json"
        }

        echo $TestApp
    displayName: On Setup Build
```

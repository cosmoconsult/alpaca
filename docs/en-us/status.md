---
    title: Status and Health of COSMO Alpaca
    description: Status and Health of COSMO Alpaca
---

# Status and Health of COSMO Alpaca

## Performance Issues BC24+

Starting with **BC24** Microsoft switched the managment console from Powershell 5 to Powershell 7.
Since some of the Scripts inside of Containers are still running on Powershell 5, we have some bridging in there. Theses bridging leads to a massive performance loss on Pipelines using BC24.

We are already on finding a solution with Microsoft because it not only affects COSMO Alpaca, but it affects every container based BC environment.

We will give you an update when we have a Solution here. In the meanwhile when you have problems with pipelines running in timeouts, please increase the timeout.
You can achieve this by setting the variable `Build.TimeoutInMinutes` in your library to a higher value (recommended: `"120"`).

## Publishing Apps hangs BC24+

Starting with **BC24** publishing Apps may hang forever.
Errors during the App compilation are not recognized and the `Publish-NavApp` command is never completed or terminated.

**Solution**: review your App’s dependencies carefully (almost every issue we’ve seen could be resolved by adding/updating missing/incompatible dependencies)
**Solution (technical)**: create a dev container and try publishing the Apps (in the correct order) manually using PowerShell 7 `pwsh`

Additional information: [GitHub Issue](https://github.com/microsoft/AL/issues/7750)

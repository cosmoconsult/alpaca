---
    title: Status & Health
    description: Status & Health
---

# Status & Health

## Container crashes

> [!CAUTION]
> Containers are crashing unexpectedly, causing pipelines to become stuck. 
> Additionally, not all artifacts are installed in development containers. 
> We are actively investigating the cause.

Update 28.05. 23:30 - We didn't find the root cause of the issue yet but currently we believe it's an underlying infrastructure issue within Azure. We continue to investigate together with Microsoft Support.


For some cases it helped to get rid of the Digital Consultant app if present. 

## Performance Issues BC24+

Starting with **BC24** Microsoft switched the managment console from Powershell 5 to Powershell 7.
Since some of the Scripts inside of Containers are still running on Powershell 5, we have some bridging in there. Theses bridging leads to a massive performance loss.

We are already working with Microsoft to find a solution because this issue affects not only COSMO Alpaca but every container-based BC environment.

In the meantime, if you encounter problems with pipelines running into timeouts, please increase the timeout. You can achieve this by setting the variable `Build.TimeoutInMinutes` in your library to a higher value (recommended: `"120"`).

> [!IMPORTANT]
> **Feedback from Microsoft**: Unfortunately, there is no solution for BC24 and BC25, but they have promised to fix it with **BC26**.

## Publishing and Syncing Apps hangs BC24+

Starting with **BC24** and due to the Powershell bridging (see [above](#performance-issues-bc24)) publishing Apps may hang forever.
Errors during the App compilation are not recognized and the `Publish-NavApp` or `Sync-NavApp` command is never completed or terminated.

**Solution**: review your App’s dependencies carefully (almost every issue we’ve seen could be resolved by adding/updating missing/incompatible dependencies)
**Solution (technical)**: create a dev container and try publishing the Apps (in the correct order) manually using PowerShell 7 `pwsh`

Additional information: [GitHub Issue](https://github.com/microsoft/AL/issues/7750)

> [!NOTE]
> **Update**: We were able to implement a workaround for this issue.

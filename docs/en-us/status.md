---
    title: Status & Health
    description: Status & Health
---

# Status & Health

## BC27 Webclient issue

With BC27 there's currently an issue that prevents to open the webclient. We reported the issue to Microsoft and hope for a timely solution: https://github.com/microsoft/navcontainerhelper/issues/3997

## Performance Issues BC24+

Starting with **BC24** Microsoft switched the managment console from Powershell 5 to Powershell 7.
Since some of the Scripts inside of Containers are still running on Powershell 5, we have some bridging in there. Theses bridging leads to a massive performance loss.

We are already working with Microsoft to find a solution because this issue affects not only COSMO Alpaca but every container-based BC environment.

In the meantime, if you encounter problems with pipelines running into timeouts, please increase the timeout. You can achieve this by setting the variable `Build.TimeoutInMinutes` in your library to a higher value (recommended: `"120"`).

> [!IMPORTANT]
> **Feedback from Microsoft**: Unfortunately, there is no solution for BC24 and BC25, but they have promised to fix it with **BC26**.

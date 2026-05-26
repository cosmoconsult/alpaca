---
    title: Custom CodeCops
    description: Configure Custom CodeCops for GitHub AL-Go workflows
---

# Custom CodeCops
AL-Go supports running custom CodeCops in GitHub workflows. This allows you to enforce repository-specific rules and checks during your CI/CD, Pull Request Build, Test Current, Test Next Minor, and Test Next Major workflows.
To configure custom CodeCops, follow the documentation on [customCodeCops](https://aka.ms/algosettings#customCodeCops) in the Microsoft AL-Go documentation. You can define custom CodeCops in your workflow-specific settings files (e.g., `.github/CICD.settings.json`) or in project-specific settings files (e.g., `./**/.AL-Go/settings.json`).

## Enable ALCops
To use [ALCops](https://alcops.dev/) you only need to configure the `customCodeCops` setting in your AL-Go settings file as [described in the documentation](https://alcops.dev/docs/getting-started/cicd/github/#1-add-the-settings). For example:

```json
{
  "customCodeCops": [
    ".alcops/ALCops.ApplicationCop.dll",
    ".alcops/ALCops.DocumentationCop.dll",
    ".alcops/ALCops.FormattingCop.dll",
    ".alcops/ALCops.LinterCop.dll",
    ".alcops/ALCops.PlatformCop.dll",
    ".alcops/ALCops.TestAutomationCop.dll",
    ".alcops/ALCops.Common.dll"
  ]
}
```

Using the initialization script is not required since COSMO Alpaca will recognize the `customCodeCops` setting and automatically install the specified ALCops analyzers.

> [!NOTE]
> Pinning the ALCops version is currently not supported in COSMO Alpaca.

---
    title: GitHub Repository Recommendations
    description: Naming conventions, repository structure and best practices for COSMO Alpaca GitHub repositories
---

# GitHub Repository Recommendations

> [!IMPORTANT]
> This page summarizes **COSMO-specific** conventions and best practices for GitHub repositories using COSMO Alpaca with AL-Go.

## Repository naming

Use a naming convention that clearly indicates the type and purpose of the repository. This helps quickly identify the repository and its intended use.
This also helps define [conditional settings](https://aka.ms/algosettings#conditional-settings) based on the repository name via [organizational settings](https://aka.ms/algosettings#where-are-the-settings-located).

At COSMO CONSULT, we follow these naming conventions for our GitHub repositories:

| Scenario | Pattern | Example |
| - | - | - |
| Customer project | `bc-customer-<customername>` | `bc-customer-acme` |
| Product | `bc-solution-<productname>` | `bc-solution-incoming-outgoings` |
| Asset / shared library | `bc-asset-<assetname>` | `bc-asset-translations` |

## Repository structure

### One repository per customer

For customer projects, use **one repository per customer** with all apps in the same repo. This has several advantages:

- AL-Go automatically discovers dependencies between apps in the same repository
- Simpler CI/CD configuration — one set of settings covers all apps
- Easier to manage secrets, permissions and entity assignments per customer

### One repository per product

For products, use **one repository per product**. Products typically have their own release lifecycle and versioning strategy.

### Use multiple AL-Go projects per repository

If a repository contains multiple independent apps you could split these into multiple AL-Go projects. This has several advantages:

- Different AL-Go settings per AL-Go project *(for example different container artifacts)*
- Parallel build of independent AL-Go projects for faster AL-Go build workflow runs
- Dependencies between AL-Go projects are determined automatically based on the dependencies of the contained apps. See [AL-Go Dependencies Workshop](https://github.com/microsoft/AL-Go/blob/main/Workshop/Dependencies1.md) for details.
- Build artifacts per AL-Go project that only contain the apps of the AL-Go project

But this also has some disadvantages:

- AL-Go build workflows create individual build containers for each AL-Go project
- More complex repository structure and maintenance overhead *(e.g. added/removed dependencies between projects require running the `Update AL-Go System Files` workflow)*

## Versioning

### Versioning Strategy

Use the AL-Go default versioning strategy `0` unless you have a concrete reason for another strategy. See [Versioning Strategies](versioning-strategies.md) for details.

### Use repository version

By default AL-Go build artifacts have a version independent from the apps and releases starting at `1.0` and will be increased the same way as app versions on release.
Additionally, these versions can differ between AL-Go projects.

To reduce confusion, we recommend the following:

- Set the AL-Go setting `repoVersion` for the repository to `Major.Minor` *(e.g. `28.0`)* based on the next planned release version or on the app versions. See [Setup AL-Go Settings](setup-al-go-settings.md) for details.
- Create releases with versions based on the AL-Go setting `repoVersion` of the repository *(e.g. `28.0.1` and `28.0.2`)*

Repository example in `.github/AL-Go-Settings.json`:

```json
{
    "repoVersion": "1.0"
}
```

> [!NOTE]
> By default app versions are independent from the repository version.
> To change this you can add `16` to your defined versioning strategy to also use the repository version for all app versions. See [Versioning Strategies](versioning-strategies.md) for details.

## GitHub App authentication for `GhTokenWorkflow`

The easiest configuration for a single repository is to use a PAT (Personal Access Token) generated from your GitHub account. COSMO Alpaca does this automatically for you when initializing the repository through the VS Code extension.

The significantly better, but somewhat more involved, setup is to use GitHub App authentication for the `GhTokenWorkflow`. The [AL-Go documentation](https://github.com/microsoft/AL-Go/blob/main/Scenarios/GhTokenWorkflow.md#github-app-authentication-recommended) describes how to configure it in detail.

This has several advantages:

- Improved security because no personal access tokens (PATs) need to be stored in the repository.
- Easier permission management through the GitHub App.
- Automatic token renewal by the GitHub App.
- Pull requests created by GitHub Actions, such as `Update AL-Go System Files` or `Increment Version`, can be reviewed and merged by the maintainer, even where review requirements might otherwise prevent it.

## Use GitHub Repo Standards

Use [GitHub Repo Standards](../admin/index.md#github-repo-standards) to maintain consistency and improve collaboration across projects. COSMO Alpaca applies the configured standards when creating or initializing repositories.


## See also

- [Create AL-Go Project](create-project.md)
- [Create Repository & App](create-app.md)
- [Setup AL-Go Settings](setup-al-go-settings.md)
- [Versioning Strategies](versioning-strategies.md)
- [Migrate from Azure DevOps (cosmo.json)](migrate-from-azure-devops.md)
- [Create Release](create-release.md)

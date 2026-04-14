---
    title: GitHub (AL-Go) FAQ
    description: Frequently asked questions for GitHub projects using COSMO Alpaca and AL-Go
---

# GitHub (AL-Go) FAQ

This FAQ summarizes recurring support questions for **COSMO Alpaca with GitHub (AL-Go)** and points you to the relevant documentation.

## Where do I start when troubleshooting recurring GitHub/AL-Go problems?

Use this order:

1. Verify the repository setup in the [GitHub Walkthrough](../github/walkthrough.md).
2. Verify the effective settings in [Setup AL-Go Settings](../github/setup-al-go-settings.md).
3. Check BC artifact and country configuration in [Change BC Version/Country](../github/change-container.md).
4. Check dependencies in [Setup Artifacts to Import on Container Startup](../github/setup-artifacts.md).
5. For COSMO-internal repositories, verify [Assign Organization/Repository to Entity](../github/assign-entity.md).
6. If the issue persists, use [Create Bug Report or Feature Request](bug-report.md).

## Where do I configure the BC version, country, artifacts, translations, or trusted NuGet feeds?

For GitHub repositories, the central place is the [AL-Go settings documentation](../github/setup-al-go-settings.md).

If you need the underlying Microsoft behavior, see the official AL-Go settings reference:

- [AL-Go settings overview](https://github.com/microsoft/AL-Go/blob/main/Scenarios/settings.md)
- [Where settings are stored](https://aka.ms/algosettings#where-are-the-settings-located)
- [Conditional settings](https://github.com/microsoft/AL-Go/blob/main/Scenarios/settings.md#conditional-settings)
- [Overwrite and merge behavior](https://github.com/microsoft/AL-Go/blob/main/Scenarios/settings.md#overwrite-settings-)

## How do I change the BC version or localization of my containers and workflows?

Use the GitHub-specific guide [Change BC Version/Country](../github/change-container.md).

The actual BC artifact selection is controlled by the AL-Go `artifact` setting. The detailed syntax is documented by Microsoft here:

- [AL-Go `artifact` setting](https://github.com/microsoft/AL-Go/blob/main/Scenarios/settings.md#artifact)
- [AL-Go `country` setting](https://github.com/microsoft/AL-Go/blob/main/Scenarios/settings.md#country)

## Which version format should I use for BC artifacts and dependencies?

If version resolution behaves unexpectedly, first verify whether the configured version is too specific. In many cases you should use only the version prefix you actually want to match, for example `24` or `24.2`, instead of forcing a longer version.

Relevant docs:

- [Change BC Version/Country](../github/change-container.md)
- [AL-Go `artifact` setting](https://github.com/microsoft/AL-Go/blob/main/Scenarios/settings.md#artifact)

## Where do I add app dependencies or third-party apps for my container?

Configure them as artifacts in the AL-Go settings. COSMO Alpaca supports NuGet-based artifacts and direct URL artifacts.

Relevant docs:

- [Setup Artifacts to Import on Container Startup](../github/setup-artifacts.md)
- [Setup AL-Go Settings](../github/setup-al-go-settings.md#artifacts)
- [Packages View](../github/packages-view.md)

If the dependency comes from a non-Microsoft NuGet feed, also review:

- [AL-Go `trustedNuGetFeeds`](https://github.com/microsoft/AL-Go/blob/main/Scenarios/settings.md#trustednugetfeeds)
- [AL-Go `trustMicrosoftNuGetFeeds`](https://github.com/microsoft/AL-Go/blob/main/Scenarios/settings.md#trustmicrosoftnugetfeeds)

## How do I add a URL artifact correctly?

Use a direct download URL to the `.app` or `.zip` file. Do not use a landing page or manual download page URL.

Relevant docs:

- [URL artifacts](../github/setup-artifacts.md#url)
- [Use Alpaca fileshare](../github/setup-artifacts.md#use-alpaca-fileshare)

## How can I find the correct package name and version for an artifact?

Use the [Packages View](../github/packages-view.md) in VS Code and copy the generated artifact JSON snippet for the selected version.

Relevant docs:

- [Packages View](../github/packages-view.md)
- [Packages View actions](../includes/packages-view/actions.md)
- [NuGet feed artifacts](../github/setup-artifacts.md#nuget-feed)

## Why is my container not using my changed configuration?

Configuration changes only apply to newly created containers and new workflow runs after the settings were committed and pushed.

Relevant docs:

- [Change BC Version/Country](../github/change-container.md)
- [Create Container](../github/create-container.md)

## Why can I create a container, but something still fails later or returns a generic error?

For COSMO-internal repositories, first verify that the repository is assigned to a COSMO entity. Missing entity assignments can block or destabilize internal COSMO-only workflows around repository handling and container creation.

Relevant docs:

- [Assign Organization/Repository to Entity](../github/assign-entity.md)

If the error message is still too generic, create a support ticket with repro steps:

- [Create Bug Report or Feature Request](bug-report.md)

## How do I create a container from a branch-specific configuration?

Use the branch-specific container creation flow described here:

- [Create Container](../github/create-container.md#create-a-container-with-configuration-from-a-specific-branch)

This is especially useful when you want to test AL-Go settings changes without affecting other users.

## Where do I find the general GitHub workflow with COSMO Alpaca?

If you want the high-level process from repository creation through container usage and pull requests, start with:

- [GitHub Walkthrough](../github/walkthrough.md)
- [GitHub (AL-Go) overview](../github/index.md)

## Where do I configure translations after the migration away from `alpaca.json`?

For GitHub repositories, translation settings now live under `alpaca` in the AL-Go settings.

Relevant docs:

- [Setup AL-Go Settings](../github/setup-al-go-settings.md#translations)
- [Migrating from alpaca.json](../github/setup-al-go-settings.md#migrating-from-alpacajson)

## Where is the official explanation for `versioningStrategy`?

The COSMO documentation references the Microsoft AL-Go behavior here:

- [Versioning Strategies](../github/versioning-strategies.md)
- [Setup AL-Go Settings](../github/setup-al-go-settings.md)
- [AL-Go `versioningStrategy`](https://github.com/microsoft/AL-Go/blob/main/Scenarios/settings.md#versioningstrategy)

## How do I configure Minimum workflows, build modes or schedules for Update AL-Go System Files?

Use:

- [Setup Minimum & Other Workflows](../github/setup-workflows.md)
- [AL-Go `workflowSchedule`](https://github.com/microsoft/AL-Go/blob/main/Scenarios/settings.md#workflow-specific-settings)
- [Update AL-Go system files](https://github.com/microsoft/AL-Go/blob/main/Scenarios/UpdateAlGoSystemFiles.md)

## How do I migrate frequently used settings from `alpaca.json` to AL-Go settings?

Use:

- [Migrate Common Settings from alpaca.json](../github/migrate-common-settings.md)
- [Setup AL-Go Settings](../github/setup-al-go-settings.md#migrating-from-alpacajson)

## How do I migrate an existing repository from Azure DevOps to GitHub and then use COSMO Alpaca containers?

For a full step-by-step guide including `cosmo.json` → AL-Go settings conversion with examples, see:

- [Migrate from Azure DevOps (cosmo.json) to GitHub (AL-Go)](../github/migrate-from-azure-devops.md)

For the repository migration itself (code and history):

- [Migrate from Azure DevOps to AL-Go for GitHub (without history)](https://github.com/microsoft/AL-Go/blob/main/Scenarios/MigrateFromAzureDevOpsWithoutHistory.md)
- [Migrate from Azure DevOps to AL-Go for GitHub (with history)](https://github.com/microsoft/AL-Go/blob/main/Scenarios/MigrateFromAzureDevOpsWithHistory.md)

## I changed GitHub settings in a pull request, but the PR workflow still behaves like the target branch. Why?

That is expected for many AL-Go workflow files and settings scenarios. The authoritative behavior is described by Microsoft AL-Go. If the expected result depends on workflow changes themselves, verify the target branch state and not only the pull request branch.

Relevant docs:

- [AL-Go settings overview](https://github.com/microsoft/AL-Go/blob/main/Scenarios/settings.md)

## What does `"artifact": "//*//latest"` mean and when should I use it?

This artifact expression tells AL-Go to resolve the BC artifact version dynamically based on application dependencies (instead of pinning a fixed major/minor).

Use it when you intentionally want AL-Go to derive the compatible BC version from your app dependency graph.

Example:

```json
{
    "artifact": "//*//latest"
}
```

Relevant docs:

- [Change BC Version/Country](../github/change-container.md)
- [How to select artifact version in migration](../github/migrate-common-settings.md#how-to-select-the-bc-artifact-version-in-al-go)
- [AL-Go `artifact` setting](https://github.com/microsoft/AL-Go/blob/main/Scenarios/settings.md#artifact)

## How do I enable XLIFF creation and validation in GitHub AL-Go settings?

Enable translation settings under `alpaca` in your AL-Go settings file.

Relevant docs:

- [Setup AL-Go Settings - Translations](../github/setup-al-go-settings.md#translations)
- [Migrate Common Settings from alpaca.json](../github/migrate-common-settings.md)

## How do I choose the right version strategy for my repository?

The official AL-Go default is strategy `0`.

- `0`: AL-Go default; build and revision are based on workflow run metadata
- `15`: useful for validation builds when you want isolated validation version numbers
- Other strategies such as `2` and `3` are available for specific scenarios; use them only if you have a concrete reason

Relevant docs:

- [Versioning Strategies](../github/versioning-strategies.md)
- [AL-Go `versioningStrategy`](https://github.com/microsoft/AL-Go/blob/main/Scenarios/settings.md#versioningstrategy)
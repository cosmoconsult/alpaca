---
    title: Walkthrough
    description: Walkthrough
---

# Walkthrough

This walkthrough is intended to quickly get to know COSMO Alpaca with Azure DevOps and the modern development process it supports you with.

## Set up COSMO Alpaca

Before starting with the walkthrough, let's set up our tooling.

1. [Sign up and create an organization](create-org.md)
1. [Set up VS Code and the COSMO Alpaca Extension](../getting-started/setup-vsce.md)

## Create your first app and requirement

Imagine you're the project manager or lead developer and you have a new customer. You now prepare the new project and set up the new repository for that customer via VS Code and create the first requirement:

1. [Create a project](create-project.md)
2. [Create repository, AL App and pipelines](create-app.md)
3. [Open your project/repository in the browser](../shared/open-stuff.md) and create a new work item that you'll be working on next

## Implementing your first requirement

Now you're switching to the developer role. You need to implement the requirement described in the work item your project manager just created. You use the tool you're familiar with: VS Code (with the COSMO Alpaca extension):

1. [Clone your app repository](clone-repo.md) to your local machine for development. Open the workspace.
1. [Create a development container](create-container.md) for the app you just created.
1. While your container starts, [find the work item you'll work on and create a new branch](branches.md#create-a-branch-to-work-on-a-work-item) for it. Switch to that branch.
1. [Connect your launch.json to the container](../shared/create-launch-json.md).
1. Your container should be started by now (it turned blue). [Open the BC web client](access-container-resources.md), copy the [generated username and password](container-credentials.md) and sign in.
1. Download symbols and start developing and debugging as you normally would.
1. When done, [associate the work item to your commit](interact-with-requirements.md#associate-a-workitem-to-a-commit) and push your changes.
1. Use the extension to [create a Pull Request](branches.md#see-and-interact-with-branches) for your development branch.
1. Check out the pipeline that started verifying your Pull Request. You can [open it via the extension](../shared/open-stuff.md) as well.
1. While the pipeline runs, take the time to check your [work item](../shared/open-stuff.md). You can observe that everything is linked: from the development branch, over the commit on to the Pull Request. Full end-to-end tracking of changes is now a breeze.
1. If the pipeline succeeded, either [delete](delete-container.md) or [stop](startstop-container.md) your container to free up resources for other users.

Next, a lead developer would review the code changes of the Pull Request. A functional verification would be needed as well.

## Validating the implementation from a functional perspective

As the development work is now finished, imagine you're a project manager or functional consultant and need to verify the change the developer just implemented before the code is merged.

Even before the Pull Request is created, the developer can [share their container](share-container.md) with you so you can test the changes right away in a running Business Central environment — no local setup needed. Once you're satisfied, the Pull Request can be reviewed and merged.

## Deploying your app

There comes a time in your project where you need to deploy the current state of the project. The default way would be to use Release Pipelines to (continuously) deploy changes to a test, QA and production environment. You can set up release pipelines to deploy to SaaS or OnPrem environments with a single click via [VS Code](create-release-pipeline.md). Afterwards you need to [configure the connection](create-release-pipeline.md#configuration) to your environment.

You now learned the fundamental flow of working with COSMO Alpaca. You're now prepared to handle basic projects. What about more advanced projects?

## Additional use cases

- **Container configuration and artifact dependencies:** The [`cosmo.json` configuration](setup-cosmo-json.md) is the central place to [change the BC version or country](change-container.md) of your app, the service tier, licenses, compiler and many other settings. It is also where you [configure artifact dependencies](setup-artifacts.md) like other apps (from an artifact feed or filesystem), DLLs, fonts or RapidStart packages that get deployed at container startup. You can even add additional configurations, so users in your project [can choose](create-container.md#select-a-specific-bc-artifact-configuration-when-creating-a-new-container) which combination of artifacts or BC version they want to use. Changes to this file [can be tested in a separate branch](create-container.md#create-a-container-with-configuration-from-a-specific-branch) before rolling them out to everyone.

- **Database backups:** For your containers you may want other data than the Cronus demo data to develop, test or demo with. You can [set up an on-premises or SaaS backup](setup-bak.md) that your containers will use as a base. BacPacs need to be converted to BAK with the [integrated conversion feature](convert-bacpac-to-bak.md) first.

- **Next Major/Minor pipelines:** Developing SaaS apps and want to check your apps against upcoming Business Central versions? Set up [Next Minor and Next Major pipelines](next.md) to automatically check your apps every night.

- **Standalone containers:** Quickly want to set up a container for a specific version and country that is not related to a project? You can use [Standalone Containers](create-ondemand-container.md) to create those environments with a simple wizard.

- **Onboarding existing projects:** Have a project that wasn't created with COSMO Alpaca? The [onboarding function](onboard-project.md) can make most of your project ready for it.

- **Auto-Start/-Stop:** Save costs by [scheduling containers](auto-startstop.md) to automatically start and stop at configured times (e.g., start at 8 AM, stop at 6 PM). Stopped containers are free.

- **Packages View:** Browse NuGet feeds, Microsoft feeds and custom artifact feeds directly from the [Packages View](packages-view.md) in VS Code. Download packages or add them to your AL package cache with a single click.

- **MCP Tools:** Use built-in [MCP tools](../shared/mcp-tools.md) to expose almost all COSMO Alpaca functionality to AI agents like GitHub Copilot — create projects, containers, manage pipelines and more through natural language.

There is much more to explore — check the rest of the documentation for the full picture. Missing something or have a question? Please get in touch!

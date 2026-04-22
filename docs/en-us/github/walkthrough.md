---
    title: Walkthrough
    description: Walkthrough
---

# Walkthrough

This walkthrough is intended to quickly get to know COSMO Alpaca with GitHub (AL-Go) and the modern development process it supports you with.

## Set up COSMO Alpaca

Before starting with the walkthrough, let's set up our tooling.

1. [Sign up and create an GitHub organization](create-org.md)
1. [Set up VS Code and the COSMO Alpaca Extension](../getting-started/setup-vsce.md)

## Create your first app and requirement

Imagine you're the project manager or lead developer and you have a new customer. You now prepare the new project and set up the new repository for that customer via VS Code and create the first requirement:

2. [Create repository, AL App and workflows](create-app.md)
1. [Create a AL-Go project](create-project.md) (optional, only needed for multi-project repositories)
3. [Open your project/repository in the browser](../shared/open-stuff.md) and create a new issue/workitem that you'll be working on next

## Implementing your first requirement

Now you're switching to the developer role. You need to implement the requirement described in the issue/workitem your project manager just created. You use the tool you're familiar with: VS Code (with the COSMO Alpaca extension):

1. Clone your app repository to your local machine for development and open the workspace.
1. [Create a development container](create-container.md) for the app you just created.
1. While your container starts, [create a new branch from your issue/workitem](interact-with-requirements.md) and switch to it.
1. [Connect your launch.json to the container](../shared/create-launch-json.md).
1. Your container should be started by now (it turned blue). Open the BC web client and sign in.
1. Download symbols and start developing and debugging as you normally would.
1. When done, [mention the issue or workitem](interact-with-requirements.md) in your commit message or PR description and push your changes.
1. Create a Pull Request for your development branch.
1. Check out the workflow that started verifying your Pull Request. You can [open it via the extension](../shared/open-stuff.md) as well.
1. While the workflow runs, take the time to check your issue/workitem. You can observe that everything is linked: from the development branch, over the commit on to the Pull Request. Full end-to-end tracking of changes is now a breeze.

Next, a lead developer would review the code changes of the Pull Request. A functional verification would be needed as well.

## Validating the implementation from a functional perspective

As the development work is now finished, imagine you're a project manager or functional consultant and need to verify the change the developer just implemented before the code is merged.

Even before the Pull Request is created, the developer can [share their container](share-container.md) with you so you can test the changes right away in a running Business Central environment — no local setup needed. Once you're satisfied, the Pull Request can be reviewed and merged.

## Deploying your app

There comes a time in your project where you need to deploy the current state of the project. Deployment is handled through AL-Go workflows that can deploy your app to SaaS or on-premises environments.

You now learned the fundamental flow of working with COSMO Alpaca. You're now prepared to handle basic projects. What about more advanced projects?

## Additional use cases

- **Container configuration and artifact dependencies:** The [AL-Go settings configuration](setup-al-go-settings.md) is the central place to [change the BC version or country](change-container.md) of your app and many other settings. It is also where you [configure artifact dependencies](setup-artifacts.md) like other apps from a NuGet feed or URL that get deployed at container startup.

- **Collaboration:** Want to [collaborate on the Business Central base app](contribute-base-app.md) with other teams? COSMO Alpaca supports that workflow too.

- **Packages View:** Browse NuGet feeds, Microsoft feeds and custom artifact feeds directly from the [Packages View](packages-view.md) in VS Code. Download packages or add them to your AL package cache with a single click.

- **MCP Tools:** Use built-in [MCP tools](../shared/mcp-tools.md) to expose almost all COSMO Alpaca functionality to AI agents like GitHub Copilot — create projects, containers, manage workflows and more through natural language.

There is much more to explore — check the rest of the documentation for the full picture. Missing something or have a question? Please get in touch!

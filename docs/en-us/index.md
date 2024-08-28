---
    title: COSMO Alpaca
    description: COSMO Alpaca
---

# COSMO Alpaca

COSMO Alpaca is intended to make the usage of Azure DevOps in general and the usage of Containers in the context of D365 Business Central as easy as possible for developers, consultants and project managers. It currently is available through two clients:

- A Power App for project and container management
- A Visual Studio Code extension for project and container management

The VS Code extension is meant for more technical users and developers who spent most of their time in VS Code anyways while the PowerApp is easier to use through the browser also by non-technical people. A lot of functionality is available in both the VS Code extension and the Power App, so often you can just decide what works better for you.

If you want to find out what we have done recently, there is a [What's new page](history-roadmap/whats-new.md) and you can also get an idea what our current plans for improvements to the service are by checking our [What's next page](history-roadmap/whats-next.md)

## Getting started

In this section you find help getting started:

- [Access to and setup of the Power App](getting-started/access-and-setup-powerapps.md)
- [Access to and setup of the VS Code extension](getting-started/access-and-setup-vsce.md)
- [Create an organization in Azure DevOps](getting-started/create-org.md)

## Usage for project managers / functional consultants through the Power Apps

In this section you find help for the usage scenarios as project manager or functional consultant, provided through the Power Apps:

- [Create a project as part of an organization in Azure DevOps](powerapps/create-project.md)
- [Import a backlog into your project](powerapps/import-backlog.md)
- [Create an app in your project](powerapps/create-app.md)
- [Create a release pipeline for your app](powerapps/create-release-pipeline.md)
- [Update the configuration in your project](powerapps/update-config.md)
- [Update Task Group Templates](powerapps/update-task-groups.md)
- [Create a test / demo environment](powerapps/create-test-demo.md)
- [Create an environment to test a Pull Request](powerapps/create-pr-test.md)
- [Create an environment based on predefined configurations](powerapps/create-predefined-config.md)
- [Manage your environments](powerapps/manage-environments.md)

## Usage for technical consultants / developers through the VS Code extension

In this section you find help for the usage scenarios as technical consultant or developer, provided through the Visual Studio Code extension:

- [Define favorite organizations and show only those](vsc-extension/favorite-orgs.md)
- [Create a project as part of an organization in Azure DevOps](vsc-extension/create-project.md)
- [Onboard an existing project for usage with the self-service](vsc-extension/onboard-project.md)
- [Create an app in your project](vsc-extension/create-app.md)
- [Create a release pipeline for your app](vsc-extension/create-release-pipeline.md)
- [Clone a repository for development](vsc-extension/clone-repo.md)
- [Work with branches](vsc-extension/branches.md)
- [Open a repository, pipeline, build, workitem, project or organization in the browser](vsc-extension/open-stuff.md)
- [Associate a workitem to a commit](vsc-extension/associate-wi.md)
- [Create a bug report or feature request for any part of the self-service](vsc-extension/bug-report.md)
- [Customize a project](vsc-extension/customize-project.md)
- [Get the latest version of the COSMO CI/CD template](vsc-extension/cicd-update.md)
- [Get the latest version of the COSMO Task group (release pipeline) template](vsc-extension/update-task-groups.md)
- [Update the project configuration](vsc-extension/update-project.md)
- [Container handling:](vsc-extension/)
  - [Create a new container](vsc-extension/create-container.md)
  - [Create a new container without predefined configuration](vsc-extension/create-ondemand-container.md)
  - [Share a container with someone else](vsc-extension/share-container.md)
  - [Backup the database in a container](vsc-extension/backup-database.md)
  - [Stop and start a container](vsc-extension/startstop-container.md)
  - [Show all containers](vsc-extension/show-all-containers.md)
  - [Create a configuration in your launch.json connected to the container](vsc-extension/create-launch-json.md)
  - [Delete a container](vsc-extension/delete-container.md)
  - [Open the Web Client, terminal, file share, log, configuration or statistics in the browser](vsc-extension/open-container.md)
  - [Copy username or password for the container](vsc-extension/copy-user-pwd.md)
  - [Get the event log](vsc-extension/event-log.md)
  - [Create a container with configuration from a specific branch](vsc-extension/create-branch-container.md)
  - [Create a backup of the database in the container](vsc-extension/backup-database.md)
  - [Configure Auto-Start and Auto-Stop](vsc-extension/autostart-stop.md)
  - [Rename a container](vsc-extension/rename-container.md)
  - [Restart NAV/BC Service Tier](vsc-extension/restart-service-tier.md)
- [Assign an organization to an entity](vsc-extension/assign-entity.md)
- [Assign an organization to a customer](vsc-extension/assign-customer.md)
- [Assign an organization a responsible user](vsc-extension/assign-responsible-user.md)
- [Download a DevOps artifact](vsc-extension/download-artifact.md)
- [Select a different tenant](vsc-extension/tenant.md)
- [Convert a .bacpac backup file to a .bak backup file](vsc-extension/convert-bacpac-to-bak.md)

## Container setup

In this section you find information on how to set up the containers that are used for development, builds, test/demo environments and so on:

- [Set up `cosmo.json` parameters](containers/setup-cosmo-json.md)
- [Set up apps, fobs, dlls, fonts or rapidstart packages to import on startup](containers/setup-artifacts.md)
- [Set up a database backup to use when the container starts](containers/setup-bak.md)
- [Change the base version or country of the used container](containers/change-container.md)
- [Set up custom scripts to run on container startup](containers/setup-custom-scripts.md)

## Pipeline setup and handling

In this section you find information on how to set up work with your CI/CD pipelines:

- [Override pipeline variables](pipelines/pipeline-variables.md)
- [Set up extended pipelines](pipelines/next.md)
- [Increase the version of the app you are building](pipelines/version-increase.md)
- [Use Preprocessor Directives in a pipeline](pipelines/preprocessor-directives.md)
- [Setup app signing within pipelines](pipelines/app-signing.md)

## Troubleshooting

This section provides help for troubleshooting

- [Typical problems and their solutions](troubleshooting/solutions.md)

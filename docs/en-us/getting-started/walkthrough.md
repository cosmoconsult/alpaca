---
    title: Walkthrough
    description: Walkthrough
---

# Walkthrough

This walkthrough is intended to quickly get to know COSMO Alpaca and the modern development process it supports you with.

## Set-up COSMO Alpaca

Before starting with the walkthrough, let's set up our tooling. 

1. [Sign in to Azure DevOps](https://aex.dev.azure.com/go/signup?account=true) and create your own Azure DevOps organization or use an existing one.
    - **Note for trial users:** If you never used Azure DevOps you need to **wait for 5min** until your first Azure DevOps sign-up has been synchronized, else you'll get an error and need to sign-out and sign-in again.
1. [Set-up VS Code and the COSMO Alpaca Extension](https://docs.cosmoconsult.com/de-de/cloud-service/devops-docker-selfservice/getting-started/access-and-setup-vsce.html)

## Create your first app and requirement

Imagine you're the project manager or lead developer and you got a new customer. You now set up the new project for that customer via VS Code and create a WorkItem:

1. [Create a project](https://docs.cosmoconsult.com/de-de/cloud-service/devops-docker-selfservice/vsc-extension/create-project.html)
2. [Create AL App and pipelines](https://docs.cosmoconsult.com/de-de/cloud-service/devops-docker-selfservice/vsc-extension/create-app.html)
3. [Open your created Project in the browser](https://docs.cosmoconsult.com/de-de/cloud-service/devops-docker-selfservice/vsc-extension/open-stuff.html) and create a new WorkItem with a requirement that you'll be working on next


## Implementing your first requirement

Now you're switching to the developer role. You need to implement the requirement described in the WorkItem your project manager just created. You use the tool you're familiar with: VS Code (with the COSMO Alpaca extension):

1. [Clone your app repository](https://docs.cosmoconsult.com/de-de/cloud-service/devops-docker-selfservice/vsc-extension/clone-repo.html) to your local machine for development. Open the workspace.
1. [Create a development container](https://docs.cosmoconsult.com/de-de/cloud-service/devops-docker-selfservice/vsc-extension/create-container.html) for the app you just created
1. While your container starts, [find the WorkItem you'll work on and create a new branch](https://docs.cosmoconsult.com/de-de/cloud-service/devops-docker-selfservice/vsc-extension/branches.html#create-a-branch-to-work-on-a-work-item) for it. Switch to that branch.
1. [Connect your launch.json to the container](https://docs.cosmoconsult.com/de-de/cloud-service/devops-docker-selfservice/vsc-extension/create-launch-json.html)
1. Your container should be started by now (it turned blue). [Open the BC web client](https://docs.cosmoconsult.com/de-de/cloud-service/devops-docker-selfservice/vsc-extension/open-container.html), copy the [generated username and password](https://docs.cosmoconsult.com/de-de/cloud-service/devops-docker-selfservice/vsc-extension/copy-user-pwd.html) and sign in.
1. Download symbols and start developing and debugging like normally. 
1. When done, [associate the WorkItem to your commit](https://docs.cosmoconsult.com/de-de/cloud-service/devops-docker-selfservice/vsc-extension/associate-wi.html#associate-a-workitem-to-a-commit) and push your changes.
1. Use the extension to [create a Pull Request](https://docs.cosmoconsult.com/de-de/cloud-service/devops-docker-selfservice/vsc-extension/branches.html#see-and-interact-with-branches) for your development branch.
1. Check out the pipeline that started verifying your Pull Request. You can [open it via the extension](https://docs.cosmoconsult.com/de-de/cloud-service/devops-docker-selfservice/vsc-extension/open-stuff.html) as well.
1. While the pipeline runs, take the time to check your [WorkItem](https://docs.cosmoconsult.com/de-de/cloud-service/devops-docker-selfservice/vsc-extension/open-stuff.html). You can observe that everything is linked: From the development branch, over the commit on to the Pull Request. Full end-to-end tracking of changes now is a breeze.
1. If the pipeline succeeded, either [delete](https://docs.cosmoconsult.com/de-de/cloud-service/devops-docker-selfservice/vsc-extension/delete-container.html) or [stop](https://docs.cosmoconsult.com/de-de/cloud-service/devops-docker-selfservice/vsc-extension/startstop-container.html) your container to free up resources for other users.

Next a lead developer would review the code changes of the Pull Request. A functional verification would be needed as well.


## Validating the implementation from a functional perspective

As the development work is now finished, imagine you're a project manager or functional consultant and need to verify the change the developer just implemented before the code is merged. 

<!-- 
You can use VS Code in the browser via [vscode.dev](https://vscode.dev/) to do so.

1. Create a new PR container
1. Wait for your container to be ready and open the webclient
1. If your test was successful, the PR can be merged and you delete your container. Now wait for the pipeline to create a new release artifact.
1. Now at the latest also the developer would [delete the development container](https://docs.cosmoconsult.com/de-de/cloud-service/devops-docker-selfservice/vsc-extension/delete-container.html) if it was just stopped before.
-->

## Deploying your app

There comes a time in your project where you need to deploy the current state of the project. The default way would be to use Release Pipelines to (continuously) deploy changes to a test, QA and production environment. You can set up release pipelines to deploy to SaaS or OnPrem environments with a single click via [VS Code](https://docs.cosmoconsult.com/de-de/cloud-service/devops-docker-selfservice/vsc-extension/create-release-pipeline.html). Afterwards you need to [configure the connection](https://docs.cosmoconsult.com/de-de/cloud-service/devops-docker-selfservice/vsc-extension/create-release-pipeline.html#configuration) to your environment.

<!--
- Alternatively as a quick way to present the current state without a "formal release" you can use the the VS Code extension to create a project container.
-->

You now learned the fundamental flow of working with COSMO Alpaca. You're now prepared to handle basic projects. What about more advanced projects?

## Additional use cases covered by COSMO Alpaca

- Apps you develop often depend on certain artifacts like other apps (from an Artifact Feed or filesystem), DLLs, fonts, RapidStart packages or FOBs. You can easily [configure them](https://docs.cosmoconsult.com/de-de/cloud-service/devops-docker-selfservice/containers/setup-artifacts.html) via the `cosmo.json` file in your app repository, so they get deployed at the container startup.

- For your containers you may want other data than the Cronus one to develop, test or demo with. You can [set up an on-premises or SaaS backup](https://docs.cosmoconsult.com/de-de/cloud-service/devops-docker-selfservice/containers/setup-bak.html) that your containers will be using as a base. BacPacs need to be converted to BAK with the [integrated conversion feature](https://docs.cosmoconsult.com/de-de/cloud-service/devops-docker-selfservice/vsc-extension/convert-bacpac-to-bak.html) first.

- Next to the artifacts described in the two cases above you can also change [the major version or the country](https://docs.cosmoconsult.com/de-de/cloud-service/devops-docker-selfservice/vsc-extension/convert-bacpac-to-bak.html) of your app, the service tier, licenses, compiler as well as many other settings in [the `cosmo.json` configuration](https://docs.cosmoconsult.com/de-de/cloud-service/devops-docker-selfservice/containers/setup-cosmo-json.html). You can even add additional configurations, so users in your project [can choose](https://docs.cosmoconsult.com/de-de/cloud-service/devops-docker-selfservice/vsc-extension/create-container.html#select-a-specific-bc-artifact-configuration-when-creating-a-new-container) which combination of artifacts or BC version they want to use when creating a container. Changes to this file [can be tested in a separate branch](https://docs.cosmoconsult.com/de-de/cloud-service/devops-docker-selfservice/vsc-extension/create-branch-container.html) as well before rolling them out to everyone.

- You want to check what your container is doing, you want to move files to or from the container or access the terminal to issue your own commands or debug things? You can easily access the container [logs, fileshare and terminal](https://docs.cosmoconsult.com/de-de/cloud-service/devops-docker-selfservice/vsc-extension/open-container.html).

- Developing SaaS apps and also want to check your apps against the Next Major and Next Minor versions? Set up [Next Minor and Next Major pipelines](https://docs.cosmoconsult.com/de-de/cloud-service/devops-docker-selfservice/pipelines/next.html) to automatically check your apps every night.

- Quickly want to set up a container for a specific version and country that is not related to a project? You can use [Standalone Containers](https://docs.cosmoconsult.com/de-de/cloud-service/devops-docker-selfservice/vsc-extension/create-ondemand-container.html) to create those environments with a simple wizard.

- If you work in many projects you may get overwhelmed by the long Azure DevOps organization list. Declutter your workspace and configure your [favorite organizations](https://docs.cosmoconsult.com/de-de/cloud-service/devops-docker-selfservice/vsc-extension/favorite-orgs.html)

- You got a project that wasn't created with COSMO Alpaca? The [onboarding function](https://docs.cosmoconsult.com/de-de/cloud-service/devops-docker-selfservice/vsc-extension/onboard-project.html) is able to make most of your project ready for it.

- Do you need to execute some custom logic for all the development, test or demo containers in your project to e.g. add users or install another dependency not covered by the default configuration? You can set up [custom scripts](https://docs.cosmoconsult.com/de-de/cloud-service/devops-docker-selfservice/containers/setup-custom-scripts.html) that are automatically executed on container start. 

- If you need to extend the default pipelines, you can use the available [Pipeline Hooks](https://docs.cosmoconsult.com/de-de/cloud-service/devops-docker-selfservice/pipelines/pipeline-variables.html#pipeline-setup-hooks)

- Administrators can [set up configurations](https://docs.cosmoconsult.com/de-de/cloud-service/devops-docker-selfservice/admin/index.html) which affect all users of COSMO Alpaca, independent of the project:
    - Global IP artifact feeds so that you can more easily configure artifacts you often need in projects.
    - Azure Active Directory Authentication for containers to remove the need of entering credentials

There of course is much more, but this should cover most of your scenarios. Missing something or got a question? Please get in touch!
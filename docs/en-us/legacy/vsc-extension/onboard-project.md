---
    title: Onboard Project
    description: Onboard Project
---

# Onboard Project

If you want to work with an existing Azure DevOps project that does not yet have the [COSMO Alpaca Legacy](../../../README.md) extension installed and configured properly, you can onboard the project using the VS Code extension. To onboard a project, right-click on the project where you want to onboard and select **Onboard project**:

![Extension Azure DevOps Onboard Project](../../media/extension-devops-onboard-project.png)

A project will be onboarded with the following setup:

1. It will install the following extensions if they are not already installed in the Organization:
   - [Code Search](https://marketplace.visualstudio.com/items?itemName=ms.vss-code-search)
   - [Pull Request Merge Conflict Extension](https://marketplace.visualstudio.com/items?itemName=ms-devlabs.conflicts-tab)
   - [Generic Connection Viewer](https://marketplace.visualstudio.com/items?itemName=achermyanin.credentials-viewer)
   - [AL Language Syntax Highlights](https://marketplace.visualstudio.com/items?itemName=ms-dynamics-smb.allanghighlights)
2. It will set up branch policies on the main branch to enforce best practices
3. It will create the necessary pipelines and pipeline variable groups for the AL-based CI/CD process

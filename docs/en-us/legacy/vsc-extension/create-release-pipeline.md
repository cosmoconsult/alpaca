---
    title: Create Release Pipeline
    description: Create Release Pipeline
---

# Create Release Pipeline

If you want to use a container environment for your release deployment in Azure DevOps, you can use the "Create release pipeline" action on an app repository to create a release pipeline based on a template. To create a release pipeline, right-click on a repository that you want to use and select **Create release pipeline**:

You will then be prompted to select an artifact path relative to your workspace's root. The release pipeline will be created with all the necessary steps to deploy the published artifacts from your CI/CD process to a release container.

You can then manually adjust and enhance the release pipeline according to your needs to deploy to additional or different environments.

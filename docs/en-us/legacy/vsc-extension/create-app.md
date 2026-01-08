---
    title: Create Repository & App
    description: Create Repository & App
---

# Create Repository & App

When creating a BC app using VS Code and Azure DevOps, you need an [organization][create-org] and a [project][create-project]. To create a repository for a BC app with a connected pipeline right-click on the project where you want to create a repository with a connected pipeline and select **Create app using artifacts**:

![Extension Azure DevOps Create App](../../media/extension-devops-create-app.png)

Now follow the wizard:
1. Enter a name for the new app (the repository will have the same name)
1. Select the BC version that you want to use
1. Select the country that you want to use
1. Select the license that you want to use
1. Select the auth mechanism (see param `auth` described [here](../../containers/setup-cosmo-json.md#common-parameters))

With that, the new repository and pipeline will be created. It has all the basic setup and preparation needed to start working on a Business Central project including e.g. a branch policy and automatic setup of artifacts in your pipeline. After creation has finished, you will see your new repository and the new pipeline, both with the name of the app that you entered.

[create-org]: ../../getting-started/create-org.md
[create-project]: create-project.md

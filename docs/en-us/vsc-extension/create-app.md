---
    title: Create an app in your project
    description: Create an app in your project
---

# Create an app in your project

When creating a BC app using VS Code and Azure DevOps, you need an organization (see [create org][create-org]), a project (see [create project][create-project]) and a repository with a connected pipeline. To create a repository with a connected pipeline, you need to take the following steps:

1. Right-click on the project where you want to create a repository with a connected pipeline and select "Create app using artifacts"
1. Enter a name for the new app (the repository will have the same name)
1. Select the BC version that you want to use
1. Select the locale that you want to use
1. Select the license that you want to use

With that, the new repository and pipeline will be created. It has all the basic setup and preparation needed to start working on a Business Central project including e.g. a branch policy and automatic setup of artifacts in your pipeline. After creation has finished, you will see your new repository and the new pipeline, both with the name of the app that you entered.

<video width="1280px" height="720px" controls>
  <source src="../media/vsc-extension-create-app.mp4" type="video/mp4">
  Your browser does not support the video tag.
</video>

[create-org]: ../getting-started/create-org.md
[create-project]: create-project.md

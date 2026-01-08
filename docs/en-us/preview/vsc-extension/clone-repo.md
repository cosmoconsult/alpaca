---
    title: Clone Repository
    description: Clone Repository
---

# Clone Repository

# [**GitHub (AL-Go)**](#tab/github)
WIP

# [**Azure DevOps**](#tab/azdevops)

If you want to start developing on a Azure DevOps repository (see [create app][create-app] on how to create one), you need to locally clone that repository and then open the workspace. Please note that installing Git is a prerequisite for this to work. You can find the installer [here][git].

To clone the repository, you take these steps:

1. Right-click on the repository that you want to use and select "Clone"
1. Select the local folder where your repository shall be stored. Note that the command will automatically create a subfolder with the name of the repository in the folder you select
1. VS Code will ask you whether you want to open the repository. Click on "Open" (opens the repository in the current VS Code window) or "Open in New Window" (opens a new VS Code window and opens the repository there)
1. After opening the repository, VS Code will recognize that it contains a workspace and ask you, whether you want to open that. Click on "Open Workspace" as development will work best in the workspace.

With that, you are ready to start developing. You might want to [create a container][create-container] and [setup your launch.json file][setup-launch] to start publishing and debugging

<video width="1280px" height="720px" controls>
  <source src="../../media/vsc-extension-clone.mp4" type="video/mp4">
  Your browser does not support the video tag.
</video>

---

[create-app]: create-app.md
[create-container]: create-container.md
[setup-launch]: create-launch-json.md
[git]: https://gitforwindows.org/

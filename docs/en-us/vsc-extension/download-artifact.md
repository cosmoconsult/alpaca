---
    title: Download an artifact
    description: Download an artifact
---

# Download an artifact

# [**GitHub (AL-Go)**](#tab/github)
WIP

# [**Azure DevOps**](#tab/azdevops)

Each pipeline produces an app artifact which is stored within the artifact repository of Azure DevOps. Further you can add other artifacts to the artifact repository to easily distribute them or use them in your pipelines. In the Visual Studio Code extension you can directly download an artifact:

1. In the extension under your project select *Artifacts* and an artifact feed you whish to download artifacts from. For example the apps built by the default pipeline are stored within a feed which has the same name as your project. Now right click on the artifact you want to download and choose **Download artifact**.
1. You need a separate Personal Access Token (PAT) for each organization to download an artifact. The PAT is used as an alternate password to authenticate into Azure DevOps. Therefore if you're downloading one for the first time, you are asked if you would like to automatically retrieve a PAT:
    - When choosing **Yes** or **Yes, always** a PAT with the scopes mentioned below is automatically created for you. *Yes, always* stores a setting for the Visual Studio Code extension to always automatically retrieve a PAT for every organization without asking you again.
    - When choosing **No** you need to manually [create a PAT in Azure DevOps](https://docs.microsoft.com/en-us/azure/devops/organizations/accounts/use-personal-access-tokens-to-authenticate?view=azure-devops&tabs=current-page#create-a-pat) for the specific organization and enter it within Visual Studio Code. The PAT needs the following scopes:
        - Code: Read & Write
        - Packaging: Read
        - Variable Groups: Read, create & manage
1. The entered PAT is stored securely within the Windows Credential Manager.
1. You're now asked where you would like to save the artifact. Choose a directory as well as a file name and hit **Save**.

<video width="1280px" height="720px" controls>
  <source src="../media/download-artifact.mp4" type="video/mp4">
  Your browser does not support the video tag.
</video>

---

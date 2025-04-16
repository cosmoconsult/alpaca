---
    title: Open Web Client, Terminal, File Share, Log
    description: Open Web Client, Terminal, File Share, Log
---

# Open Web Client, Terminal, File Share, Log

While you can of course open the Web Client there are also many further ways to interact with your [created container](create-container.md). You can manage files, look at the logs, statistics and the configuration of your container and are also able to run commands inside:

1. In the Visual Studio Code extension right click on your container and choose one of the following actions:
    - **Open file share** to upload files to your container. Files placed in `C:\temp` are kept during container restarts.
    - **Open in browser** to open the Business Central Web Client.
    - **Open log** to view the log of all Business Central related services within your container. Please note that the log is only available as soon as the container is in status "starting". We're currently working on giving you more insights during "pending" state as well.
    - **Open terminal** to get a shell in your container to run any custom commands. You can load the Business Central PowerShell Cmdlets through running `C:\Run\Prompt.ps1`.
2. Your browser opens with either the Business Central Web Client where you can log in with your [username and password](copy-user-pwd.md) or used the VS Code terminal or output window to show logs or connect to your container for sharing files or using the terminal.

# [**GitHub (AL-Go)**](#tab/github)
WIP

# [**Azure DevOps**](#tab/azdevops)

<video width="1280px" height="720px" controls>
  <source src="../media/open-container.mp4" type="video/mp4">
  Your browser does not support the video tag.
</video>

---
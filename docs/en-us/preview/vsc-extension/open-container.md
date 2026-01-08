---
    title: Open Web Client, Terminal, File Share, Log
    description: Open Web Client, Terminal, File Share, Log
---

# Open Web Client, Terminal, File Share, Log

While you can of course open the Web Client there are also many further ways to interact with your [created container](create-container.md). You can manage files, look at the logs, statistics and the configuration of your container and are also able to run commands inside:

In the Visual Studio Code extension the following actions are available on a container:

- **Open in browser** to open the Business Central Web Client in your browser where you can log in with your [username and password](copy-user-pwd.md)
- **Open file share** to upload files to your container. Note: files placed in `C:\temp` are kept during container restarts.
- **Open log** to view the log of all Business Central related services within your container. Please note that the log is only available as soon as the container is in status "starting". We're currently working on giving you more insights during "pending" state as well.
- **Open terminal** to get a shell in your container to run any custom commands. You can load the Business Central PowerShell Cmdlets by running `C:\Run\Prompt.ps1`.

# [**GitHub (AL-Go)**](#tab/github)
WIP

# [**Azure DevOps**](#tab/azdevops)

<video width="1280px" height="720px" controls>
  <source src="../../media/open-container.mp4" type="video/mp4">
  Your browser does not support the video tag.
</video>

---

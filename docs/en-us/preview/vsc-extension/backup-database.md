---
    title: Backup Container Database
    description: Backup Container Database
---

# Backup Container Database

# [**GitHub (AL-Go)**](#tab/github)
WIP

# [**Azure DevOps**](#tab/azdevops)

You can easily create backups of the one (single-tenant) or multiple (multi-tenant) databases in a container. You have to take the following steps to do that:

1. Navigate to the container in the COSMO Alpaca view
2. Do a right-click on the container
3. Select database
4. Enter the folder where the backup file(s) should be generated. Note that the folder path must start with c:\azurefileshare\ and that the path will be created if it doesn't exist
5. Wait until the backup has finished.

You can then use your usual way to access the file share and work with the backup. You can also use it to create a new container by specifying it as backup file (see [Setup Database Backup](../../containers/setup-bak.md)).

You can watch it step by step here:

<video width="1920px" height="1042px" controls>
  <source src="../../media/vsc-extension-backup-database.mp4" type="video/mp4">
  Your browser does not support the video tag.
</video>

---

---
    title: Convert .bacpac to .bak
    description: Convert .bacpac to .bak
---

# Convert .bacpac to .bak
  
[!INCLUDE [Convert .bacpac to .bak Intro](../includes/convert-bacpac-to-bak-intro.md)]

# [**Extension**](#tab/extension)

[!INCLUDE [Convert .bacpac to .bak Steps](../includes/convert-bacpac-to-bak-steps.md)]

# [**Legacy Extension**](#tab/legacy)

1. Upload the file to the Azure Fileshare directly in the root folder or in a subfolder (e.g in a subfolder "backups" and the name of the file is "database-backup.bacpac")
1. Go to an organization, project and repository of your choosing. The conversion is not actually connected to the repository, but the container will appear below that repository.
1. Do a right-click on the **Containers** item and select **convert bacpac to bak**
1. Enter the path to your `.bacpac` file on the Azure Fileshare (e.g. `/fileshare/backups/database-backup.bacpac` or `C:\azurefileshare\backups\database-backup.bacpac`)
1. Optionally enter a company name if you want to remove all companies except that one during the conversion
1. You will see a message that it might take a while to start, which is the case if the container image was never used on your backend
1. After it was pulled or immediately if it was already available, you will see a message that the container was created
1. In the container list, you will now see one called "Backup Converter". Do a right click on it and select **Open log**
1. You can ignore the first couple of lines until you see "SQL Server ready"
1. Wait until you can see in the log that the SQL server is stopped again. Note that the conversion will take a couple of minutes even for smaller databases and can take hours for medium or large databases
1. You will find a file with the same filename, but extension `.bak` in the same folder as the original `.bacpac` file
1. Delete the container

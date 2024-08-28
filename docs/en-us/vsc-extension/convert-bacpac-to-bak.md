---
    title: Convert a .bacpac backup file to a .bak backup file
    description: Convert a .bacpac backup file to a .bak backup file
---

# Convert a .bacpac backup file to a .bak backup file

If you have a .bacpac file, e.g. from an Azure SQL database and want to convert it to a .bak file, you can use this functionality. It will start a SQL Server container, restore the .bacpac file to a database and then create a .bak file from it. Currently the only supported way to get a .bacpac file into the service is to store in the Azure File Share connected to your backend.

To convert a .bacpac file, take these steps:

1. Upload the file to the Azure File Share directly in the root folder or in a subfolder. For this example, let's assume that you put it in a folder called "backups" and the name of the file is "database-backup.bacpac"
1. Go to an organization, project and repository of your chosing. The conversion is not actually connected to the repository, but the container will appear below that repository.
1. Do a right-click on the `containers` item and select "convert bacpac to bak"
1. Enter the path to your .bacpac file and hit enter
1. Optionally enter a company name if you want to remove all companies except that one during the conversion
1. You will see a message that it might take a while to start, which is the case if the container image was never used on your backend
1. After it was pulled or immediately if it was already available, you will see a message that the container was created
1. In the container list, you will now see one called "Backup Converter". Do a right click on it and select "Open log"
1. You can ignore the first couple of lines until you see "SQL Server ready"
1. Wait until you can see in the log that the SQL server is stopped again. Note that the conversion will take a couple of minutes even for smaller databases and can take hours for medium or large databases
1. You will find a file with the same filename, but extension .bak in the same folder as the original .bacpac file
1. Delete the container

You can see a walkthrough here:

<video width="1280px" height="720px" controls>
  <source src="../media/convert-bacpac-to-bak.mp4" type="video/mp4">
  Your browser does not support the video tag.
</video>

---
    title: Backup Database
    description: Backup Database
---

# Backup Database

Creating backups of your database is an essential part of managing your Business Central containers. The "Backup database" action allows you to create database backups that can be used for recovery or migration purposes.

To backup a container's database in Azure DevOps:

1. Right-click on the container whose database you want to backup
2. Select **Backup database**
3. Specify a backup location and name
4. The extension will create a backup file of the database

The backup will be saved in your specified location and can be used later to restore the database if needed.

> [!NOTE]
> Regular backups are recommended to protect against data loss. Consider setting up automated backup schedules for critical containers.

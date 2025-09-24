---
    title: Access SQL Server
    description: Access SQL Server
---

# Access SQL Server

## With remote VS Code

1. ["Open file share"](../vsc-extension/open-container.md) on your container
1. On first launch, choose "Windows" as platform in the VS Code Window if you're asked
1. In the new VS Code window, install the extension [SQL server (mssql)](https://marketplace.visualstudio.com/items?itemName=ms-mssql.mssql)
1. Use the SQL Server extension and run "MS SQL: Connect" to connect to localhost\SQLEXPRESS with container user and password
1. Run SQL queries:
![Run SQL Query](../media/scenarios/sql-query.png)

## With local Software

1. ["Open terminal"](../vsc-extension/open-container.md) on your container
1. Exit remote terminal and copy IP address
   ```pwsh
   PowerShell 7.4.6
   PS C:\Users\sshuser> exit
   Connection to <ip> closed.
   ```
1. Create SSH tunnel with a local shell *(e.g. PowerShell)*

   ```pwsh
   ssh -N -L "1433:127.0.0.1:1433" "sshuser@<ip>"
   ```

   > [!NOTE]
   > Closing the shell will stop the SSH tunnel

1. Connect to from any local software\
   *(e.g. VS Code extension [SQL server (mssql)](https://marketplace.visualstudio.com/items?itemName=ms-mssql.mssql) or [SQL Management Studio](https://learn.microsoft.com/de-de/ssms/sql-server-management-studio-ssms))*
   - Server = `127.0.0.1\SQLEXPRESS` 
   - Port = `1433`
   - Authorization = Container user and password

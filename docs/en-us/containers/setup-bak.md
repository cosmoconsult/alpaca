---
    title: Setup Database Backup
    description: Setup Database Backup
---

# Setup Database Backup

# [**GitHub (AL-Go)**](#tab/github)
WIP

# [**Azure DevOps**](#tab/azdevops)

A database backup can be setup for a container as [Container File-Share Artifact](#database-backup-from-container-file-share).

**Note:**

* You can specify more than one database backup, but only the first matching BAK-Artifact is used for your container. This depends on the specification of `"ignoreIn": [...]` in your artifact.
* To avoid importing huge database backups during the CI build use `"ignoreIn": ["build"]`.
* There are also limitations (e.g. database size max. 10GB) for databases in a container.

**See also:**

* [cosmo.json][cosmo-json]
* [Artifact][artifact]
* [Artifact Target][artifact-target]

## Database Backup from Container File-Share

**Prerequisites:**

You need write-access to the File-Share which is attached to your target Swarm-Environment were your container will be created. If you don't have that or don't know what that is, get in contact with the person in your region who is responsible for managing the self-service backend.

**Setup:**

1. Copy your database backup file to File-Share. One option to organize your folder structure could look like this, but if you have some other structure already in place in your organization, it also might be a good idea to use that:
   * demo database backups used by multiple projects: `<Share>/common/<demo>`
   * database backups related to a customer project: `<Share>/<customer-name>/<project-name>`
1. Add the Artifact to `artifacts` in your `.devops/cosmo.json` in your related project repository.

    For baks taken from a SaaS environment:

    ```json
        {
            // ...
            "artifacts": [
                {
                    "name": "Database Backup",                
                    "url": "C:\\azurefileshare\\customer-acme\\bc-implementation\\default.bak",
                    "target": "saasbak",
                    "ignoreIn": ["build"]
                }            
            ],
            // ...
        }
    ```

    For baks taken from an on-premises environment:

    ```json
        {
            // ...
            "artifacts": [
                {
                    "name": "Database Backup",                
                    "url": "C:\\azurefileshare\\customer-acme\\bc-implementation\\database.bak",
                    "target": "bak",
                    "ignoreIn": ["build"]
                }            
            ],
            // ...
        }
    ```

**Note:**

* You need to escape the folder separator `\` by using `\\` because the value must be a JSON-String.
* While the file share might be something like `v:\` on your machine, it is `c:\azurefileshare` inside of a container. That means that if you have e.g. a file `v:\customer\database.bak`, you need to reference it as `c:\\azurefileshare\\customer\\database.bak`.
* The **first** *(not ignored)* `saasbak` or `bak` Artifact is used as database backup file during container creation.

> **IMPORTANT**\
> All apps used in the backup file must be listed as `ipArtifacts` or `devopsArtifacts`. \
> Ensure that the exact app version used in the backup data is specified or automatically retrieved.
>
> In case you are unable to provide all apps (e.g. 3rd party apps or SaaS-only apps) you have the option to exclude them from the SaaS backup by using the following [custom script](setup-custom-scripts.md)
>
> 1. Follow the steps in [custom script](setup-custom-scripts.md) to enable custom scripts
> 1. Create the file `AdditionalSetup.ps1` in the `.container-my` directory
> 1. Add the following script to the file and adjust the apps as needed:
>
> ```powershell
> Write-Host "Setting apps to exclude from SaaS bak"
> $global:excludeAppsFromSaaSBak = @(
>     @{
>         Name   = "MyApp 1";
>         Id     = "abc12345-6789-4abc-def0-123456789abc";
>         Reason = "not available"
>     },
>     @{
>         Name   = "MyApp 2";
>         Id     = 'abc12345-6789-4abc-def0-123456789abc';
>         Reason = "not available"
>     }
> )
>
> . (Join-Path $runPath $MyInvocation.MyCommand.Name)
> ```
>
> (We may make this easier in the future, but for now, this is the way to go.)

### File-Share Artifact

|Element|Type||Value|
|-|-|-|-|
|`"name"`|string|optional|The name of the artifact.|
|`"url"`|string|**mandatory**|The path or url to download the database backup file.|
|`"target"`|string|**mandatory**|Must be `saasbak` or `bak` for database backup files.|
|`"ignoreIn"`|string[]|optional|Specify in which container setup this artifact should be ignored. The value is an array of: `dev` and/or `build`. *(see also [cosmo.json][cosmo-json])*|

---

[cosmo-json]:      setup-cosmo-json.md
[artifact]:        setup-cosmo-json.md#artifact
[artifact-target]: setup-cosmo-json.md#artifact-target

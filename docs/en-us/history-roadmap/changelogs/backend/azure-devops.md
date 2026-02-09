---
    title: Azure DevOps Backend Changelog
    description: Azure DevOps Backend Changelog
    orig-source: https://dev.azure.com/cc-ppi/Self-Service/_git/azdevops-automation?path=%2FCHANGELOG.md
---

# Azure DevOps Backend Changelog

All notable changes to the Azure DevOps Backend

## v1.54.0 (unreleased)

- Fix issue with unclear error messages for failed update of the DevOps repository on app creation [see #4650](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4650)

## v1.53.0 (2026-02-06)

- Add more details to cosmo.json schema validation errors [see #4639](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4639)
- Use dedicated PPI namespace for COSMO specific configurations [see #4645](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4645)

## v1.52.3 (2026-01-20)

- Update default queue name and add agent specification when creating release pipelines [see #4586](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4586)

## v1.52.2 (2025-12-10)

- Fix issue where downloading an ipArtifact did not work [see #4583](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4583)

## v1.52.1 (2025-10-13)

- Catch exception for insufficient permissions while creating a new app repository [see #4562](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4562)
  
## v1.52.0 (2025-10-13)
  
- Fix bug where the setting appImportScope was not inherited correctly [see #4497](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4497)
- Add support for BC27 project template [see #4504](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4504)

## v1.51.0 (2025-08-20)

- Update service endpoint name retrieval to support new format [see #4428](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4428)

## v1.50.0 (2025-08-18)

- Allow default namespace for trial [see #4434](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4434)

## v1.49.0 (2025-07-29)

- Allow customer-specific ipartifact configuration [see #4421](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4421)

## v1.48.2 (2025-07-28)

- Inherit previousRelease [see #4419](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4419)

## v1.48.0 - v1.48.1 (2025-07-17)

- Fix and improve artifacts inheritance and merging [see #4405](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4405)

## v1.47.1 (2025-07-10)

- Fix "dk" localization [see #4386](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4386)

## v1.47.0 (2025-07-10)

- Remove duplicate method descriptions on process controller [see #4403](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4403)
- Fix issue where the test apps were not correctly set when inheriting artifacts [see #4405](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4405)

## v1.46.0 (2025-07-08)

- Replace continuationToken if it already exists [see #4400](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4400)

## v1.45.1 (2025-07-02)

- Extended cosmo.json with configuration to enable/disable server file cache persistence for containers [see #4387](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4387)
- Fix "dk" localization [see #4386](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4386)

## v1.45.0 (2025-07-01)

- Add "da-dk" localization [see #4386](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4386)

## v1.44.0 (2025-06-25)

- Disable DevOps by default enabled PAT creation restriction policy on project creation/init [see #4381](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4381)

## v1.43.1 (2025-06-13)

- Suppress Azure CLI warnings regarding "pkg_resources" when downloading artifacts [see #4366](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4366)

## v1.43.0 (2025-06-10)

- Enhance application creation process to include handling for translation languages [see #4071](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4071)

## v1.42.1 (2025-05-21)

- Fix another issue where special characters and whitespaces were not correctly encoded for URLs [see #4345](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4345)
- Improve handling of exceptions during the execution of PowerShell scripts [see #4351](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4351)

## v1.42.0 (2025-05-19)

- Fix issue where special characters were not correctly encoded for URLs [see #4345](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4345)

## v1.41.0 (2025-05-14)

- Extended cosmo.json with configuration to enable/disable async mode for containers [see #4320](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4320)

## v1.40.0 (2025-05-08)

- Fix issue where Azure DevOps Advanced Security prevents automated commits when updating our DevOps templates [see #4337](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4337)

## v1.39.0 (2025-04-29)

- Fix inheritance of app artifacts and SyncMode and ImportScope [see #4254](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4254)
- Inherit app artifacts from the parent artifact to the bcartifact [see #4254](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4254)
- Improve logging for failed API calls [see #4312](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4312)
- Improve performance when retrieving artifacts from Azure FileShare IP artifact backend [see #4321](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4321)

## v1.38.0 (2025-04-16)

- Add error handling to the app creation process [see #4265](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4265)
- Update CreateInitScriptCall to customize the creation of app based on config-templates [see #4256](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4256)
- Pipeline error handling for existing pipelines (https://github.com/cosmoconsult/alpaca/issues/39)
- Enhance the properties 'AppImportSyncMode' and 'AppImportScope'  from the cosmo.json to be set per-artifacts [see #4254](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4254)
- Support BC26 [see #4302](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4302)

## v1.37.0 (2025-03-17)

- Support for extension deployment with schedule and schema sync mode [see #3030](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3030)

## v1.36.0 (2025-03-04)

- Populate backend URL for unresolved config as well (https://github.com/cosmoconsult/alpaca/issues/40)
- Improve assignment of a COSMO entity to an organization: assigning a new entity now removes/replaces the previous assignment [see #4233](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4233)

## v1.35.0 (2025-02-14)

- Remove GitHubApi Client [see #4220](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4220)
- Install AL Test runner when importTestApps=true [see #4227](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4227)

## v1.34.0 (2025-02-03)

- Stabilize Azure FileShare IP artifact backend to tolerate unexpected naming structure [see #4214](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4214)

## v1.33.0 (2025-01-27)

- Install BC25 Test Libraries and Test Apps as well when importTestLibraries or importTestApps set in cosmo.json [see #4197](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4197)
- Fix issue when re-applying a process customization containing custom/standalone work item types [see #4199](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4199)
- Return null for unset translation settings in cosmo.json [see #4170](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4170)
- Fix problem in COSMO entity resolution [see #4189](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4189)
- Extended cosmo.json with configuration to support dependencies for artifacts (e.g. "app" must be compiled and installed beforehand) [see #4198](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4198)
- Fix bug where the artifact download may return wrong artifact from cache [see #4205](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4205)

## v1.32.3 (2025-01-14)

- Fix issue in process customization LS-Extension MBPC V4 [see #4190](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4190)

## v1.32.2 (2025-01-13)

- Fix issue in process customization LS-Extension MBPC V4 [see #4190](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4190)
- Extend error logging when applying process customizations [see #4190](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4190)
- Add capability to update the properties "required" and "defaultValue" of existing fields in a process customization [see #4190](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4190)

## v1.32.1 (2025-01-09)

- Remove breaking change between process customizations LS-Extension V2 and LS-Extension MBPC V4 [see #4190](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4190)

## v1.32.0 (2025-01-08)

- Prevent empty repositories (with no default branch) from causing exceptions [see #4184](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4184)
- Add new DevOps process customization template: LS-Extension MBPC V4 [see #4190](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4190)

## v1.31.0

- Adjust health check to not fail in case Azure DevOps is unhealthy or unresponsive [see #4164](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4164)

## v1.30.0

- Improve stability of concurrent artifact downloads [see #4158](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4158)

## v1.29.0

- Add Branch property IsMineOrDefault (v0.12) [see #4153](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4153)
- Better handling of major/minor version for AzFS artifacts [see #4127](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4127)

## v1.28.0

- Ignore user cache when creating new projects [see #4148](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4148)

## v1.27.0 - v1.27.2

- Fix issue where missing COSMO entity configuration caused organizations to not load [see #4136](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4136)
- Further improve handling of errors from Azure CLI when downloading artifacts [see #4131](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4131)
- Replace individual OpenTelemetry components with Azure Application Insights [see #4133](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4133)

## v1.26.0

- Install COSMO Parrot extension per default for COSMO users [see #4132](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4132)

## v1.25.0

- Make secret detection in cosmo.json more robust [see #4121](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4121)
- Add endpoints to get cosmo.json for a git commit [see #4080](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4080)
- Refactored endpoints to get cosmo.json for v0.12
- Improve stability of artifact downloads [see #4131](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4131)

## v1.24.0

- Reworked setup of "codeCops" in cosmo.json as an array (v0.11: optional; v0.12: mandatory) [see #3918](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3918)
- Extended cosmo.json with configuration to support the usage of specific compiler versions [see #3788](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3788)

## v1.23.2

- Project creation error powershell error in linux environment

## v1.23.1

- Project creation send only error message if an error occured, not the whole output

## v1.23.0

- Add endpoints to get COSMO entities/offices from configuration and Sharepoint [see #4090](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4090)
- Update GitHub API Client [see #4093](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4093)
- Support BC25
- Add support to authenticate downstream APIs (Graph, Sharepoint) [see #4090](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4090)
- Add caching for organization users and graph groups [see #4090](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4090)

## v1.22.1

- Fix problem during project creation [see #4091](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4091)

## v1.22.0

- Add XML Swagger documentation, apply code formatting [see #4090](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4090)
- Extended cosmo.json with configurations to support tests of the translations [see #3703](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3703)
- Reworked setup of "translationLanguages" in cosmo.json as an array (v0.11: optional; v0.12: mandatory)
- Added validation for "translationLanguages" in cosmo.json (e.g. "de-DE")
- Add retries on failed artifact downloads through Azure CLI [see #4085](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4085)

## v1.21.0

- Add auth retry policies [see #4082](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4082)

## v1.20.3 - v1.20.6

- Fix issue where downloading artifacts may fail inconsistently [see #4085](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4085)

## v1.20.2

- Fix issue where invoking PowerShell returns old output [see #4084](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4084)

## v1.20.1

- Improve auth handler to retry on timeout [see #4082](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4082)

## v1.20.0

- Improve PowerShell execution [see #4081](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4081)
- Add logging to auth handler [see #4082](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4082)

## v1.19.0

- Override scope to full access for PATs requested by the PowerApp [see #4079](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4079)

## v1.18.5

- Override Authorization when downloading IP artifacts or packages from external feeds [see #4035](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4035)
- Parse the version of Azure Devops artifacts as semantic version [see #4035](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4035)

## v1.18.1 - v1.18.4

- Fix bug where downloading artifacts may fail inconsistently [see #4035](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4035)

## v1.18.0

- Improve artifact download and caching [see #4035](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4035)
- Add functions to retrieve latest version of an artifact (filtered for a given version with wildcard and for a given view) [see #4035](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4035)
- Add functions to retrieve latest version of an artifact (also for a given view) [see #4035](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4035)
- Accept GitHub token for authentification [see #4064](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4064)

## v1.17.0

- Release Pipelines: Remove "Stop Agent" TaskGroup as we no longer use it [see #4028](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4028)
- Fix bug where the mandatory branch "main" was missing for the DevOps repository [see #3994](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3994)
- Automatically update DevOps repository before creating an app [see #4032](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4032)
- Fix bug where an empty repository caused an error when creating an app or updating variables due to missing cosmo.json [see #4047](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4047)
- Improve logging for the DevOps organization admin check [see #4048](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4048)

## v1.16.0

- Also allow "master" as version for IP artifacts [see #3962](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3962)
- Fix a problem where not all users were returned for large organizations [see #3976](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3976)
- Enable classic release pipelines during project initialisation [see #3980](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3980)
- Extended cosmo.json with configurations to support translations of multiple languages [see #3704](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3704)
- Bring the tree handling logic of the azuredevops2word Word add-in to the backend [see #4005](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4005)
- Fix issue where determining the default branch broke the initial creation of the DevOps repository [see #4015](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4015)
- Fix issue where the project name (containing whitespaces) was not normalized correctly for the feed name [see #4015](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4015)
- Add new endpoints to get cosmo.json for a git tag [see #4020](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4020)

## v1.15.0

- Fix a problem where the validation of the current hour for a release gate failed because of wrong auth header [see #3955](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3955)

## v1.14.0

- move to .NET 8.0, rework telemetry implementation [see #3929](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3929)

## v1.13.0

- Respect the configured default branch for a project [see #3916](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3916)
- Fix a problem where project creation failed because of wrong auth header [see #3936](https://dev.azure.com/cc-ppi/General/_workitems/edit/3936)

## v1.12.2

- Fix bug where wrong Auth header was used when querying ipPackages via pipeline [see #3934](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3934)

## v1.12.1

- Fix bug where backend url was not set during project creation [see #3932](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3932)

## v1.12.0

- Restructure v12 controllers and services [see #3920](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3920)
- Support BC24 projects [see #3924](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3924)

## v1.11.1

- Fix a problem where IP Artifacts on an Azure File Share with multiple versions could not be correctly resolved [see #3896](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3896)

## v1.11.0

- Add new endpoint to validate whether the current hour is allowed for release/deployment (set up multiple schedules using gates) [see #3878](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3878)

## v1.10.0

- Allow pipeline configuration for automatic translation file generation [see #3817](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3817)
- Create main branch in DevOps repo if not exists, to keep combatibility with older projects [see #3866](https://dev.azure.com/cc-ppi/General/_workitems/edit/3866)

## v1.9.0

- Updates to "COSMO DevOps Template" [see #3855](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3855)

## v1.8.0

- Make "COSMO DevOps Template" available for COSMO West [see #3855](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3855)

## v1.7.1

- Faulty ip feed configuration could lead to crashing azdevops-automation [see #3796](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3796)
- Optimize resolved cosmo.json size by removing unresolved configs [see #3815](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3815)

## v1.7.0

- New customization for DevOps [see #3793](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3793)

## v1.6.2

- Allow projects with blanks in the name via API by replacing the blanks with hyphens [see #3725](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3725)
- Make AzFS IP artifact backend less verbose [see #3726](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3726)
- Only show artifact versions in a view [see #3727](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3727)

## v1.6.0

- Install AL Code Highlighter and COSMO Loop (COSMO only) for new projects [see #3666](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3666)
- Hide/Ignore disabled repositories [see #756](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/756)
- Fix regular expression for matching devops artifact versions [see #3694](https://dev.azure.com/cc-ppi/General/_workitems/edit/3694)
- Fix parameters for pull request id for power apps with v0.11 [see #3648](https://dev.azure.com/cc-ppi/General/_workitems/edit/3648)
- Support BC23 Project Template [see #3676](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3676)

## v1.5.2

- Fix sorting of artifacts in AzFS backend (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3474 and https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3631)
- Fix send pullRequestId instead of parameters for power app [see #3272](https://dev.azure.com/cc-ppi/General/_workitems/edit/3272)
- Fix check for 404 to statuscode instead of string [see #3596](https://dev.azure.com/cc-ppi/General/_workitems/edit/3596)
- Fix error in CreateApp when agent pool is missing [see #3615](https://dev.azure.com/cc-ppi/General/_workitems/edit/3615)
- Fix ignoreIn for devops artifacts is not working [see #3627](https://dev.azure.com/cc-ppi/General/_workitems/edit/3627)

## v1.5.1

- Add endpoint for validation container config against schema [see #3519](https://dev.azure.com/cc-ppi/General/_workitems/edit/3519)

## v1.5.0

- Fix demo container functionality [see #3473](https://dev.azure.com/cc-ppi/General/_workitems/edit/3473)

## v1.4.0

- Don't install ALOps on project creation [see #3447](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3447)
- Enable post for repository pullrequests endpoint [see #3458](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3458)

## v1.3.3

- Fix process customization on k8s [see #3440](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3440)

## v1.3.2

- Fix resolving single variables in cosmo.json and variables containing dots [see #3367](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3367)

## v1.3.1

- Implement versioning for comso.json [see #3105](https://dev.azure.com/cc-ppi/General/_workitems/edit/3105)

## v1.3.0

- Ignore audience logs [see #3126](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3126)

## v1.2.1

- Fix license handling in pipelines [see #3238](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3238)

## v1.2.0

- Improve permission assignment of build service user during project and app creation [see #3295](https://dev.azure.com/cc-ppi/General/_workitems/edit/3295)

## v1.1.0

- Separate app registrations [see #3126](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3126)

## v1.0.0

- Support authentication via App registration [see #3126](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3126)

## v0.11.57.1

- fix http 500 "Config: 'cosmo.json' not found!" [see #3238](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3238)

## v0.11.57

- Respect DefaultStartupfileBranch if configured in k8s as well [see #3113](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3113)
- Fix file paths for Azure File Share IP artifacts [see #3143](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3143)
- Support shared customer cluster scenarios [see #2995](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2995)

## v0.11.56

- Move to different registry

## v0.11.55

- If there are multiple versions of an extension in the same folder in the AzFS ip package backend, only the latest is shown [see #3020](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3020)

## v0.11.54

- Fix a typo in a test app name [see #2885](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2885)
- Fix Http 500 issue in `ContainerConfigController` during load of configurations, caused by a config have invalid artifacts [see #2890](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2890)
- Make the backend for creating bug reports and feature request configurable [see #2938](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2938)
- Allow the deployment of arbitrary build artifacts to arbitrary containers [see #2968](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2968)
- Fix potential blank in feed name and check Build Service user permission before trying to set [see #2969](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2969)

## v0.11.53

- Support for access by additional users, e.g. freelancers working for COSMO [see #2855](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2855)

## v0.11.52

- GitHub rate limit shouldn't stop containers from starting [see #2745](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2745)
- Improved logging [see #2746](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2746)
- Add devcontainer support [see #2850](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2850)
- Support for opt-in AD guest support [see #2855](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2855)

## v0.11.51

- Fixed: Circularity check didn't work correctly in ProcessMap import. [see #2710](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2710)

## v0.11.50

- Compressing special fields for Power App compatibility added. [see #2710](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2710)

## v0.11.49

- Response Json fixed for Process Map Import, additional error details added. [see #2710](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2710)

## v0.11.48

- Improved error handling for Process Map Import [see #2710](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2710)

## v0.11.47

- Process map export added, to import an existing backlog into a new project [see #2710](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2710)
- Process map import improved to support additional custom fields [see #2710](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2710)

## v0.11.46

- Also respect IgnoreIn for AzFileShare ipArtifacts [see #2670](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2670)
- Return the author of a branch in the same way as the Azure DevOps web UI does [see #2695](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2695)
- Special handling for IP artifacts from master: Only show latest, add reference with wildcard [see #2699](https://dev.azure.com/cc-ppi/General/_workitems/edit/2699)

## v0.11.45

- Add new LS process customization [see #2424](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2424)
- Support repositories with cosmo.json files in subfolders [see #2528](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2528)
- make new LS process customization available to additional entities: international, schweden and france [see #2424](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2424)

## v0.11.44

- Support BC22 [see #2581](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2581)

# v0.11.43

- Added base package to startup packages [see #2458](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2458)
- Allow to generate a cosmo.json file without creating a full app package [see #2381](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2381)

# v0.11.42

- Fix issue where the demo container configs could be retrieved [see #2449](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2449)

# v0.11.41

- Evaluate version from artifact after download for file cache. [see #2395](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2395)
- Add endpoints to retrieve and create user in org by principalName [see #2304](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2304)
- Allow retrieval of a configurable list of configs / secrets; disable anonymous access [see #2401](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2401)
- Added "misc" to startup packages to prepare replacement of BCContainerHelper [see #1791](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/1791)

# v0.11.40

- Add download feature for downloading ipPackages [see #1725](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/1725)
- Add setting to switch back to .net framework compiler [see #2287](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2287)
- Allow loading favorite organizations only [see #1067](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/1067)
- Support Azure File Share as additional backend for IP packages [see #2217](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2217)
- Make process customization template available for user stories instead of tasks [see #2142](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2142)
- Support retrieving org admin status from dedicated endpoint [see #1067](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/1067)
- Support configuration for publishing SwaggerUI for BC APIs [see #2315](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2315)
- Add config option bcVersionDirectory for selecting correct version of BC management libraries [see #2306](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2306)

# v0.11.39

- Make process customization available for DEHAM_SI and ATSTE_SI as well [see #2142](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2142)
- Release-Pipeline Template Problem fixed [see #2027](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2027)
- Fixed: Telemetry Controller did not forward the received content correctly to its endpoint
- Define a simple mechanism to allow for custom startup scripts per Swarm [see #2194](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2194)
- Add support for companion containers, i.e. non-BC containers connected to a "main" BC container [see #1970](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/1970)
- Download library method added, to provide the D365BC powershell library for deployment tasks. [see #2137](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2137)
- Extend process customizations [see #2202](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2202)
- Define a simple mechanism to trigger different behavior for custom startup scripts per Swarm [see #2194](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2194)

# v0.11.38

- Fix bug where release pipelines we're not able to run with old templates [see #2134](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2134)

# v0.11.37

- Make IP Packages more stable (https://dev.azure.com/cc-ppi/Self-Service/_boards/board/t/Self-Service%20Team/Stories/?workitem=2091)

# v0.11.36

- Fix bug where new apps couldn't be created [see #2062](https://dev.azure.com/cc-ppi/General/_workitems/edit/2062)

# v0.11.35

- Support Azure AD authentication for containers in the self-service [see #1775](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/1775)
- New `telemetry` controller added to collect pipeline telemetry from server jobs [see #1871](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/1871)
- New endpoint for retrieving pipeline license [see #2045](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2045)

# v0.11.34

- Add variable to cosmo.json to enable detailed test output in Build Pipeline [see #1853](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/1853)

# v0.11.33

- Support generation of all-orgs PATs in addition to org-specific PATs [see #720](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/720)
- Added health check API endpoint [see #1916](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/1916)
- Add compiler startup scripts for build containers [see #1847](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/1847)

# v0.11.32

- Fixed default value of enableSymbolLoading, set to true [see #1766](https://dev.azure.com/cc-ppi/General/_workitems/edit/1766)
- Fix bug where ALOps variables were not added to the var group when creating a new project [see #1826](https://dev.azure.com/cc-ppi/General/_workitems/edit/1826)
- Support ipArtifacts Aditonal to cosmoArtifact [see #1752](https://dev.azure.com/cc-ppi/General/_workitems/edit/1752)
- Add health scripts to build startup package [see #1869](https://dev.azure.com/cc-ppi/General/_workitems/edit/1869)
- Move to latest build agent image to make updates easier [see #1800](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/1800)

# v0.11.31

- Add function for retrieving the minimum version of an app in the IP Feed [see #943](https://dev.azure.com/cc-ppi/General/_workitems/edit/943)
- Improved error handling for missing CI variable group (esp. during App-Creation) [see #1757](https://dev.azure.com/cc-ppi/General/_workitems/edit/1757)

# v0.11.30

- Make customizations of DEMUE_GMBH available for DEBER_LS as well [see #1722](https://dev.azure.com/cc-ppi/General/_workitems/edit/1722)
- Suppress configurable errors or warnings during logging. The suppressed message are then logged as information. [see #1730](https://dev.azure.com/cc-ppi/General/_workitems/edit/1730)
- Fixed a problem when getting Artifacts from IP Feed [see #1749](https://dev.azure.com/cc-ppi/General/_workitems/edit/1749)

# v0.11.29.3

- Fixed a problem with artifact downloads. [see #1685](https://dev.azure.com/cc-ppi/General/_workitems/edit/1685)

# v0.11.29.2

- Error handling improved during get organization call for group membership check. [see #1675](https://dev.azure.com/cc-ppi/General/_workitems/edit/1675)

# v0.11.29.1

- Fix a problem where devopsArtifacts in cosmo.json were ignored if there also were cosmoArtifacts [see #1668](https://dev.azure.com/cc-ppi/General/_workitems/edit/1668)

# v0.11.29

- Support to set up arbitrary customNavSettings and customWebSettings in cosmo.json [see #1142](https://dev.azure.com/cc-ppi/General/_workitems/edit/1142)
- Add PackingController for querying regular package feeds and IP feeds [see #1571](https://dev.azure.com/cc-ppi/General/_workitems/edit/1571)
- Add additional relation information (e.g. hyperlinks) during process map import (https://dev.azure.com/cc-ppi/DigiCheck%20E2E/_workitems/edit/1596)
- Do not set BC version in product templates (https://dev.azure.com/cc-ppi/DigiCheck%20E2E/_workitems/edit/1576)
- Clean up code [see #1632](https://dev.azure.com/cc-ppi/General/_workitems/edit/1632)
- Handle continuation token when getting graph groups [see #1578](https://dev.azure.com/cc-ppi/General/_workitems/edit/1578)

# v0.11.28

- Extend "Doc Handling" process customization to also include documentation tab for Tasks [see #1455](https://dev.azure.com/cc-ppi/General/_workitems/edit/1455)
- Fixed: Release Pipelines with wrong Agent Demand [see #1481](https://dev.azure.com/cc-ppi/General/_workitems/edit/1481)
- Extend container config by all properties defined in the pipeline mappings [see #1507](https://dev.azure.com/cc-ppi/General/_workitems/edit/1507)
- Add retrieving resolved and unresolved cosmo.json for pull requests [see #1503](https://dev.azure.com/cc-ppi/General/_workitems/edit/1503)

# v0.11.27

- Add some checks when creating new apps [see #772](https://dev.azure.com/cc-ppi/General/_workitems/edit/772)
- Support special chars in bug reports and feature requests [see #1424](https://dev.azure.com/cc-ppi/General/_workitems/edit/1424)
- Support BC19 and BC20 [see #1399](https://dev.azure.com/cc-ppi/General/_workitems/edit/1399)
- Introduce new field "ArtifactName" for output artifact in COSMO.json [see #1345](https://dev.azure.com/cc-ppi/General/_workitems/edit/1345)
- New structure "additionalDeploymentFeeds" introduced for product development in COSMO.json. This array will provide additional deployment feed information for the primary output artifact during build. [see #1345](https://dev.azure.com/cc-ppi/General/_workitems/edit/1345)
- Fix a problem where cosmoArtifacts couldn't be correctly loaded if the were defined as children of bcArtifacts [see #1450](https://dev.azure.com/cc-ppi/General/_workitems/edit/1450)

# v0.11.26.3

- Add owner and better description to process modifications [see #1359](https://dev.azure.com/cc-ppi/General/_workitems/edit/1359)

# v0.11.26.2

- Fixed problem during release pipeline creation for OnPrem [see #1362](https://dev.azure.com/cc-ppi/General/_workitems/edit/1362)

# v0.11.26.1

- Add missing parameter enablePremium [see #1312](https://dev.azure.com/cc-ppi/General/_workitems/edit/1312)
- Add method to get configured backend URL [see #1311](https://dev.azure.com/cc-ppi/General/_workitems/edit/1311)

# v0.11.26

- Verify user has access level Basic or Visual Studio Subscriber when creating or onboarding a project [see #380](https://dev.azure.com/cc-ppi/General/_workitems/edit/380)
- Fix bug where the default repository is not deleted when creating a new project [see #1083](https://dev.azure.com/cc-ppi/General/_workitems/edit/1083)
- Fix bug where IncludeProjects in GetOrganizations call caused and HTTP 500, because of missing permissions in organization projects [see #1130](https://dev.azure.com/cc-ppi/General/_workitems/edit/1130)
- Added Package to enable Performance Counters, for better monitoring. The counters are enabled per default [see #422](https://dev.azure.com/cc-ppi/General/_workitems/edit/422)
- Fix parameter enablePremium is not used for build containers [see #1134](https://dev.azure.com/cc-ppi/General/_workitems/edit/1134)
- Allow project customizations to install extensions, modify board swimlanes and reference groups in WorkItem rules [see #916](https://dev.azure.com/cc-ppi/General/_workitems/edit/916)
- Only return branches but no tags when retrieving the branch list of a repo [see #1169](https://dev.azure.com/cc-ppi/General/_workitems/edit/1169)
- Switch dockerSwarmUrl from library variable to service connection to allow server jobs for agent startup [see #420](https://dev.azure.com/cc-ppi/General/_workitems/edit/420)
- Fix the path where the release pipeline is looking for the app file [see #1200](https://dev.azure.com/cc-ppi/General/_workitems/edit/1200)
- Add project template support for product management. [see #1103](https://dev.azure.com/cc-ppi/General/_workitems/edit/1103)
- Import process map into Azure DevOps backlog. (https://dev.azure.com/cc-ppi/DigiCheck%20E2E/_workitems/edit/1229)
- Wrong URL path encoding corrected in Configuration Controller & Repository Controller [see #1230](https://dev.azure.com/cc-ppi/General/_workitems/edit/1230)
- Fix bug where included variables in cosmo.json wasn't resolved in get configuration methods from ContainerConfigController. [see #1183](https://dev.azure.com/cc-ppi/General/_workitems/edit/1183)
- Allow to easily define COSMO IP artifacts as dependency in a container [see #1034](https://dev.azure.com/cc-ppi/General/_workitems/edit/1034)
- Support artifact download if version contains wildcard [see #1241](https://dev.azure.com/cc-ppi/General/_workitems/edit/1241)
- Support lang subcodes when creating new apps [see #1285](https://dev.azure.com/cc-ppi/General/_workitems/edit/1285)
- Variable `Endpoint.{Stage}` added for release pipeline `Deploy and Promote - ALOps Extension API (OnPrem)` [see #1247](https://dev.azure.com/cc-ppi/General/_workitems/edit/1247)
- Improved error handling for release pipeline creation, to avoid HTTP500, when a release pipeline with the same name exist. [see #999](https://dev.azure.com/cc-ppi/General/_workitems/edit/999)
- Create Release Pipelines with Agentless Jobs for Start / Stop COSMO Self Hosted Agent to run the deployment tasks. [see #1248](https://dev.azure.com/cc-ppi/General/_workitems/edit/1248)

# v0.11.25

- Fix encoding problem if a branch name contains special characters like # [see #1017](https://dev.azure.com/cc-ppi/General/_workitems/edit/1017)
- Get template text for bug reports from Azure DevOps template instead of having it in the sources [see #1046](https://dev.azure.com/cc-ppi/General/_workitems/edit/1046)

# v0.11.24

- Better templates for bug reports to avoid the need to ask a lot of questions for new reports [see #1010](https://dev.azure.com/cc-ppi/General/_workitems/edit/1010)

# v0.11.23

- Add reverse lookup for getting entity AD code from Swarm URL
- Fix sort order for queries so that they are identical to the original query [see #925](https://dev.azure.com/cc-ppi/General/_workitems/edit/925)
- Fix bug which prevented the Azure KeyVault configuration provider to refresh secret values [see #983](https://dev.azure.com/cc-ppi/General/_workitems/edit/983)
- Fix missing pipeline access to DevOps repo to allow using scripts from there [see #1024](https://dev.azure.com/cc-ppi/General/_workitems/edit/1024)

# v0.11.22.1

- Fix bug where updating variables didn't work stable [see #955](https://dev.azure.com/cc-ppi/General/_workitems/edit/955)

# v0.11.22

- New Action QueueBuild to start a build for specific Pipeline [see #570](https://dev.azure.com/cc-ppi/General/_workitems/edit/570)
- Resolve secrets when creating release pipelines [see #75](https://dev.azure.com/cc-ppi/General/_workitems/edit/75)
- Add exponential retry in case of transient HTTP errors to all HTTP calls [see #613](https://dev.azure.com/cc-ppi/General/_workitems/edit/613)
- Resolve secrets in backend when creating a new pipeline [see #736](https://dev.azure.com/cc-ppi/General/_workitems/edit/736)
- Get configuration from cosmo.json failed for projects / repositories with incorrect devops artifact configuration [see #923](https://dev.azure.com/cc-ppi/General/_workitems/edit/923)
- Allow to onboard existing projects to the self-service [see #610](https://dev.azure.com/cc-ppi/General/_workitems/edit/610)
- Support optionally enabling premium SKU for the default user [see #727](https://dev.azure.com/cc-ppi/General/_workitems/edit/727)

# v0.11.21

- New Controller `ConfigLookup` to get arbitrary config settings anonymously if white-listed in the configuration [see #788](https://dev.azure.com/cc-ppi/General/_workitems/edit/788)

# v0.11.20

- New controller `SwarmUrlLookup` to get the URL of the Swarm based on the entity code [see #762](https://dev.azure.com/cc-ppi/General/_workitems/edit/762)
- Handle entities differently for Non-COSMO users [see #718](https://dev.azure.com/cc-ppi/General/_workitems/edit/718)
- Allow configuring valid domains for authenticating against the API [see #699](https://dev.azure.com/cc-ppi/General/_workitems/edit/699)
- Disable AppInsights [see #713](https://dev.azure.com/cc-ppi/General/_workitems/edit/713)
- Enable process modifications for external users [see #700](https://dev.azure.com/cc-ppi/General/_workitems/edit/700)
- Add add next-major/minor pipeline added at App controller [see #736](https://dev.azure.com/cc-ppi/General/_workitems/edit/736)
- Move to tenant ID for determining if a user is a Cosmonaut and support COSMO guest users in different ADs [see #759](https://dev.azure.com/cc-ppi/General/_workitems/edit/759)
- Fix a NullReference Exception add with next-major/minor pipeline added at App controller [see #736](https://dev.azure.com/cc-ppi/General/_workitems/edit/736)
- Move secret resolving to backend, allow retrieving secrets from KeyVault [see #762](https://dev.azure.com/cc-ppi/General/_workitems/edit/762)
- Add exponential retry to WorkItem import [see #764](https://dev.azure.com/cc-ppi/General/_workitems/edit/764)
- Restrict access to COSMO-internal Swarm backends to Cosmonauts from any valid tenant [see #770](https://dev.azure.com/cc-ppi/General/_workitems/edit/770)
- Allow updating license variables in variable group of a project [see #762](https://dev.azure.com/cc-ppi/General/_workitems/edit/762)
- Retrieve SAS token in backend when updating CI/CD repository [see #762](https://dev.azure.com/cc-ppi/General/_workitems/edit/762)
- Add method to get the cosmo.json from a repository with all variables resolved [see #762](https://dev.azure.com/cc-ppi/General/_workitems/edit/762)
- Retrieve KeyVault secrets in backend when creating a project [see #762](https://dev.azure.com/cc-ppi/General/_workitems/edit/762)
- Additional stage specific variable `ServerInstance`added for release pipeline creation [see #762](https://dev.azure.com/cc-ppi/General/_workitems/edit/762)
- Retrieve KeyVault secrets in backend when updating task group templates [see #789](https://dev.azure.com/cc-ppi/General/_workitems/edit/789)
- Add missing variables to variable group when creating a new app [see #852](https://dev.azure.com/cc-ppi/General/_workitems/edit/852)
- Allow to create BC18 projects [see #876](https://dev.azure.com/cc-ppi/General/_workitems/edit/876)

# v0.11.19

- New controller `TaskAgentController` added to import Task group templates for setup of Release Pipelines
- New controller `ReleaseController` added to setup Release Pipelines for Apps

# v0.11.18.1

- Fix a bug where the `dockerParamsForBuild` within the `cosmo.json` were'nt correctly escaped on app creation [see #668](https://dev.azure.com/cc-ppi/General/_workitems/edit/668)

# v0.11.18

- Artifact information included in Pull Request Builds, when query parameter **`includeArtifacts=true`** ***(Default is `false`)*** is added.
  
  *Example:*
  `/repository/{{organization}}/{{project}}/{{repositoryId}}/builds?resultFilter={{resultFilter}}&statusFilter={{statusFilter}}&includeArtifacts={{includeArtifacts}}`
- Filter fixed in ContainerConfigs for repository.
- Optional query parameter `repository` added to filter the results from ContainerConfigs for project.
- Missing property `description` added to `ContainerConfig`
- New controller added to provide Base64 encoding functionality.

# v0.11.17.1

- Build Parameters of Repository Builds are now returned as dictionary instead of JSON-String.

# v0.11.17

- New controller added to provide ContainerConfigs from repositories.

# v0.11.16.4

- Make CRM Base Enablement process modification also available for Dresden and Berlin

# v0.11.16.3

- Make sure we don't try to create a project with the same name as the organization as this will lead to a name clash [see #596](https://dev.azure.com/cc-ppi/General/_workitems/edit/596)

# v0.11.16.2

- Move repo to Azure DevOps and Image to `cosmoconsult` Docker Hub org

# v0.11.16.1

- Fix bug with variable resolution where the variable group name wasn't correctly resolved [see #594](https://dev.azure.com/cc-ppi/General/_workitems/edit/594)

# v0.11.16

- Allow to create a feature request in the CC-PPI/General team
- GET ciVariableGroups call added for Self Service PowerApp. This provides a list of all Variable Groups

# v0.11.15

- GET Organizations call to improved for Self Service PowerApp.
  - Optional parameter `includeProjects` for GET Organizations to include the project information (default is `false`)

# v0.11.14

- Add feature for custom-scripts to startup package [see #62](https://dev.azure.com/cc-ppi/General/_workitems/edit/62)

# v0.11.13

- Add feature for database persistence to startup package

# v0.11.12

- Allow reading queries and executing queries by id [see #108](https://dev.azure.com/cc-ppi/General/_workitems/edit/108)
- Add functionality to create a branch and link it to a work item (https://dev.azure.com/cc-ppi/General/_workitems/edit/504 / [documentation](https://docs.cosmoconsult.com/en-us/cloud-service/devops-docker-selfservice/vsc-extension/branches.html#create-a-branch-to-work-on-a-work-item))

# v0.11.11.3

- Additional trial users

# v0.11.11.2

- Additional trial user

# v0.11.11.1

- Additional trial user

# v0.11.11

- Add a workaround for entity-handling for Non-COSMO users [see #482](https://dev.azure.com/cc-ppi/General/_workitems/edit/482)
- Allow access for Non-COSMO users, in the first for a trial phase [see #481](https://dev.azure.com/cc-ppi/General/_workitems/edit/481)

# v0.11.10

- Add process modification config to add "Due Date" to User Story, Task and Feature for DEMUE_GMBH

# v0.11.9

- `Repository` controller provides now *PullRequest* information for repositories (list / byId) [see #444](https://dev.azure.com/cc-ppi/General/_workitems/edit/444)
- `Repository` controller provides now *BuildDefinition* information for repositories [see #444](https://dev.azure.com/cc-ppi/General/_workitems/edit/444)
- `Repository` controller provides now *Build* information for repositories [see #444](https://dev.azure.com/cc-ppi/General/_workitems/edit/444)
- Ensure default team settings before applying a customization, because otherwise the customization might fail
- Allow modifying limit for in-progress workitems for existing board columns

# v0.11.8.1 / 0.11.8.2

- Fix erros in pushing to wrong branch and typos

# v0.11.8

- Automatically move the project where process modifications are applied to the newly created process definition
- Fix a problem where a group in the layout was created again although it already existed.
- Add process modifications for CRM [see #281](https://dev.azure.com/cc-ppi/General/_workitems/edit/281)

# v0.11.7.1

- The call to get the User (https://github.com/tfenster/azdevops-automation/blob/a9f47cc9d93c4da392d5049e471860007320c433/core/Auth/CustomAuthenticationHandler.cs#L222) without an org only works with "all orgs" enabled PATs and we can't create those through the API. Therefore PATValidationProject had to be re-enabled to fix [this bug](https://dev.azure.com/cc-ppi/General/_workitems/edit/432)

# v0.11.7

- Add action to get branches (needed for [this](https://docs.cosmoconsult.com/en-us/cloud-service/devops-docker-selfservice/vsc-extension/branches.html))
- Fix bug that prevented PAT-based authentication to work when calling GET Organization

# v0.11.6

- Remove requirement for PATValidationProject: Instead of setting a PATValidationProject query param, most of the time the org can be deduced from the user. If not, a Header "Collection-URI" is used
- Add AgentController to handle add and delete of agents, necessary for starting agents in server jobs ([documentation](https://dev.azure.com/cc-ppi/General/_workitems/edit/405))
- Process modification improvements ([documentation](https://dev.azure.com/cc-ppi/General/_workitems/edit/281))

---
    title: Azure DevOps Pipeline Templates Changelog
    description: Azure DevOps Pipeline Templates Changelog
    orig-source: https://dev.azure.com/cc-ppi/Self-Service/_git/Templates-DevOps-D365BC?path=%2Fchangelog.md
---

# Azure DevOps Pipeline Templates Changelog

All notable changes to the Azure DevOps Pipeline Templates

## v2.45.0 (2025-12-23)

- Replace legacy ppi-devops host for additional folders to maintain backward compatibility [see #4608](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4608)

## v2.44.0 (2025-12-18)

- Refactor checkout steps for improved performance [see #4570](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4570)
- Use Latest Windows instead of "Hosted Windows 2019 with VS2019" for Microsoft Hosted Agents [due to deprecation](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/hosted?view=azure-devops&tabs=windows-images%2Cyaml#windows-server-2019-hosted-image-deprecation-schedule) [see #4586](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4586)

## v2.43.0 (2025-12-09)

- Add Page Scripting Tests support [see #4564](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4564)

## v2.42.2 (2025-11-06)

- Fix issue where NuGet PackageProvider could not be installed on some OnPrem systems [see #4535](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4535)

## v2.42.1 (2025-11-05)

- Fix issue where PipelineStepPath parameter was not set (e.g. for localization pipeline) [see #4530](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4530)

## v2.42.0 (2025-10-31)

- Remove dependency on DevOps extension Generic Connection Viewer + Service Connection [see #4446](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4446)

## v2.41.1 (2025-10-21)

- Fix issue with nullable IgnoreIn in the CustomNavSettings. [see #4509](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4509)
- Mock Invoke-WebRequest in Context "Test Invoking Rest API", removing pipedream URLs

## v2.41.0 (2025-10-07)

- Add pipeline parameter for additional parallel build jobs [see #4501](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4501)
- Fix issue with AL compiler not able to load LinterCop [see #4499](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4499)

## v2.40.0 (2025-09-25)

- Add support for different agent images (with/without node.js) [see #4450](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4450)
- Moved hook "OnAfterPublishApp" before step to publish apps depending on app
- Updated Azure SignTool to v6 [see #4479](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4479)

## v2.39.3 (2025-09-19)

- Fix issue with custom NuGet feeds [see #4473](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4473)

## v2.39.2 (2025-09-17)

- Fix issue with runtime package naming [see #4471](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4471)

## v2.39.1 (2025-09-08)

- Fix issue for including external rulesets in local rulesets [see #4456](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4456)

## v2.39.0 (2025-08-20)

- Use Build.TimeoutInMinutes for start agent [see #4435](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4435)

## v2.38.0 (2025-08-06)

- Fix issue with download of dependencies with an empty AppId [see #4414](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4414)

## v2.37.0 (2025-07-28)

- Fix missing artifact inheritance in the cosmo.json [see #4254](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4254)

## v2.36.0 (2025-07-28)

- Only do a shallow fetch when getting repositories [see #4417](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4417)
- Optionally retry applicable API calls after a timeout [see #4416](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4416)
- Identify dependencies through AppId instead of name [see #4414](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4414)
- Improve resolution and minimum version check of dependencies [see #4367](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4367)
- Add support to enable/disable server file cache persistence for containers [see #4387](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4387)

## v2.35.0 (2025-06-25)

- Fix issue where the build number is taken from the Test-App's app.json instead of from the App's app.json when using "setBuildIdInManifestOn" [see #4380](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4380)

## v2.33.0 - v2.34.0 (2025-06-03)

- Add 'Template Catalog' pipeline to available extended pipelines for product template [see #4361](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4361/)

## v2.32.0 (2025-06-02)

- Add support for deployment with PowerShell Core [see #4350](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4350/)

## v2.31.0 (2025-05-14)

- Add support to enable/disable async mode for containers [see #4320](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4320)

## v2.30.0 (2025-05-07)

- Load common analyzer DLL before Microsoft analyzers [see #4334](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4334)

## v2.29.0

- Fix issue where the build name would differ from the app version when using "setBuildIdInManifestOn" [see #4304](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4304)
- Improve app import scope and sync mode handling for build pipeline [see #4254](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4254/)
- Add support for artifact inheritance in the cosmo.json [see #4254](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4254/)
- Fix issue where running the tests could fail for the localization check of the build pipeline [see #4316](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4316)

## v2.28.0

- Fix issue where the test app could faild to publish for the localization check of the build pipeline [see #4295](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4295)
- Support for artifacts dependent on the app in the build pipeline [see #4198](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4198/)

## v2.27.0

- Improved error handling for extension deployment [see #4279](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4279)

## v2.26.0

- Support for extension deployment with schedule and schema sync mode [see #3030](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3030)
- Fix issue where the package version did not match the first three segments of the app version [see #4257](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4257)
- Support for custom nuget feeds [see #4268](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4268/)

## v2.25.0

- Improved error handling for the startup of build containers [see #4225](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4225)

## v2.24.0

- Add further publishers to Pipelines and add/extract 2 functions:
  - add `Backup-DatabaseToAzureFileShare` which can be used to store the .bak file of the container on Azure FileShare
  - extract function `Get-AzureFoldernameOnFileshare` which is now used in `Backup-DatabaseToAzureFileShare` and `Publish-ToAzureFileShare`.
- Add variable `Compile.AssemblyProbingPaths` to overrule the assemblyProbingPaths.
- Do not add directory path to appManifestFile-value if it is specified in cosmo.json

## v2.23.0

- Make the timeout of agents configurable, because if the generated AccessToken is timed out, the agent shuts down and aborts the pipeline runs
- Fix issue where pipeline runs can hangup on publishing App (with errors) for BC25+
- Introduce parameter `CreateRelease`. When it is set, an artifact will be created.
- Introduced variable `Docker.NoOfTailEntriesToRead`. With this the number of logs read in the `Wait on Container`-task can be changed. Default is `5000`.
- Add Docker.KeepAliveOnTestError variable
- Introduced variable `Docker.KeepAliveOnTestError`. With this containers can be kept alive only if there are test errors.
- Introduced variable `Docker.WaitForContainerTimeoutInSec`. With this there can be set a timeout if e.g. the loading of the cosmo.json takes too long.

## v2.22.0

- Fix issue where pipeline runs always fetch the cosmo.json of the latest commit from a branch [see #4080](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4080)
- Minor fix in uploading files to an Azure File Share as retention policy was not always working.
- Fix issue where pipeline runs for BC26 (and higher) throw an UnhandledException-Error when running the tests [see #4150](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4150)

## v2.21.0

- Support for tests of generated translations [see #3703](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3703)
- Support for using other versions of the AL compiler (specific, latest, prerelease) [see #3788](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3788)
- Support for using other code analyzers with the AL compiler (specific file or url) [see #3918](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3918)
- Support for using LinterCop as a code analyzer with the AL compiler [see #3918](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3918)
- Improved performance of downloads

## v2.20.0

- Improve logging of API exceptions [see #4066](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4066)

## v2.19.1 - v2.19.2

- Improve logging of errors during the Data Upgrade of an App [see #4061](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4061)

## v2.19.0

- Fix issue where errors during the Data Upgrade of an App were not correctly caught [see #4061](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4061)

## v2.18.0

- Fix issue where the branch name was not correctly passed to the build conainer, causing custom scripts to not work as expected [see #4054](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4054)

## v2.17.0

- Fix issue where pipelines with spaces and other special characters in their names *(e.g. `Next Minor`)- fail when creating translations [see #4044](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4044)

## v2.16.0

- Fix: Localization Pipeline does not respect Build.TimeoutInMinutes [see #4026](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4026)
- Support for running tests regardless of the build reason [see #4034](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4034/)
- Fix issue where package deployment was not possbile if the app.json does not contain the `description` property [see #4037](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4037)

## v2.15.0

- Support for builds based on git tags [see #4020](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4020)
- Improve dependency download to prevent downloading the same dependencies multiple times [see #4021](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4021)
- Adapt support for BC Management Modules based on PowerShell 7 from nav-docker [see #4023](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4023)
- Add missing fallback/default version for pipeline version handling module [see #4022](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4022)

## v2.14.0

- Fix issue where the build container could no longer be successfully removed at the end of the pipeline run [see #4014](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4014)
- Fix issue where older package version might be downloaded as dependency if the apps folder contains multiple versions of the same App [see #4006](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4006/)
- Fix issue where minimum version pipeline aborts checking and updating all dependencies if an error occurs with one dependency [see #4013](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4013)

## v2.13.0

- Support for translations of multiple languages (pipeline variables) [see #3704](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3704)
- Preparation to support translations of multiple languages (cosmo.json) [see #3704](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3704)

## v2.12.1

- Suppress unnecessary error when trying to find NAV Apps Management Module in newer BC versions [see #3950](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3950)
- Improve logging of errors during NavDataUpgrade [see #3946](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3946)

## v2.12.0

- Improve finding NAV Management Module in service tier directory [see #3946](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3946)

## v2.11.0

- Move signing back to build stage but before publishing pipeline artifact [see #3919](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3919)

## v2.10.0

- Add BC24 Template [see #3924](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3924)
- Make signing more stable, move to release job [see #3919](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3919)

## v2.9.0

- Explicitely disable parallel compile when variable is set [see #3935](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3935)

## v2.8.0

- Allow to disable parallel compilation [see #3935](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3935)

## v2.7.2

- Fix typo in Publish-BCAppRemote [see #3922](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3922)

## v2.7.1

- Update App Signing to work with KeyVault [see #3919](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3919)

## v2.6.8

- Make sure that releaseName is set when publishing to AzureFileShare [see #3892](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3892)
- Create files for big environment variables as ADO could fail creating the script [see #3910](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3910)

## v2.6.5

- Make compile-step optional, so that it's possible to spin up container and run tests only [see #3833](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3833)
- Improve WaitMessage for COSMO Build Image [see #3885](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3885)
- RunTestSuite has wrong SuccededWithIssues [see #3888](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3888)

## v2.6.4

- Fix overwriting the artifact name was applied to both the app and the test app [see #3803](https://dev.azure.com/cc-ppi/General/_workitems/edit/3803)

## v2.6.3

- Improve error logging for failing automation API requests [see #3435](https://dev.azure.com/cc-ppi/General/_workitems/edit/3435)

## v2.6.2

- Downgrade warnings to notification [see #3518](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3518)
- Add validation and update check for comso.json [see #3523](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3523)

## v2.6.1

- Fix a problem where special characters in the payload were not properly encoded [see #3509](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3509)

## v2.5.0

- Use KEDA to scale agents instead of start/stop manually [see #2090](https://dev.azure.com/cc-ppi/General/_workitems/edit/2090)
- Checkout repo in localization pipeline due to usage of keda we can have a new agent for each job. [see #3195](https://dev.azure.com/cc-ppi/General/_workitems/edit/3195)
- Support runtime packages in on premise deployments [see #2846](https://dev.azure.com/cc-ppi/General/_workitems/edit/2846)
- Add template for Init-Environment pipeline [see #3213](https://dev.azure.com/cc-ppi/General/_workitems/edit/3213)
- Increase timeout for image builds to 60 minutes [see #3304](https://dev.azure.com/cc-ppi/General/_workitems/edit/3304)
- Add customization possibility from product management [see #3312](https://dev.azure.com/cc-ppi/General/_workitems/edit/3312)

## v2.4.21

- Fix null Values in release pipeline

## v2.4.20

- Adjust to new folder structure in BC22 when running tests [see #3053](https://dev.azure.com/cc-ppi/General/_workitems/edit/3053)

## v2.4.19

- Use timeout minutes instead of attemps for Image Build [see #2930](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2930)

## v2.4.8

- Adjust to new folder structure in BC22 [see #2912](https://dev.azure.com/cc-ppi/General/_workitems/edit/2912)
- Increase wait for image build timeout to work during higher load [see #2842](https://dev.azure.com/cc-ppi/General/_workitems/edit/2842)
- Fix issue where waiting on BC container fails because image pull takes too long [see #2842](https://dev.azure.com/cc-ppi/General/_workitems/edit/2842)

## v2.4.7

- Fix missing variable Job.BackendType [see #2773](https://dev.azure.com/cc-ppi/General/_workitems/edit/2773)
- Fix duplicate dash in localization pipeline [see #2783](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2783)

## v2.4.0

- Fix bug where Compile.FailOnWarning didn't work [see #2642](https://dev.azure.com/cc-ppi/General/_workitems/edit/2642)
- Error handling during deployment improved [see #2738](https://dev.azure.com/cc-ppi/General/_workitems/edit/2738)

## v2.3.0

- check if .net core compiler version exists and fallback to .net framework version. [see #2294](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2294)
- Fix parameter name for running test suites [see #2318](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2318)
- Add workaround for overwriting ExcludeExpr for apps in container startup [see #2316](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2316)
- fix merge error causing appsourcecop pre check to fail and improve logging [see #2326](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2326)
- support on-premise version in localization pipeline [see #2306](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2306)
- fix scoped setting are ignored if defined in global scope [see #2341](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2341)
- add possibility for release pipelines to specify the search path on machine with multiple BC/NAV installations [see #2306](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2306)
- correct fix folder for evaluating compiler version [see #2361](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2361)
- Fix status compile step if only one issue is in the log. Enforced treating array with one element as array. [see #2360](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2360)
- Switch hard to ALOps Docker Start/Wait for NAV2018 [see #2363](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2363)
- error for deployment added, when no valid access token was returned in `Get-BcBearerToken` [see #2355](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2355)
- powershell module extended to run API deployment for onPrem installations based on Basic authentication [see #2262](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2262)
- Support multiple installed versions for on-premise agent during deployment [see #2306](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2306)
- Optional parameter "SyncMode" added for deployment tasks (OnPrem, OnPrem API, SaaS) [see #2366](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2366)
- Demoted Error/Warning/Info output to a note in compiler step [see #2368](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2368)
- Todo's removed from refactoring [see #1947](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/1947)
- Passed EnableSymbolLoading into docker start step from ALOps [see #2363](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2363)
- Fixed wrong warning during successful SaaS deployment [see #2385](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2385)
- Extended the number of errors in a row during SaaS deployment [see #2386](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2386)
- Use same deployment mechanism in environment deployments as in task groups [see #2388](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2388)
- Setting orgname, projectname & reponame for container directly via the service definition [see #2353](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2353)
- Release Pipeline did not find the correct service tier folder in stage "COSMO App Publish" (Variable mix-up fixed) [see #2450](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2450)
- Skip Tests in CI Builds for AlOps steps aswell [see #129](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/129)
- fix: API deployment failed on first occurrence of an unexpected status [see #2470](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2470)
- Improve error output during deployment. Print actual error message and app causing the issue in separate lines. [see #2479](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2479)
- Publish previous app in CI builds does not work in tenant scope and if app is already published [see #2484](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2484/)
- Overwriting the artifact name was not taken into account for the deployment [see #2507](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2507)
- Add pipeline variable to exclude build containers from the limits [see #2524](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2524/)
- Set labels on agent container & add labels with pipeline information for grafana [see #2553](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2553/)

## v2.2.0

- Search NAV/BC management libraries in old and new folder name. [see #2300](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2300)
- do not run tests on pushes to a branch for project pipelines due to they are already executed in the PR. [see #129](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/129)
- mark wait for container as SucceededWithIssues if warnings are present. [see #2290](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2290)
- added feature for checking AppSourceCop settings. [see #2036](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2036)
- added possibility for switching back to old .net framework compiler. [see #2036](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2036)

## v2.1.0

- Fixed: disable SSL in build BC containers. [see #2122](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2122)
- Running tests failed in next major. Updated skripts to commit a792637 from Freddy [see #2150](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2150)
- Compiler output does not show where the issues is object, line, column [see #2156](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2156)
- Wrong test page used for BC13 & BC14 [see #2161](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2161)
- Do not break pipeline if telemetry fails [see #1840](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/1840/)
- Reenable switching branch for self-service script [see #2177](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2177/)
- Update artifact now as 7zip archive for K8s [see #2101](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2101)
- Catch error if RTC folder does not exist [see #2211](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2211)
- Consider startup mode from cosmo.json during build [see #2194](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2194)
- Fix typo in variable name causing issue in reading appsourcecop.json [see #2219](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2219)
- Functions added for D365BC app deployment from release pipelines. [see #2137](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2137/)
- User PAT was not passed to docker start step and led into an access denied during checking the artifacts. [see #2160](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2160/)
- Switched to .Net Core compiler version due this caused problems referencing dll and improves performance. [see #2228](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2228/)
- Fix issue where compiler output was omitted if only one warning/error was thrown by the compiler. [see #2119](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2119/)

## v2.0.24

- Fixed: Compiler problems with umlauts in manifest file (app.json). [see #2076](https://dev.azure.com/cc-ppi/General/_workitems/edit/2076/)
- Do not check if folder already exists due to it causes localization check to fail [see #2144](https://dev.azure.com/cc-ppi/General/_workitems/edit/2144/)

## v2.0.21

- Fixed: Compiler output filename was not masked. [see #2130](https://dev.azure.com/cc-ppi/General/_workitems/edit/2130/)

## v2.0.20

- Fixed: Umlauts/Encoding in download symbols cause problems. [see #2076](https://dev.azure.com/cc-ppi/General/_workitems/edit/2076/)
- Downgrade didn't find artifact message from error to warning [see #2038](https://dev.azure.com/cc-ppi/General/_workitems/edit/2038/)

## v2.0.19

- Fixed: PR Pipeline failed due to PowerShell issue. [see #2100](https://dev.azure.com/cc-ppi/General/_workitems/edit/2100/)
- Fixed: Unescaped '\' in compiler log caused problems during compile app. [see #2105](https://dev.azure.com/cc-ppi/General/_workitems/edit/2105/)
- Improve compiler performance. Moved source off the file share [see #2084](https://dev.azure.com/cc-ppi/General/_workitems/edit/2084/)
- Run-Test step never completed successfully due to the output of new-item [see #2115](https://dev.azure.com/cc-ppi/General/_workitems/edit/2115/)
- Do not escape backslashes in escape sequences [see #2116](https://dev.azure.com/cc-ppi/General/_workitems/edit/2116/)
- Add missing tenant parameter on publishing apps in multitenant environments [see #2120](https://dev.azure.com/cc-ppi/General/_workitems/edit/2120/)

## v2.0.13

- Fixed: Publish Pipeline Artifact did not use the correct output from ALOps compile. [see #2087](https://dev.azure.com/cc-ppi/General/_workitems/edit/2087/)
- Fixed: Test app compile fails due to missing ruleset file. [see #2094](https://dev.azure.com/cc-ppi/General/_workitems/edit/2094/)

## v2.0.5

- After Update to COSMO Steps Compile Step results in Error, when a runtime package was used from artifacts. [see #2067](https://dev.azure.com/cc-ppi/General/_workitems/edit/2067/)
- COSMO Pipeline Templates Compile fails, because a runtime package was used from artifacts. [see #2048](https://dev.azure.com/cc-ppi/General/_workitems/edit/2048/)
- Fixed: Build Agent Start / Stop used the wrong templates for NAV2018.

## v2.0.0

- Implement own run-test step and publish output to DevOps [see #1853](https://dev.azure.com/cc-ppi/General/_workitems/edit/1853/)
- Refactor Pipelines Structure: Extraction of ALOps tasks to separate folders and own yaml templates. [see #1856](https://dev.azure.com/cc-ppi/General/_workitems/edit/1856/)
- Implement own dependency download and compiler step, format compiler output for DevOps [see #1847](https://dev.azure.com/cc-ppi/General/_workitems/edit/1847/)
- Implement own download and import license step for DevOps [see #1849](https://dev.azure.com/cc-ppi/General/_workitems/edit/1849/)
- Implement own execute script in container step for DevOps [see #1852](https://dev.azure.com/cc-ppi/General/_workitems/edit/1852/)
- Variables for docker swarm URL & version unified. The unified variables are now in all jobs `job.SwarmUrl` and `job.SwarmVersion`.
- Implement own sign app in container step for DevOps [see #1851](https://dev.azure.com/cc-ppi/General/_workitems/edit/1851/)
- PowerShell Library is not present in expected path after update to cosmo-preview [see #1990](https://dev.azure.com/cc-ppi/General/_workitems/edit/1990/)
- Wrong Statement in PushTelemetry PowerShell corrected [see #1991](https://dev.azure.com/cc-ppi/General/_workitems/edit/1991/)
- Step 'Generate Symbols' is missing in COSMO Template Steps - this step is handled as Deprecated [see #1994](https://dev.azure.com/cc-ppi/General/_workitems/edit/1994/)
- Escaping publisher, name, and version changed for download symbols [see #1992](https://dev.azure.com/cc-ppi/General/_workitems/edit/1992/)
- Copy Sources to Working Dir fails with special characters in job.UID [see #1997](https://dev.azure.com/cc-ppi/General/_workitems/edit/1997/)
- Enable Symbol Loading was ignored during docker start (BC13/BC14 + container with DB-Backup) [see #1998](https://dev.azure.com/cc-ppi/General/_workitems/edit/1998/)
- Error Handling, when folder / file is not at expected location improved [see #1999](https://dev.azure.com/cc-ppi/General/_workitems/edit/1999/)
- Error fixed in PowerShell during task Publish Previous App, when the filter contains the path to the app file. [see #2003](https://dev.azure.com/cc-ppi/General/_workitems/edit/2003/)
- Path tp PPI PowerShell Library fixed in task Publish Previous App [see #2003](https://dev.azure.com/cc-ppi/General/_workitems/edit/2003/)
- Errors and Warnings are not handled correct in Task "COSMO Run TestSuite" [see #2006](https://dev.azure.com/cc-ppi/General/_workitems/edit/2006/)
- Task "App Filter(s) Previous App" was not marked as `SucceededWithIssues`, when a waring was present [see #2010](https://dev.azure.com/cc-ppi/General/_workitems/edit/2010)
- Task "Download Previous App" changed from "DownloadBuildArtifacts" to "DownloadPipelineArtifact" [see #2010](https://dev.azure.com/cc-ppi/General/_workitems/edit/2010)
- Fallback of variable `ContainerizedBuildAgentImage` changed to `cosmoconsult/azdevops-build-agent:latest-bcagent`
- Fixed: Get-PreviousBuild for PR Artifact [see #2001](https://dev.azure.com/cc-ppi/General/_workitems/edit/2001)
- Fixed: Format expression causes error in PowerShell for `Check Previous App` [see #2021](https://dev.azure.com/cc-ppi/General/_workitems/edit/2021)
- Fixed: Wrong parameter and incorrect error handling in task "COSMO Publish Previous App" [see #2022](https://dev.azure.com/cc-ppi/General/_workitems/edit/2022)
- Replace AlOps in Localization Pipeline [see #2019](https://dev.azure.com/cc-ppi/General/_workitems/edit/2019/)
- Enable Premium is now respected by COSMO `New-BuildContainer` [see #2009](https://dev.azure.com/cc-ppi/General/_workitems/edit/2009/)
- Sync App Mode was not present in ALOps Docker Start after setup variables [see #1995](https://dev.azure.com/cc-ppi/General/_workitems/edit/1995/)
- Error reporting and logging improved for "Publish App"
- Error reporting and logging improved for "Compile App"
- Fixed: COSMO Compile App - Fails for Manifest Runtime 3.x / BC 14 [see #2000](https://dev.azure.com/cc-ppi/General/_workitems/edit/2000/)
- Fixed: `$(SharedFolder)` is not present in ALOps Templates and cause an issue during PRs [see #2029](https://dev.azure.com/cc-ppi/General/_workitems/edit/2029/)
- Fixed: COSMO WaitOnContainer did not detect errors correctly [see #2032](https://dev.azure.com/cc-ppi/General/_workitems/edit/2032/)
- Logging during compile optimized
- Fixed: Repair broken json in compiler log [see #2033](https://dev.azure.com/cc-ppi/General/_workitems/edit/2033/)
- Improved Telemetry [see #1871](https://dev.azure.com/cc-ppi/General/_workitems/edit/1871/)
- Fixed: UseCustomScriptsFromRepo don't work on COSMO templates [see #2044](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2044)
- Fixed: Minimum version is not pulled in minimum version check [see #2042](https://dev.azure.com/cc-ppi/General/_workitems/edit/2042/)
- Compiler Output improved
- Fixed: Parameter "ServerInstance" was not correct in Task Publish-BCApp for older versions [see #2049](https://dev.azure.com/cc-ppi/General/_workitems/edit/2049/)
- Improved logging for COSMO Publish App, with additional checks of previous app and tenant database state
- Fixed: Publish app did not work, because app specific `.netpackages` were not present at NST.
- Added pipeline version and retrieve license from API [see #2059](https://dev.azure.com/cc-ppi/General/_workitems/edit/2059/)
- Telemetry reporting refactored [see #1871](https://dev.azure.com/cc-ppi/General/_workitems/edit/1871/)
- Optimize dependency collection for compiling [see #2014](https://dev.azure.com/cc-ppi/General/_workitems/edit/2014/)
- Optimize compiling performance [see #2051](https://dev.azure.com/cc-ppi/General/_workitems/edit/2051/)
- Template Major Version increased.
- Force usage of ALOps tasks on < BC15 for starting and stopping agent [see #2074](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2074/)
- Remove legacy variable that is no more set [see #2082](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2082/)
- Add the artifact itself to dependencies for compiling the test app [see #2083](https://dev.azure.com/cc-ppi/General/_workitems/edit/2083/)

## v1.2.18

- Fallback added for variable DevOps-Pool in Start/Stop-Agent-Container. If variable is not configured, the fallback is set to `System.TeamProject`, which is the value for the default agent pool of an project. [see #1744](https://dev.azure.com/cc-ppi/General/_workitems/edit/1744/)
- added functionality required by minimum version check pipeline [see #943](https://dev.azure.com/cc-ppi/General/_workitems/edit/943/)
- corrected branch for custom scripts for PR builds [see #1176](https://dev.azure.com/cc-ppi/General/_workitems/edit/1176/)
- add deployment into pipeline environments [see #941](https://dev.azure.com/cc-ppi/General/_workitems/edit/941/)

## v1.2.17

- Add support for deployment in multiple artifact feeds and specifying the packagename for the regular deployment. [see #1407](https://dev.azure.com/cc-ppi/General/_workitems/edit/1407/)
- Support limiting localization checks to sepcific localization to reduce runtime [see #1303](https://dev.azure.com/cc-ppi/General/_workitems/edit/1303/)
- Build in localization pipeline always against base and check against all localizations from AppSourceCop or specified countries [see #1302](https://dev.azure.com/cc-ppi/General/_workitems/edit/1302/)
- Add optional 'OnSetupBuildTasks' & 'OnSetupDeploymentTasks' to run own tasks snippets before the container is created [see #1716](https://dev.azure.com/cc-ppi/General/_workitems/edit/1716/)
- Suppress configurable errors or warnings during logging. The suppressed message are then logged as information. [see #1730](https://dev.azure.com/cc-ppi/General/_workitems/edit/1730)

## v1.2.16

- Specify the source of the last artifact that is used to check for break changes [see #1493](https://dev.azure.com/cc-ppi/General/_workitems/edit/1493/)
- Allow publishing apps in a folder structure app/test on the pipeline [see #940](https://dev.azure.com/cc-ppi/General/_workitems/edit/940/)
- `cosmo.json` is by default no longer read directly from the file system, but instead a call to our backends is made to get it. This is needed for the `cosmoArtifacts` to be resolved, but also means that secrets like `$(devlic-bc19-de)` are directly resolved through the Azure Key Vault in the backend, so you **no longer need to update the library variables to get changes from the Key Vault, e.g. if licenses expire**. As a side-effect of that however, it also means that you **can't override Azure Key Vault secrets through library variables*- anymore. To use the same example as before, `$(devlic-bc19-de)` will always be read from the Azure Key Vault, no matter if you have a local library variable or not. If you want to use a library variable, you need to give it a different name like e.g. `devlic-customerX` and reference it as `$(devlic-customerX)`. Directly referenced elements like e.g. `c:\\azurefileshare\\licenses\\mySuperLicense.flf` are not affected, the change only is relevant for secrets. Also, if you never manually changed the value of a library variable, nothing changes as well.
  *Note: The `cosmo.json` from the file system is used as fallback, when something went wrong during the backend call. In this case a warning is added to CI task `Setup Variables`*
  [see #1395](https://dev.azure.com/cc-ppi/General/_workitems/edit/1395/)

## v1.2.15

- Fix pool reference to point at library variable instead of project name [see #1316](https://dev.azure.com/cc-ppi/General/_workitems/edit/1316/)

## v1.2.14

- Use server jobs for starting the agents in the self-service backend to avoid wait times for Microsoft cloud agents [see #405](https://dev.azure.com/cc-ppi/General/_workitems/edit/405/)
- Prevent potential problem if the service name of the agent is > 64 characters [see #1187](https://dev.azure.com/cc-ppi/General/_workitems/edit/1187/)
- Fix package version for deployment into feed if manifest based versioning was used. [see #1222](https://dev.azure.com/cc-ppi/General/_workitems/edit/1222/)
- Fix for "Error NAV2018 Pipeline no manifest found" [see #1255](https://dev.azure.com/cc-ppi/General/_workitems/edit/1255/)
- Bump the default build agent image to cosmoconsult/azdevops-build-agent:0.9.9-bcagent to update bccontainerhelper to 2.0.14 and add support for ALOps based release pipelines [see #1201](https://dev.azure.com/cc-ppi/General/_workitems/edit/1201/)

## v1.2.7

- Support creating runtime packages and publish them to the pipeline
- Support downloading previous version from artifact feed [see #994](https://dev.azure.com/cc-ppi/General/_workitems/edit/994/)
- New template for checking if an app against all localizations specified in the appsourcecop.json. This requires the usage of the AppSource Cop. [see #942](https://dev.azure.com/cc-ppi/General/_workitems/edit/942/)
- Support disabling additional compiler log from ALOps [see #1095](https://dev.azure.com/cc-ppi/General/_workitems/edit/1095/) / [Github Issue #355](https://github.com/HodorNV/ALOps/issues/355)
- Fix custom scripts are not executed during container start [see #1145](https://dev.azure.com/cc-ppi/General/_workitems/edit/1145/)
- Documentation moved to COSMO Docs [see #1153](https://dev.azure.com/cc-ppi/General/_workitems/edit/1153)
- Fix parameter name for symbol loading [see #1144](https://dev.azure.com/cc-ppi/General/_workitems/edit/1144/)

## v1.2.6

- Fix: Package name was not updated correctly, because the source repo was not present [see #1020](https://dev.azure.com/cc-ppi/General/_workitems/edit/1020)
- Fix: Included `checkout devops` repository is now removed. This caused a permit in each pipeline. [see #1024](https://dev.azure.com/cc-ppi/General/_workitems/edit/1024)
- New **internal*- variable `job.SourcesDirectory` introduced (Value is: `$(Agent.BuildDirectory)/s/$(Build.Repository.Name)`), which is set to the checked out MAIN repository.
- Checkout destination of MAIN repository is set to `/s/$(Build.Repository.Name)` which is equal to `$(job.SourcesDirectory)`

## v1.2.5

- Do not use CodeCops for compiling the test app due to this marks a build status as partially succeeded also the main app succeeded without warnings.
- Support taking the version from the [manifest files (app.json)](https://docs.cosmoconsult.com/en-us/cloud-service/devops-docker-selfservice/containers/setup-cosmo-json.html#compiler) for the app during compilation.

## v1.2.4

- Raise an error in "ALOps Wait on Container" to avoid later errors when the message `license file is corrupt` appears in container log, [see #922](https://dev.azure.com/cc-ppi/General/_workitems/edit/922)
- Variable `Build.timeoutInMinutes` to increase timeout for slow build jobs, [see #907](https://dev.azure.com/cc-ppi/General/_workitems/edit/907)
- Tasks and Variables to Sign App added (based on ALOps tasks) [see #451](https://dev.azure.com/cc-ppi/General/_workitems/edit/451)

## v1.2.3

- Fix a bug which lead to all pipeline containers being multi-tenant, [see #895](https://dev.azure.com/cc-ppi/General/_workitems/edit/895)

## v1.2.2

- Fix: `buildReason` was missing as parameter during deployment [see #850](https://dev.azure.com/cc-ppi/General/_workitems/edit/850)
- Fix: Deployment job uses always artifact version 1.0.0 [see #881](https://dev.azure.com/cc-ppi/General/_workitems/edit/881)
- Support new name of default branch 'main' [see more #316](https://dev.azure.com/cc-ppi/General/_workitems/edit/316/)

  ***Note:*- Only  **'master'*- or **'main'*- are supported as default branch.*

## v1.2.1

- Fix: Deployment Stage/Job was executed on a canceled pipeline. [see #745](https://dev.azure.com/cc-ppi/General/_workitems/edit/745)
- Variable `DisableAppInsights` added, to avoid any monitoring of a pipeline. [see #715](https://dev.azure.com/cc-ppi/General/_workitems/edit/715)
- Variable `DisablePublishArtifactInformation` added, to deactivate Publish Artifact Information. [see #746](https://dev.azure.com/cc-ppi/General/_workitems/edit/746)
- Variable `dockerEnableSymbolLoading` added, to configure Symbol loading for NAV2018-BC14. [see #681](https://dev.azure.com/cc-ppi/General/_workitems/edit/681/)
- Add: Setting for configuring source cops and ruleset file added. [see #773](https://dev.azure.com/cc-ppi/General/_workitems/edit/773)
- Support restoring SaaS backups in pipelines [see #1496](https://dev.azure.com/cc-ppi/General/_workitems/edit/1496)

## v1.2.0

- Default Parameter for Business Central pipelines corrected
  - StartStopVM is now set to `true`
  - DeploymentTestJobs template set to `""`
- New general template group for `BC` added
- Deprecation Warning added to `Import` task groups: `Import Artifacts with import tasks is deprecated and will be removed soon.`
- Change log corrected (version mismatch)

## v1.1.9

- New Parameter `Docker.WarningString` (Default: `[WARN]`) which raises an warning during Docker Start, when this warning string appear in the container log.

## v1.1.8

- Variable `testImportAction` for C/AL hybrid pipelines added. The default value is "overwrite"

## v1.1.7

- Respect parameter "multitenant" from cosmo.json in builds as well

## v1.1.6

- If `skipDeploy` is set to `true`, the whole "Create Release" job is skipped [see #226](https://dev.azure.com/cc-ppi/General/_workitems/edit/226)

## v1.1.5

- New Parameter `Docker.ErrorString` (Default: `[ERROR]`) which raises an error during Docker Start, when this error string appear in the container log.

## v1.1.4

- Support to get custom startup scripts from the repository as explained [here](https://docs.cosmoconsult.com/en-us/cloud-service/devops-docker-selfservice/containers/setup-custom-scripts.html)

## v1.1.3

- Task "ALOps Import Test Toolkit" is now removed for BC15, BC16, BC17 (for older versions we don't have the AL-based test toolkit, so it isn't there at all) because the generated container contains now the test toolkit.
- Refactoring task "Setup Variables":
  - `--env licenseFile=<licenseFile>` is now always added to `dockerParamsForBuild`, therefor the initial ALOps License Import is removed.
  - fix: excluded empty variables
  - fix: avoid empty license parameter for docker image creation
  - Added check for `dockerParamsForBuild` to prevent special characters (`\r`, `\n`) throwing an error as Docker startup encounters unexpected behavior.
  - `--isolation=...` is always removed from `dockerParamsForBuild`. Furthermore, when you need Isolation, than add `isolation` in `cosmo.json` this will add the `--isolation=...` in `dockerParamsForBuild`. The **default value for `isolation` is `Process`*- which works best for `bcArtifacts` on Docker Swarm environment.
  - Variable `artifactsScope` in `cosmo.json` overrule now the scope for the used artifact feed, when present
- Initial license import is completely removed, because license is imported by `--env licenseFile=...` in `dockerParamsForBuild`
- Error handling improved for task "Create Docker Image"
- Fallback for DockerImage creation for bcArtifact "ALOps Create DockerImage" was removed. This is not longer necessary, because step "Create Docker Image" do this at Docker Swarm environment.
- Variable `LicenseScope` removed. Now the license is imported during "Docker Start" (passed to `dockerParamsForBuild` as environment parameter `--env licenseFile=...`) into the default scope: `NavDatabase`.
- changelog added
- readme.md updated

## v1.1.2

- fix: Artifact with name 'Dynamics 365 App' not found.
- readme.md updated

## v1.1.1

- fix: Artifact with name 'Dynamics 365 App' not found.

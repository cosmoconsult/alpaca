---
    title: Visual Studio Code Extension Changelog
    description: Visual Studio Code Extension Changelog
    orig-source: https://dev.azure.com/cc-ppi/Self-Service/_git/azdevops-vscode-extension?path=/CHANGELOG.md
---

# Visual Studio Code Extension Changelog

All notable changes to the Visual Studio Code Extension

## v1.44.0 (2026-01-28)

- Remove dependency on deprecated SwarmUrlLookup
- Fix issue where downloading a specific NuGet package version always downloadeds the latest version [see #4636](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4636)

## v1.43.0 (2026-01-27)

- Update Alpaca API client
- Move from NuGet API to Alpaca API for NuGet packages
- Rework NuGet feeds configuration, feeds, packages and versions to adapt to changes in the Alpaca API
- Integrate improvements and changes from alpaca-vsc-extension
- Minor improvements and refactoring

## v1.42.0 (2026-01-27)

- Fix issue with unclear "License URL" error message when aborting app creation [see #4631](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4631)

## v1.41.0 (2025-12-23)

- Remove references to legacy ppi-devops host and unused dependencies [see #4608](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4608)

## v1.40.0 (2025-12-22)

- Allow anonymous access for public NuGet feeds without PAT [see #4605](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4605)
- Add optional query filter for custom NuGet feeds to only show packages containing a certain term

## v1.39.0 (2025-12-16)

- Retrieve NuGet feeds configuration from Alpaca API
- Auto-generate list of NuGet packages (grouped by appId)
- Add caching for NuGet feeds configuration and NuGet feeds packages
- Add new setting `cc-azdevops.customNuGetFeeds` to allow specifying custom NuGet feeds to be used additionally in the Product Packages view

## v1.38.0 (2025-11-20)

- Add action to download a NuGet package for a specified platform version [see #4553](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4553)

## v1.37.3 (2025-10-30)

- Fix typo in setting `cc-azdevops.autoManagePATLifetime` [see #4522](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4522)

## v1.37.2 (2025-10-21)

- Fix deploying build artifacts [see #4511](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4511)
- Sort builds of repository or pipeline by date
  
## v1.37.1 (2025-10-14)

- Fix issue with duplicate build IDs [see #4506](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4506)

## v1.37.0 (2025-08-29)

- Remove connection to legacy swarm [see #4422](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4422)

## v1.36.0 (2025-07-25)

- Cache expiration is now configurable: `cc-azdevops.cacheExpirationHours` [see #4415](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4415)

## v1.35.0 (2025-07-22)

- Add support to enable/disable server file cache persistence for containers [see #4387](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4387)
- Fix SSH key permission error on Windows when opening terminal or file share [see #4410](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4410)

## v1.34.1 (2025-06-26)

- Fix issue where customers with names containing special characters could not be found [see #4382](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4382)

## v1.34.0 (2025-06-10)

- Fix action to save product packages to the package cache [see #4360](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4360)
- Add a new setting to specify the languages for translations during app creation [see #4071](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4071)

## v1.33.0 - v1.33.1 (2025-06-03)

- Implement VS Code Extension Telemetry [see #4362](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4362)

## v1.32.0 (2025-06-03)

- Add 'Template Catalog' pipeline to available extended pipelines for product template [see #4361](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4361)

## v1.31.0 (2025-05-21)

- Streamline how URLs are encoded across all API requests (especially handle branch names containing hashes) [see #4345](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4345)
- Add action to copy the name of ipPackages and NuGet Packages [see #4348](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4348)

## v1.30.0 (2025-05-14)

- Fix long loads of the tree views, add mechanism to clean up expired cache entries [see #4299](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4299)
- Add support to enable/disable async mode for containers [see #4320](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4320)

## v1.29.0 (2025-05-06)

- Fix typo in title of Universal Packages tree item
- Add support for artifact inheritance and allow syncMode & importscope to be set per-artifact [see #4254](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4254)
- Fixed bug where branch containers were shown under the branches of wrong repositories [see #4317](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4317)

## v1.28.1 (2025-03-28)

- Fix typo in title of containers tree view [see #4282](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4282)

## v1.27.0 - v1.28.0 (2025-03-19)

- Add support for custom nuget feeds per project (in cosmo.json) [see #4268](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4268)

## v1.26.0 (2025-03-14)

- Product packages view supports now to display nuget packages. Configuration is made per Alpaca subscription in the backend [see #4262](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4262)
- "Save to packagecache" supports now multiroot workspaces. Every workspacefolder which includes an app.json will be considered [see #4266](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4266)

## v1.25.0 (2025-03-08)

- Improve user prompt for customer account assignment [see #4235](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4235)
- Improve performance for opening repos with many artifacts [see #4249](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4249)
- Enhance owner change process for containers with validation and confirmation prompt [see #4241](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4241)
- Add debug/attach configurations for AL to vscode launch.json [see #4238](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4238)

## v1.24.0 (2025-02-12)

- Moved bug reports and feature requests to github issues [see #4204](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4204)
- Fixed bug where "Open Terminal" or "Open Fileshare" downloads an empty SSH keyfile [see #4216](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4216)

## v1.23.0 (2025-01-21)

- Restrict permissions for the private key file of a container to the current user [see #4200](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4200)

## v1.22.0 (2024-12-16)

- Add setting to make (auto-managed) PAT lifetime configurable: `cc-azdevops.autoManagePATLifetime` [see #4182](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4182)

## v1.21.0 (2024-12-09)

- Add optional setting to always show the container id: `cc-azdevops.alwaysShowContainerId`
- Improve container status/health checks (esp. after restarts)
- Improve documentation of auto start/stop actions and settings

## v1.20.0 (2024-11-26)

- Fix issue where the notification (incl. postpone action) for the auto stop of containers was not shown [see #4163](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4163)
- Fix issue where the notification for the auto stop of containers was shown if the current time was higher than the shutdown time
- Add refresh of container tree items after changing the auto start or stop informations (incl. postpone of auto stop)
- Fix issue where the healthcheck of containers was only run once

## v1.19.0

- Fix issue where the healthcheck of deleted containers is not stopped/removed [see #4155](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4155)
- Fix issue where the same container can not be listed under the repository and the branch [see #4156](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4156)
- Do not subsribe to rabbitMQ from k8s cluster [see #4159](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4159)

## v1.18.0

- Work around a powershell deployment issue by using pwsh [see #4103](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4103)

## v1.17.0

- Fix issue where an error may be shown when deleting a container [see #4100](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4100)
- Fix issue where the displayname of a cloned container was not correctly set [see #4101](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4101)

## v1.16.0

- Improve formatting of container logs [see #4089](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4089)

## v1.15.0

- Fix problem where part of a setting could be read as "AI" instead of "AL" [see #272](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/272)
- Add support to clear existing symbols before downloading symbols from a container [see #4060](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4060)
- Fix problem where the check for owned branches could fail [see #4063](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4063)
- Add support to prune obsolete configurations of the vscode launch.json [see #2282](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2282)
- Fix problem where the container terminal/fileshare were not useable on MacOS [see #4067](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4067)

## v1.14.0

- Extend context menu of "Apps in filesystem" of a container with "Copy FileShare Path to Clipborad" and "Add App to container configuration" [see #4029](https://dev.azure.com/cc-ppi/General/_workitems/edit/4029)
- Moved Launch.json creation/extension to k8s-automation [see #4004](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4004)
- Fix a problem where the launch.json could not be extended when the file contains comments or trailing commas [see #4004](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4004)
- Display information if the CI/CD repository was updated during the creation of an app [see #4032](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4032)
- Fix problem where the value “alwaysAsk” of the seeting “Handling Of Existing Launch JSON” did not lead to the expected user query
- Add support to cache the container credentials and download symbols directly after successfully creating the launch.json [see #272](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/272)
- Fix problem where COSMO entites could not be shown or assigned anymore due to invalid values in the corresponding data source [see #4052](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4052)

## v1.13.0

- Fix problem with launch.json creation for containers using AAD auth [see #3876](https://dev.azure.com/cc-ppi/General/_workitems/edit/3876)

## v1.12.0

- Update readme with more information [see #4019](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4019)

## v1.11.0

- Extended cosmo.json with configurations to support translations of multiple languages [see #3704](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3704)
- Allow update of customNavSettings for a container based on potentially changed cosmo.json [see #3993](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3993)

## v1.10.3

- Fix a problem where the autostart and autostop mode was not displayed correctly [see #3965](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3965)

## v1.10.2

- Fix problem where the runs of a pipeline could not be shown [see #3939](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3939)

## v1.10.1

- Fix problem where the backend url could not be determined for certain projects [see #3938](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3938)

## v1.10.0

- Fix product package action "Save to packagecache" extracted invalid app file [see #3907](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3907)
- Make DLL collection execution async and more stable [see #3917](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3917)

## v1.9.0

- Fix problem with launch.json creation for containers using AAD auth [see #3876](https://dev.azure.com/cc-ppi/General/_workitems/edit/3876)
- Fix caching issue when release pipeline is created [see #3898](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3898)
- Fix Container actions are shown in new Alpaca extension [see #3899](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3899)

## v1.8.0

- Use COSMO portal for Bug reports & feature requests for COSMO users [see #3868](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3868)
- Improve waiting for container ip address and SSH connection [see #3848](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3848)

## v1.7.0

- Support "main" as default branch, change default from "master" to "main" [see #3763](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3763)

## v1.6.1

- Fix containers in treeview do not work/update after VS Code Update 1.85 [see #3811](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3811)

## v1.6.0

- Allow restarting the NST/BCST [see #3756](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3756)
- Allow renaming a container [see #3757](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3757)
- Fix companion creation [see #3735](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3735)

## v1.5.0

- Allow interacting with multiple IP artifacts at once [see #3575](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3575)
- Allow selection of dev scope as well when deploying an app [see #3549](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3549)
- Remove keytar dependency [see #3665](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3665)

## v1.4.1

- Fix unnecessary backend calls if container has been externally removed [see #3572](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3572)
- Add missing refresh of container view after clone [see #3573](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3573)

## v1.4.0

- Allow to configure a whitelist of visible projects [see #3551](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3551)
- Allow selection of scope when deploying an app [see #3549](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3549)
- Allow to configure replacement of launch.json when adding a configuration [see #3550](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3550)
- Warn user that "change owner" causes a restart if the container is currently running [see #3561](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3561)

## v1.3.5

- Initialize backend in language server before making a request that could cause backend not found error [see #3527](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3527)

## v1.3.4

- Fix problem with backend URLs being set up without the proper context [see #3507](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3507)

## v1.3.3

- Reenable container upgrades [see #3399](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3399)

## v1.3.2

- Add code completion for cosmo.json [see #3497](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3497)
- Check version of cosmo.json and suggest updating it to latest version [see #3486](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3486)

## v1.3.1

- Fix problems in backend calls with circular references [see #3500](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3500)
- Fix problem with backend URLs being set up without the proper context [see #3507](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3507)

## v1.3.0

- Validate cosmo.json against schema, underline issue in editor and show them in Problems tab [see #3485](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3485)
- Only show Postpone message when autostart is activated [see #3453](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3453)
- Do not show "Create Bug" action if the launch.json file was created successfully [see #3461](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3461)
- Allow suppressing of the startup config [see #3478](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3478)
- Don't crash if a local repo without fetchUrl is opened [see #3477](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3477)
- Don't ask to create a launch.json config if no project is opened [see #3476](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3476)
- Fix minor typos in messages [see #3484](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3484)
- Add ability to show and deploy apps in container filesystem to the container [see #3487](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3487)

## v1.2.2

- Enforce autostop, disable autostart in 4PS [see #3451](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3451)
- Update CI/CD repo and Taskgroups from project backend [see #3445](https://dev.azure.com/cc-ppi/General/_workitems/edit/3445)

## v1.2.1

- Hotfix: Don't show own containers created in other tenants

## v1.2.0

- Add bacpac to bak conversion for Kubernetes [see #3192](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3192)

## v1.1.5

- Fix onlyShowMyBranches for cosmo users [see #3398](https://dev.azure.com/cc-ppi/General/_workitems/edit/3398)
- Fix postpone auto shutdown is counting backwards [see #3388](https://dev.azure.com/cc-ppi/General/_workitems/edit/3388)

## v1.1.4

- Fix Auto start/stop info differs when loaded from cache [see #3397](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3397)

## v1.1.3

- Fix problem backend url not determined when cache expired [see #3386](https://dev.azure.com/cc-ppi/General/_workitems/edit/3386)

## v1.1.2

- Show containers running in cosmo legacy swarm [see #3366](https://dev.azure.com/cc-ppi/General/_workitems/edit/3366)

## v1.1.1

- Fix assign entity [see #3355](https://dev.azure.com/cc-ppi/General/_workitems/edit/3355)

## v1.1.0

- Allow to create and handle startup links for arbitrary containers [see #3332](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3332)
- New authentication, caching, cleanup [see #3126](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3126)
- Fix corner cases around ondemand containers and inaccessible orgs [see #3334](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3334)
- Allow to create tokens for app regs as well [see #3335](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3335)
- Changing owners no longer requires the container to be running [see #3342](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3342)

## v1.0.3

- Fix issue where extension wrongly used overriden K8s url [see #2995](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2995)

## v1.0.2

- Fix an issue where clicking on a branch name caused an error 'undefined' [see #3283](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3283)
- Fix an issue where ondemand containers with locale w1 couldn't be created [see #3286](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3286)

## v1.0.1

- Fix an issue where Swarm backends where called despite overrideK8sURL being set [see #3269](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3269)
- Fix an issue where creating the launch.json config didn't work immediately after creating a container [see #3275](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3275)

## v1.0.0

- Support COSMO guest users working together on COSMO projects [see #2995](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2995)

## v0.11.83

- Fix issue where containers from central cluster weren't shown if COSMO entity's default wasn't set to the central cluster already [see #2995](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2995)

## v0.11.82

- Usability improvements regarding organization and container list [see #2995](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2995)

## v0.11.81

- Improve usability for DLL download [see #3225](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3225)

## v0.11.80

- Enable artifact deployment to container in k8s-backends [see #3158](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3158)
- Correctly show created date in k8s-backends [see #3159](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3159)
- Fix SSH key handling in certain scenarios [see #3160](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3160)
- Use project backend to update task groups and create release pipelines [see #3164](https://dev.azure.com/cc-ppi/General/_workitems/edit/3164)
- Support creating BC22+ containers and projects without license [see #2995](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2995)
- Show auto start/stop info for k8s containers [see #3212](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3212)
- Re-enable AAD recognition for k8s containers [see #3226](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3226)
- Enable DLL download to collect DLLs on demand [see #3225](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3225)

## v0.11.79

- Use project backend to update ci/cd repo

## v0.11.78

- Fix wrong auto start time

## v0.11.77

- Enable Auto Shutdown/Startup for Containers running on kubernetes [see #2996](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2996)
  - New settings to set default shutdown/startup time and mode

## v0.11.76

- Fix naming issues in some actions [see #3018](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3018)
- Handle existing malformed launch.json gracefully instead of failing silently [see #3019](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3019)

## v0.11.75

- Allow the deployment of arbitrary build artifacts to arbitrary containers [see #2968](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2968)
- Add configuration options for container name proposals [see #2971](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2971)
- Show success or error feedback when creating launch.json configurations [see #2972](https://dev.azure.com/cc-ppi/General/_workitems/edit/2972)
- Optionally show which cosmo.json has been used when creating a container [see #2973](https://dev.azure.com/cc-ppi/General/_workitems/edit/2973)
- Fix auto refresh config names [see #2888](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2888)
- Make cloning feature available for AKS [see #2904](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2904)
- Support separate namespaces with Kubernetes [see #2841](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2841)
- New Action to show image build error message from container [see #2848](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2848)
- Show only current available actions in context menu of containers and organizations [see #2889](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2889)

## v0.11.74

- Add an action to clone a container [see #2579](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2579)
- Add a preview action to upgrade a container [see #2145](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2145)
- Make the backend for creating bug reports and feature request configurable [see #2938](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2938)
- Hide meaningless password in AAD containers, show owners if multiple [see #2940](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2940)
- Add a preview action with a flow to create a development environment: create branch, create container, create launch.json [see #2939](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2939)
- Auto refresh log view of k8s containers. [see #2888](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2888)
  - Auto refresh stops when container is healthy or timeout is exceeded
  - new setting Log Lines
  - new setting Log refresh Interval
  - new setting Log Auto refresh Timout
- Remove RabbitMQ dependency for Kubernetes [see #2957](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2957)

## v0.11.73

- Bring in features from Azure DevOps Simplify (https://marketplace.visualstudio.com/items?itemName=tfenster.azdevops-vscode-simplify) until version 0.0.7 [see #2845](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2845):
  - Auto-expand organization and project that contains the local git repository, if any
  - Show and allow to change the current Azure tenant
  - Optimize branch create for workitem: Local branch is also created and checked out, configuration options for default branch prefixes are respected
  - Add new action "COSMO Alpaca: Select WorkItem to associate with commit" that opens a searchable list of workitems to associate with a commit
- Fix status indicator on containers [see #2782](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2782)
- Fix a bug where repositories with cosmo.json files in subfolders incorrectly claimed that cosmo.json was missing [see #2840](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2840)
- Show "starting" instead of "Running" during container startup [see #2842](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2842)
- Also show the age of a container ("created at") in the container tree [see #2747](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2747)
- Add devcontainer support [see #2850](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2850)

## v0.11.72

- First version with support for both Docker Swarm and Kubernetes backends

## v0.11.71

- Fix bug where the branch list and filter didn't work as expected [see #2696](https://dev.azure.com/cc-ppi/General/_workitems/edit/2696)
- Improve error handling for eventlog download, allow action on docker treeview [see #2694](https://dev.azure.com/cc-ppi/General/_workitems/edit/2694)
- Special handling for IP artifacts from master: Only show latest, add reference with wildcard [see #2699](https://dev.azure.com/cc-ppi/General/_workitems/edit/2699)
- Add an action to download a package of all DLLs required for base app modifications [see #2709](https://dev.azure.com/cc-ppi/General/_workitems/edit/2709)
- Prepare migration to k8s
- Show containers from central clusters [see #2736](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2736)
- Fix bug where container creation fails if DevOpsArtifacts are missing in cosmo.json [see #2759](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2759)

## v0.11.70

- Fix bug where tenant was checked to early on activate [see #2669](https://dev.azure.com/cc-ppi/General/_workitems/edit/2669)

## v0.11.69

- Add setting to trigger behavior that only shows the branches created by the current user and default branches (main/master) [see #2606](https://dev.azure.com/cc-ppi/General/_workitems/edit/2606)
- Add quick toggles to switch "show only favorite organizations" and "show only my branches" settings [see #2607](https://dev.azure.com/cc-ppi/General/_workitems/edit/2607)
- Update dependencies in cosmo.json only if the version is below min Version [see #2586](https://dev.azure.com/cc-ppi/General/_workitems/edit/2586)
- Customer Assignment: show customer no. in selection [see #2516](https://dev.azure.com/cc-ppi/General/_workitems/edit/2516)
- Respect the selected auth mode of the container when creating a launch.json config [see #2170](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2170)
- Allow to create cosmo.json based on IP artifact [see #2381](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2381) with license selection if the artifact is W1 [see #2560](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2560) and in the right folder, optionally adding it to the workspace [see #2577](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2577)
- Support repositories with cosmo.json files in subfolders [see #2528](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2528)
- Azure File Share as an alternative backend for IP packages [see #2217](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2217)
- Azure File Share IP packages can be deployed directly to containers [see #2603](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2603)

## v0.11.68

- Fix emergency button on container create [see #2544](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2544)

## v0.11.67

- Add emergency button on container start [see #2544](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2544)

## v0.11.66

- Extended error message for incompatibel workspace, when download packages to package chache [see #2406](https://dev.azure.com/cc-ppi/General/_workitems/edit/2406)
- Numeric sort of product package versions [see #2463](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2463)
- Fix typos in pipeline name [see #2474](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2474)

## v0.11.65

- Add possibility to overrule customer container limit [see #2304](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2304)
- Use container state through new backend service directly instead of BC health service [see #2232](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2232)
- Add possibility to create Minimum Check and Localization Check pipelines [see #1304](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/1304)
- Support retrieving favorite organizations from backend only [see #1067](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/1067)
- Fix bug where a SaaS backup was not recognized when selecting a specific BC Artifact configuration [see #2374](https://dev.azure.com/cc-ppi/General/_workitems/edit/2374)

## v0.11.63 / 0.11.64

- Support configuration for publishing SwaggerUI for BC APIs [see #2315](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2315)
- add download and download to alpackagecache to product packages [see #1725](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/1725)
- Correct displayed id in product packages to show the appid instead of package id [see #2342](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2342)

## v0.11.61 / 0.11.62

- Accidental releases

## v0.11.60

- Add option to show actions with links on notifications [see #2141](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2141)
- Support assigning responsible user to organization, project or repository [see #2234](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2234)
- Increase performance for repository loading [see #1067](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/1067)
- Fix bug where container list was empty when a container from another tenant was present [see #2253](https://dev.azure.com/cc-ppi/General/_workitems/edit/2253)

## v0.11.59

- Implement workaround for auth issue [see #1926](https://dev.azure.com/cc-ppi/General/_workitems/edit/1926)

## v0.11.58

- Support assigning customer account to organization, project or repository [see #1753](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/1753)
- Add support for companion containers, i.e. non-BC containers connected to a "main" BC container [see #1970](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/1970)
- Support for new COSMO Deployment Tasks [see #1876](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/1876)
- Define a simple mechanism to trigger different behavior for custom startup scripts per Swarm [see #2194](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2194)

## v0.11.57

- Support Azure AD authentication for containers in the self-service [see #1775](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/1775)
- Also show meaningful error messages if a container start violates resource limits [see #2035](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2035)

## v0.11.56

- New Command "Add Dependency" for Product Package [see #1724](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/1724)
- Generate/Use all-orgs PAT instead of org-specific PAT when accessing artifacts in Azure DevOps [see #720](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/720)
- Show better error message if a container can't be created due to backend resource limits [see #1925](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/1925)
- When an error notification is pushed from the backend, it should appear as error [see #1981](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/1981)

## v0.11.55

- More robust identifaction of user email address [see #1908](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/1908)
- Remove unneccesary console logs [see #1909](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/1909)

## v0.11.54

- Go to modern authentication and fix dependency isses [see #1893](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/1893)

## v0.11.53

- Improved determination of API base URLs (esp. when using devMode) [see #1778](https://dev.azure.com/cc-ppi/General/_workitems/edit/1778)
- Use custom header of RabbitMQ messages to determine if it is an error message [see #1811](https://dev.azure.com/cc-ppi/General/_workitems/edit/1811)
- Get RabbitMQ hostname from configuration [see #1890](https://dev.azure.com/cc-ppi/General/_workitems/edit/1890)

## v0.11.52

- Allow to specify a company when converting a bacpac to a bak to remove all others from the backup [see #1672](https://dev.azure.com/cc-ppi/General/_workitems/edit/1672)
- Update to the new COSMO branding [see #1767](https://dev.azure.com/cc-ppi/General/_workitems/edit/1767)

## v0.11.51

- Improved error message if the organization, project or repository for a container can't be identified [see #1673](https://dev.azure.com/cc-ppi/General/_workitems/edit/1673)
- Fix linter problems [see #1671](https://dev.azure.com/cc-ppi/General/_workitems/edit/1671)
- Minor improvements [see #1632](https://dev.azure.com/cc-ppi/General/_workitems/edit/1632)
- Update container action sorting [see #1696](https://dev.azure.com/cc-ppi/General/_workitems/edit/1696)
- Added overview for IP packages [see #1572](https://dev.azure.com/cc-ppi/General/_workitems/edit/1572)

## v0.11.50

- Migration of the VS Code extension to the official COSMO CONSULT publisher [see #1632](https://dev.azure.com/cc-ppi/General/_workitems/edit/1632)

## v0.11.42

- Add license selection for standalone containers [see #1608](https://dev.azure.com/cc-ppi/General/_workitems/edit/1608)

## v0.11.41

- Support to set up arbitrary customNavSettings and customWebSettings in cosmo.json [see #1142](https://dev.azure.com/cc-ppi/General/_workitems/edit/1142)
- Get branch name for a container from the container labels and show it if defined [see #1555](https://dev.azure.com/cc-ppi/General/_workitems/edit/1555)
- Fix bug where "successfully started container" was displayed after stopping a container [see #1494](https://dev.azure.com/cc-ppi/General/_workitems/edit/1494)
- Add snapshot debugging configuration when creating launch.json configuration for a container [see #1530](https://dev.azure.com/cc-ppi/General/_workitems/edit/1530)

## v0.11.40

- Added Parameter to enable/disable performance counters for better monitoring, default is enabled [see #422](https://dev.azure.com/cc-ppi/General/_workitems/edit/422)
- Support creating containers with arbitrary version and country [see #1058](https://dev.azure.com/cc-ppi/General/_workitems/edit/1058)
- Fix bug where container list broke when a user has one or more demo containers [see #1510](https://dev.azure.com/cc-ppi/General/_workitems/edit/1510)

## v0.11.39

- Display errors on app creation [see #772](https://dev.azure.com/cc-ppi/General/_workitems/edit/772)
- Support special chars when creating bugs or feature requests [see #1424](https://dev.azure.com/cc-ppi/General/_workitems/edit/1424)
- Show name and description for process modifications [see #1455](https://dev.azure.com/cc-ppi/General/_workitems/edit/1455)
- Fixed: Release pipeline was created with corrupted artifact definition [see #1453](https://dev.azure.com/cc-ppi/General/_workitems/edit/1453)
- Show better caption on the file prompt when creating a backup for a container database [see #1488](https://dev.azure.com/cc-ppi/General/_workitems/edit/1488)
- Support restoring SaaS backups [see #1349](https://dev.azure.com/cc-ppi/General/_workitems/edit/1349)
- Fix bug where container list wasn't displayed for non-COSMO users [see #1262](https://dev.azure.com/cc-ppi/General/_workitems/edit/1262)

## v0.11.38

- Enable SSL verification [see #1383](https://dev.azure.com/cc-ppi/General/_workitems/edit/1383)
  This reverts the change of 0.11.37 as we found a backend configuration that works again

## v0.11.37

- Disable SSL verification [see #1383](https://dev.azure.com/cc-ppi/General/_workitems/edit/1383)
  **WARNING**: With this change SSL verification is disabled, which means that you might be open for https fraud. Because of https://github.com/microsoft/vscode/issues/134244, we have no other short-term solution, but we will work on turning this back as soon as possible. If you don't want to use this version, please manually go back to 0.11.36, but be aware that the extension most likely won't work.

## v0.11.36

- Allow retrieving running containers when there are multiple tasks for a service [see #1140](https://dev.azure.com/cc-ppi/General/_workitems/edit/1140)
- Allow to use COSMO hosted agents in release pipelines [see #1327](https://dev.azure.com/cc-ppi/General/_workitems/edit/1327)
- Ignore containers from another tenant when for the container list [see #1339](https://dev.azure.com/cc-ppi/General/_workitems/edit/1339)
- Add suggestions when error happening during Update CI/CD [see #1167](https://dev.azure.com/cc-ppi/General/_workitems/edit/1167)
- Encode branch name when creating container from branch to support branches with # in their name [see #1356](https://dev.azure.com/cc-ppi/General/_workitems/edit/1356)
- Set license variable name correctly to later allow updates [see #1363](https://dev.azure.com/cc-ppi/General/_workitems/edit/1363)

## v0.11.35

- Use dev endpoint of docker-automation only when devMode is enabled but not on debugMode [see #1165](https://dev.azure.com/cc-ppi/General/_workitems/edit/1165)
- Always use azdevops-automation URL if configured in settings [see #1181](https://dev.azure.com/cc-ppi/General/_workitems/edit/1181)
- Use correct login method for VS Code Azure Account extension [see #1182](https://dev.azure.com/cc-ppi/General/_workitems/edit/1182)
- Add project template support for product management. [see #1103](https://dev.azure.com/cc-ppi/General/_workitems/edit/1103)
- Fix problem when trying to find backend is connected [see #1311](https://dev.azure.com/cc-ppi/General/_workitems/edit/1311)
- Avoid unnecessary warnings about missing cosmo.json [see #969](https://dev.azure.com/cc-ppi/General/_workitems/edit/969)
- Regenerate image when starting a stopped container where the image was cleaned up in the meantime [see #998](https://dev.azure.com/cc-ppi/General/_workitems/edit/998)

## v0.11.34

- Change debug shortcuts as they were blocking standard shortcuts since 0.11.30 [see #1136](https://dev.azure.com/cc-ppi/General/_workitems/edit/1136)
- Fix bug where a PAT is not passed to a service for downloading artifacts when there is a config-specific DevOps artifact but no top-level one [see #1159](https://dev.azure.com/cc-ppi/General/_workitems/edit/1159)

## v0.11.33

- Fix bug causing the connection to the docker-automation backend to fail [see #1120](https://dev.azure.com/cc-ppi/General/_workitems/edit/1120)

## v0.11.32

- Fix bug where Database Backups within a configuration in the `bcartifacts` section of the `cosmo.json` weren't used [see #1113](https://dev.azure.com/cc-ppi/General/_workitems/edit/1113)
- Hide settings intended only for development purposes [see #1115](https://dev.azure.com/cc-ppi/General/_workitems/edit/1115)

## v0.11.31

- Only encode URLs once, not twice [see #1097](https://dev.azure.com/cc-ppi/General/_workitems/edit/1097)

## v0.11.30

- Add the possibility to invoke a database backup for a container (see [docs](https://docs.cosmoconsult.com/en-us/cloud-service/devops-docker-selfservice/vsc-extension/backup-database.html))
- Add a second view that shows all currently running containers (see [docs](https://docs.cosmoconsult.com/en-us/cloud-service/devops-docker-selfservice/vsc-extension/show-all-containers.html))
- Better error handling when creating containers [see #862](https://dev.azure.com/cc-ppi/General/_workitems/edit/862)
- The lists below "WorkItems" are now sorted in the same way as the original queries [see #925](https://dev.azure.com/cc-ppi/General/_workitems/edit/925)
- Fix error preventing the launch.json to be updated when the configurations field is not present, pretty-print config [see #970](https://dev.azure.com/cc-ppi/General/_workitems/edit/970)
- Fix creation of release pipeline used wrong ordered stages caused by VSCode ItemList sorting. [see #989](https://dev.azure.com/cc-ppi/General/_workitems/edit/989)
- Rename "Update license" to "Update variables/licenses" as it now does both [see #354](https://dev.azure.com/cc-ppi/General/_workitems/edit/354)
- Add the possibility to set additional owners for a container so that it appears in their tooling as well [see #500](https://dev.azure.com/cc-ppi/General/_workitems/edit/500)
- Support the new workspace trust feature (https://code.visualstudio.com/docs/editor/workspace-trust) of Visual Studio Code [see #1029](https://dev.azure.com/cc-ppi/General/_workitems/edit/1029)
- Release "create container from branch" as regular feature, no longer a preview feature (https://docs.cosmoconsult.com/en-us/cloud-service/devops-docker-selfservice/vsc-extension/create-branch-container.html)
- Fix a problem where creating a container from a branch was impossible if the branch name contained a # [see #1017](https://dev.azure.com/cc-ppi/General/_workitems/edit/1017)
- Remove the action to create a new app from a container image as those are now deprecated for 4 months (https://freddysblog.com/2021/02/10/removing-all-specific-nav-and-business-central-docker-images/, https://dev.azure.com/cc-ppi/General/_workitems/edit/1069/)
- Show detailed error responses for project creation [see #380](https://dev.azure.com/cc-ppi/General/_workitems/edit/380)

## v0.11.29

- Fix issue with PATs [see #964](https://dev.azure.com/cc-ppi/General/_workitems/edit/964)

## v0.11.28

- Fix default for enablePremium [see #933](https://dev.azure.com/cc-ppi/General/_workitems/edit/933)

## v0.11.27

- The initial login sometimes had issues, especially when switching tenants. This should make it more robust [see #912](https://dev.azure.com/cc-ppi/General/_workitems/edit/912)
- If the backend Swarm configuration was defined with a trailing slash, this could cause problems [see #908](https://dev.azure.com/cc-ppi/General/_workitems/edit/908)
- New command `Update Task groups` added to import/update Task group templates for setup of Release Pipelines in a project (https://docs.cosmoconsult.com/en-us/cloud-service/devops-docker-selfservice/vsc-extension/update-task-groups.html)
- New command `Create Release Pipeline` added to setup Release Pipelines for Apps in a project (https://docs.cosmoconsult.com/en-us/cloud-service/devops-docker-selfservice/vsc-extension/create-release-pipeline.html)
- Next Major/Minor pipelines added (https://docs.cosmoconsult.com/en-us/cloud-service/devops-docker-selfservice/pipelines/next.html)
  - Command added to setup Next Major/Minor pipelines for repository [see #736](https://dev.azure.com/cc-ppi/General/_workitems/edit/736)
  - Fix: Command "setup Next Major/Minor pipelines" was not added in extension [see #736](https://dev.azure.com/cc-ppi/General/_workitems/edit/736)
  - Changed: "setup Next Major/Minor pipelines" command no longer accesses Azure KeyVault secrets [see #736](https://dev.azure.com/cc-ppi/General/_workitems/edit/736)
- Provide a public API for the extension to allow for extensibility [see #900](https://dev.azure.com/cc-ppi/General/_workitems/edit/900)
- Allow onboarding of existing projects to the self-service [see #610](https://dev.azure.com/cc-ppi/General/_workitems/edit/610)
- If artifacts were defined without an ignoreIn config, they were ignored [see #929](https://dev.azure.com/cc-ppi/General/_workitems/edit/929)
- Support optionally enabling premium SKU for the default user (https://docs.cosmoconsult.com/en-us/cloud-service/devops-docker-selfservice/containers/setup-cosmo-json.html#docker-specific-parameters, see param `enablePremium`)

## v0.11.26

- Fix bug where downloading artifacts didn't work because of missing token scope [see #906](https://dev.azure.com/cc-ppi/General/_workitems/edit/906)
- Fix the image used for converting bacpacs to baks [see #728](https://dev.azure.com/cc-ppi/General/_workitems/edit/728)

## v0.11.25

- Allow to manually stop and start containers. **Please note:** This will **keep** the database, but it will **not keep** the file system and a full initialization of the container will be performed, excluding the .app, .fob and rapidstart imports. You can find out more in the [documentation](https://docs.cosmoconsult.com/en-us/cloud-service/devops-docker-selfservice/vsc-extension/startstop-container.html)
- Allow to set a locale through cosmo.json when starting a BC container as this can be used to set locale and culture information in the container (https://github.com/microsoft/nav-docker/blob/573359a13e7ac57f5c42b1aeca882a39ee55932b/generic/Run/SetupVariables.ps1#L215-L222)
- Get RabbitMQ connection information from Azure KeyVault [see #702](https://dev.azure.com/cc-ppi/General/_workitems/edit/702)
- Handle entites differently for Non-COSMO users [see #690](https://dev.azure.com/cc-ppi/General/_workitems/edit/690)
- Fix a bug where Graph auth tokens were always requested for COSMO and not the actually selected AD tenant [see #759](https://dev.azure.com/cc-ppi/General/_workitems/edit/759)
- Find the URL of the key vault to be used from a new backend service to allow dedicated key vaults per entity / customer [see #695](https://dev.azure.com/cc-ppi/General/_workitems/edit/695)
- Find out which artifact-based app configurations are possible when creating a new app by asking the new service that translates available license to possible configurations [see #705](https://dev.azure.com/cc-ppi/General/_workitems/edit/705)
- Move to tenant ID for determining if a user is a Cosmonaut and support COSMO guest users in different ADs [see #759](https://dev.azure.com/cc-ppi/General/_workitems/edit/759)
- Allow to connect to an azdevops-automation backend running in the Swarm [see #762](https://dev.azure.com/cc-ppi/General/_workitems/edit/762)
- Move KeyVault secret retrieval to the backend APIs [see #762](https://dev.azure.com/cc-ppi/General/_workitems/edit/762)
- Command added to setup Next Major/Minor pipelines for repository [see #736](https://dev.azure.com/cc-ppi/General/_workitems/edit/736)
- Allow configuring Symbol Loading in cosmo.json, the default value if nothing is specified is true [see #681](https://dev.azure.com/cc-ppi/General/_workitems/edit/681)
- Move check if license URL is already in variable group to the backend [see #762](https://dev.azure.com/cc-ppi/General/_workitems/edit/762)
- Move updating license variables in the variable groups to the backend [see #762](https://dev.azure.com/cc-ppi/General/_workitems/edit/762)
- Retrieve SAS token in backend when updating CI/CD repository [see #762](https://dev.azure.com/cc-ppi/General/_workitems/edit/762)
- Add method to get the cosmo.json from a repository with all variables resolved [see #762](https://dev.azure.com/cc-ppi/General/_workitems/edit/762)
- Retrieve KeyVault secrets in backend when creating a project [see #762](https://dev.azure.com/cc-ppi/General/_workitems/edit/762)

## v0.11.24

- Improve launch.json creation process by using "Al Test Tool" page as startup object for test app

## v0.11.23

- Allow to select the BC artifact configuration (typically current, nextMinor, nextMajor) when starting a container. This allows to start a preview container when needed [see #538](https://dev.azure.com/cc-ppi/General/_workitems/edit/538)
- Show container version directly after the container name to make the type, version and localization immediately visible
- Don't allow to create a project with the same name as the organization as this will lead to a feed name clash [see #596](https://dev.azure.com/cc-ppi/General/_workitems/edit/596)
- Allow the service API to define the dockerParamsForBuild because it was static in the extension anyway and there isn't a good scenario currently where this might be different for different clients [see #601](https://dev.azure.com/cc-ppi/General/_workitems/edit/601)
- Fix dependencies with security issues (npm audit fix)

## v0.11.22

- Encode the branch name when opening a PR from a branch [see #595](https://dev.azure.com/cc-ppi/General/_workitems/edit/595)

## v0.11.21

- When you created a bug report and you had a default password set up in the extension settings, it was added to the bug report, which might have been a security risk [see #581](https://dev.azure.com/cc-ppi/General/_workitems/edit/581)
- When you created a bug report through the generic functionality, you weren't asked for a title
- You can now also create a feature request in the same place where you can create a bug report

## v0.11.20

- Fix missing icons

## v0.11.19

- Release support for custom scripts as a preview feature

## v0.11.18

- Support adding custom scripts to project repository to override default logic at container start [see #62](https://dev.azure.com/cc-ppi/General/_workitems/edit/62)

## v0.11.17

- Fix additional folder URL for created containers to use the current AzDevOps Automation API

## v0.11.16

- Fix a bug that prevented dev containers to be created if an artifact without an ignoredIn definition was set up in cosmo.json

## v0.11.15

- Add additional artifacts for trial

## v0.11.14

- Show "my queries" and "shared queries": To allow more flexibility which work items are visible, you will now also see "my queries" and "shared queries" in the list [see #108](https://dev.azure.com/cc-ppi/General/_workitems/edit/108)
- Add "Work on this (create branch)" functionality for work items: See [documentation](https://docs.cosmoconsult.com/en-us/cloud-service/devops-docker-selfservice/vsc-extension/branches.html#create-a-branch-to-work-on-a-work-item)

## v0.11.13

- Add additional artifacts for trial

## v0.11.12

- Add an action to convert a .bacpac file to a .bak file ([documentation](https://docs.cosmoconsult.com/en-us/cloud-service/devops-docker-selfservice/containers/convert-bacpac-to-bak.html))
- Allow to set up whether multi-tenancy is active or not in containers [see #465](https://dev.azure.com/cc-ppi/General/_workitems/edit/465)
- Don't default isolation mode to "hyperv" in the extension but use the backend default of "process" because Windows Server 2019 (2004) has problems with network shares and shared disks in hyperv isolation. Allow override through a param "isolation" in cosmo.json
- Fixes to support trials for Non-COSMO users:
  - Authentication must be possible for Non-COSMO users as well [see #481](https://dev.azure.com/cc-ppi/General/_workitems/edit/481)
  - Entity handling because we currently only support COSMO entities [see #482](https://dev.azure.com/cc-ppi/General/_workitems/edit/482) because we currently only support COSMO entities
  - Secret handling because we currently only support Azure Key Vault access for COSMO employees [see #484](https://dev.azure.com/cc-ppi/General/_workitems/edit/484)
  - Image handling because we only support a limited number of images for trials [see #484](https://dev.azure.com/cc-ppi/General/_workitems/edit/484)

## v0.11.11

- Show the branches in a repository with their creators and allow creating a PR for a branch with an action on that branch ([documentation](https://docs.cosmoconsult.com/en-us/cloud-service/devops-docker-selfservice/vsc-extension/branches.html))
- Allow to select a different tenant if needed ([documentation](https://docs.cosmoconsult.com/en-us/cloud-service/devops-docker-selfservice/vsc-extension/tenant.html))
- Open organization in browser, same as for other browsers

## v0.11.10

- Allow definition of favorite organizations including potentially filtering on them ([documentation](https://docs.cosmoconsult.com/en-us/cloud-service/devops-docker-selfservice/vsc-extension/favorite-orgs.html))
- Use new startup file handling ([documentation](https://dev.azure.com/cc-ppi/General/_workitems/edit/382))
- Add action to open [documentation](https://docs.cosmoconsult.com/en-us/cloud-service/devops-docker-selfservice)
- Refresh the organization after an entity has been assigned ([documentation](https://dev.azure.com/cc-ppi/General/_workitems/edit/394))
- Allow container access even when the container isn't running ([documentation](https://dev.azure.com/cc-ppi/General/_workitems/edit/401))

## v0.11.9

- "Create organization" now links to the website as automatically creating it was confusing

## v0.11.8

- Allow storing and automatically retrieving a PAT and passing it to containers for downloading Azure DevOps artifacts on startup
- Enable artifact download again

## v0.11.7

- Allow spaces in app names

## v0.11.6

- Display icon next to WorkItems for opening them directly instead of via the context menu
- Get direct feedback after creating a container

## v0.11.5

- Add US locale for selection when creating an app

## v0.11.4

- Meaningful error message if Swarm URL is missing

## v0.11.3

- Don't allow empty app names

## v0.11.2

- Fix for opening container in browser or creating launch.json if no bcartifacts are defined

## v0.11.1

- Stability improvements, mainly around special characters in org or project names

## v0.11.0

- Support artifacts in addition to Docker images. Images are still supported, so existing projects won't break.
- Use display name of the container for BC launch configs
- Support multi-tenancy in sandboxes
- Enable opening non-BC repos
- Go to bccontainerhelper

## v0.10.7

- Fix publishing problem

## v0.10.6

- Allow defining a custom name for a container
- Add setting for default username / password for containers
- Support reading cosmo.json from other branch than master

## v0.10.5

- Support specification of bakfile in cosmo.json
- Support using the Azure File Share for artifacts when creating the container

## v0.10.4

- Get Docker backend URL from Azure Key Vault

## v0.10.3

- Check if there are actually changes during CI/CD repo updates
- Add config settings when creating a bug report

## v0.10.2

- Consider portainer endpoints for entity-specific Swarms
- Fix visibility of container actions

## v0.10.1

- Fix localhost detection

## v0.10.0

- BREAKING CHANGE: Containers are now connected to repositories, not projects. Please get in touch with team PPI (Michael Megel or Tobias Fenster) if you need to migrate projects
- Creating a new app (repository, pipeline, pool) is now separated from creating a project which should make the setup of multi-app projects easier
- Config and dependency handling for containers is done using a config file in the repo
- Add integrated option to file bug report for team PPI
- Portainer features: Access to container stats, inspect and log are new; access to terminal and fileshare are no longer in preview
- New action to update the CI/CD repo
- Check if user is Project Collection Administrator if necessary
- Backend API versioning

## v0.9.23

- Stability improvements

## v0.9.22

- Support different swarms and remove the extension setting (URL is read from the project)

## v0.9.21

- Support custom .bak files as databases for containers

## v0.9.20

- Preview features: Open terminal in container and open file share in container
- Support process and project customizations
- Fix group handling
- Workitem import is now a preview feature

## v0.9.19

- Show COSMO office instead of AD abbreviation
- Fix user handling
- Minor stability fixes

## v0.9.18

- Support MFA login by now logging in through the Azure Account extension
- Temporarily disable artifact download (because of MFA support)
- Check if required configurations are missing in the project
- Support more languages: Austria, Hungary, Romania, Spain and Sweden

## v0.9.17

- Default isolation to hyperv
- Allow setup of .dlls and .apps when starting a container

## v0.9.16

- Assign entity connection when creating organizations
- Allow assigning an entity later
- Warn if an entity is not assigned
- Show entity assignment in organization list
- Cleanup organization and project list
- Allow BC license updates for projects

## v0.9.15

- Fix Docker image selection during project creation

## v0.9.14

- Fix missing icons

## v0.9.13

- package bump, explicitely add jsprim

## v0.9.12

- Allow sandbox as container image for SaaS projects
- Fix license selection for W1 projects
- Allow file selection for WI import
- Add insider registry credential reading

## v0.9.11

- Fix missing icons

## v0.9.10

- Fix artifact download for projects with special characters

## v0.9.9

- Don't overwrite full launch config but only adjust the relevant fields (thanks to Bert Krätge for the first "external" Pull Request!)
- Only enable keyboard shortcuts in debug mode

## v0.9.8

- Initial WorkItem import capability (thanks to Fabian Lippik and Franziska Frese for the input)
- Selection of desired locale (currently DE and FR)
- Selection of subscription and resource group to use when creating an organization
- Associate WorkItem to commit and only show closed WorkItems in the "Assigned to me" list (thanks to Sven Biernat for the idea)
- Re-enable artifact download
- Support login to dedrsdevops.azurecr.io

## v0.9.7

- Support login to docker.cosmoconsult.com

## v0.9.6

- Fix refactor miss

## v0.9.5

- Download artifacts from Azure BLOB storage
- Add meaningful build icons

## v0.9.4

- Validate org and project name before creating

## v0.9.3

- Allow selection of BC version when creating a new project

## v0.9.2

- Allow overriding artifacts source locations for DevOps and project templates
- Open project in browser with right-click

## v0.9.1

Pilot readiness

## v0.1.1

Support artifacts, views and feeds in organization scope

## v0.1.0

First public release

---
    title: Visual Studio Code Extension Changelog
    description: Visual Studio Code Extension Changelog
    orig-source: https://dev.azure.com/cc-ppi/Self-Service/_git/azdevops-vscode-extension?path=/CHANGELOG.md
---

# Visual Studio Code Extension Changelog

All notable changes to the Visual Studio Code Extension

## 1.30.0 (2025-05-09)

- Fix long loads of the tree, implementing pruneExpiredEntries function responsible for cleaning up expired cache entries (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4299/)

## 1.29.0 (2025-05-06)

- Fix typo in title of Universal Packages tree item
- Add support for artifact inheritance and allow syncMode & importscope to be set per-artifact (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4254)
- Fixed bug where branch containers were shown under the branches of wrong repositories (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4317)

## 1.28.1 (2025-03-28)

- Fix typo in title of containers tree view (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4282)

## 1.27.0 - 1.28.0 (2025-03-19)

- Add support for custom nuget feeds per project (in cosmo.json) (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4268)

## 1.26.0 (2025-03-14)

- Product packages view supports now to display nuget packages. Configuration is made per Alpaca subscription in the backend (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4262)
- "Save to packagecache" supports now multiroot workspaces. Every workspacefolder which includes an app.json will be considered (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4266)

## 1.25.0 (2025-03-08)

- Improve user prompt for customer account assignment (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4235)
- Improve performance for opening repos with many artifacts (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4249)
- Enhance owner change process for containers with validation and confirmation prompt (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4241)
- Add debug/attach configurations for AL to vscode launch.json (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4238)

## 1.24.0 (2025-02-12)

- Moved bug reports and feature requests to github issues (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4204/)
- Fixed bug where "Open Terminal" or "Open Fileshare" downloads an empty SSH keyfile (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4216/)

## 1.23.0 (2025-01-21)

- Restrict permissions for the private key file of a container to the current user (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4200)

## 1.22.0 (2024-12-16)

- Add setting to make (auto-managed) PAT lifetime configurable: `cc-azdevops.autoManagePATLifetime` (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4182)

## 1.21.0 (2024-12-09)

- Add optional setting to always show the container id: `cc-azdevops.alwaysShowContainerId`
- Improve container status/health checks (esp. after restarts)
- Improve documentation of auto start/stop actions and settings

## 1.20.0 (2024-11-26)

- Fix issue where the notification (incl. postpone action) for the auto stop of containers was not shown (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4163)
- Fix issue where the notification for the auto stop of containers was shown if the current time was higher than the shutdown time
- Add refresh of container tree items after changing the auto start or stop informations (incl. postpone of auto stop)
- Fix issue where the healthcheck of containers was only run once

## 1.19.0

- Fix issue where the healthcheck of deleted containers is not stopped/removed (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4155)
- Fix issue where the same container can not be listed under the repository and the branch (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4156)
- Do not subsribe to rabbitMQ from k8s cluster (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4159)

## 1.18.0

- Work around a powershell deployment issue by using pwsh (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4103)

## 1.17.0

- Fix issue where an error may be shown when deleting a container (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4100)
- Fix issue where the displayname of a cloned container was not correctly set (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4101)

## 1.16.0

- Improve formatting of container logs (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4089)

## 1.15.0

- Fix problem where part of a setting could be read as "AI" instead of "AL" (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/272)
- Add support to clear existing symbols before downloading symbols from a container (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4060/)
- Fix problem where the check for owned branches could fail (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4063)
- Add support to prune obsolete configurations of the vscode launch.json (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2282/)
- Fix problem where the container terminal/fileshare were not useable on MacOS (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4067/)

## 1.14.0

- Extend context menu of "Apps in filesystem" of a container with "Copy FileShare Path to Clipborad" and "Add App to container configuration" (https://dev.azure.com/cc-ppi/General/_workitems/edit/4029)
- Moved Launch.json creation/extension to k8s-automation (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4004/)
- Fix a problem where the launch.json could not be extended when the file contains comments or trailing commas (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4004/)
- Display information if the CI/CD repository was updated during the creation of an app (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4032)
- Fix problem where the value “alwaysAsk” of the seeting “Handling Of Existing Launch JSON” did not lead to the expected user query
- Add support to cache the container credentials and download symbols directly after successfully creating the launch.json (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/272)
- Fix problem where COSMO entites could not be shown or assigned anymore due to invalid values in the corresponding data source (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4052)

## 1.13.0

- Fix problem with launch.json creation for containers using AAD auth (https://dev.azure.com/cc-ppi/General/_workitems/edit/3876)

## 1.12.0

- Update readme with more information (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4019)

## 1.11.0

- Extended cosmo.json with configurations to support translations of multiple languages (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3704)
- Allow update of customNavSettings for a container based on potentially changed cosmo.json (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3993)

## 1.10.3

- Fix a problem where the autostart and autostop mode was not displayed correctly (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3965)

## 1.10.2

- Fix problem where the runs of a pipeline could not be shown (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3939)

## 1.10.1

- Fix problem where the backend url could not be determined for certain projects (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3938)

## 1.10.0

- Fix product package action "Save to packagecache" extracted invalid app file (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3907)
- Make DLL collection execution async and more stable (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3917/)

## 1.9.0

- Fix problem with launch.json creation for containers using AAD auth (https://dev.azure.com/cc-ppi/General/_workitems/edit/3876)
- Fix caching issue when release pipeline is created (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3898)
- Fix Container actions are shown in new Alpaca extension (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3899/)

## 1.8.0

- Use COSMO portal for Bug reports & feature requests for COSMO users (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3868)
- Improve waiting for container ip address and SSH connection (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3848)

## 1.7.0

- Support "main" as default branch, change default from "master" to "main" (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3763)

## 1.6.1

- Fix containers in treeview do not work/update after VS Code Update 1.85 (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3811)

## 1.6.0

- Allow restarting the NST/BCST (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3756)
- Allow renaming a container (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3757)
- Fix companion creation (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3735)

## 1.5.0

- Allow interacting with multiple IP artifacts at once (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3575)
- Allow selection of dev scope as well when deploying an app (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3549)
- Remove keytar dependency (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3665)

## 1.4.1

- Fix unnecessary backend calls if container has been externally removed (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3572)
- Add missing refresh of container view after clone (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3573)

## 1.4.0

- Allow to configure a whitelist of visible projects (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3551)
- Allow selection of scope when deploying an app (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3549)
- Allow to configure replacement of launch.json when adding a configuration (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3550)
- Warn user that "change owner" causes a restart if the container is currently running (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3561)

## 1.3.5

- Initialize backend in language server before making a request that could cause backend not found error (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3527)

## 1.3.4

- Fix problem with backend URLs being set up without the proper context (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3507)

## 1.3.3

- Reenable container upgrades (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3399)

## 1.3.2

- Add code completion for cosmo.json (<https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3497>)
- Check version of cosmo.json and suggest updating it to latest version (<https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3486>)

## 1.3.1

- Fix problems in backend calls with circular references (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3500)
- Fix problem with backend URLs being set up without the proper context (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3507)

## 1.3.0

- Validate cosmo.json against schema, underline issue in editor and show them in Problems tab (<https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3485>)
- Only show Postpone message when autostart is activated (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3453)
- Do not show "Create Bug" action if the launch.json file was created successfully (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3461)
- Allow suppressing of the startup config (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3478)
- Don't crash if a local repo without fetchUrl is opened (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3477)
- Don't ask to create a launch.json config if no project is opened (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3476)
- Fix minor typos in messages (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3484)
- Add ability to show and deploy apps in container filesystem to the container (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3487)

## 1.2.2

- Enforce autostop, disable autostart in 4PS (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3451)
- Update CI/CD repo and Taskgroups from project backend (https://dev.azure.com/cc-ppi/General/_workitems/edit/3445)

## 1.2.1

- Hotfix: Don't show own containers created in other tenants

## 1.2.0

- Add bacpac to bak conversion for Kubernetes (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3192)

## 1.1.5

- Fix onlyShowMyBranches for cosmo users (https://dev.azure.com/cc-ppi/General/_workitems/edit/3398)
- Fix postpone auto shutdown is counting backwards (https://dev.azure.com/cc-ppi/General/_workitems/edit/3388)

## 1.1.4

- Fix Auto start/stop info differs when loaded from cache (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3397)

## 1.1.3

- Fix problem backend url not determined when cache expired (https://dev.azure.com/cc-ppi/General/_workitems/edit/3386)

## 1.1.2

- Show containers running in cosmo legacy swarm (https://dev.azure.com/cc-ppi/General/_workitems/edit/3366)

## 1.1.1

- Fix assign entity (https://dev.azure.com/cc-ppi/General/_workitems/edit/3355)

## 1.1.0

- Allow to create and handle startup links for arbitrary containers (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3332)
- New authentication, caching, cleanup (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3126)
- Fix corner cases around ondemand containers and inaccessible orgs (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3334)
- Allow to create tokens for app regs as well (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3335)
- Changing owners no longer requires the container to be running (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3342)

## 1.0.3

- Fix issue where extension wrongly used overriden K8s url (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2995)

## 1.0.2

- Fix an issue where clicking on a branch name caused an error 'undefined' (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3283)
- Fix an issue where ondemand containers with locale w1 couldn't be created (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3286)

## 1.0.1

- Fix an issue where Swarm backends where called despite overrideK8sURL being set (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3269)
- Fix an issue where creating the launch.json config didn't work immediately after creating a container (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3275)

## 1.0.0

- Support COSMO guest users working together on COSMO projects (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2995)

## 0.11.83

- Fix issue where containers from central cluster weren't shown if COSMO entity's default wasn't set to the central cluster already (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2995)

## 0.11.82

- Usability improvements regarding organization and container list (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2995)

## 0.11.81

- Improve usability for DLL download (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3225)

## 0.11.80

- Enable artifact deployment to container in k8s-backends (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3158)
- Correctly show created date in k8s-backends (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3159)
- Fix SSH key handling in certain scenarios (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3160)
- Use project backend to update task groups and create release pipelines (https://dev.azure.com/cc-ppi/General/_workitems/edit/3164)
- Support creating BC22+ containers and projects without license (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2995)
- Show auto start/stop info for k8s containers (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3212)
- Re-enable AAD recognition for k8s containers (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3226)
- Enable DLL download to collect DLLs on demand (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3225)

## 0.11.79

- Use project backend to update ci/cd repo

## 0.11.78

- Fix wrong auto start time

## 0.11.77

- Enable Auto Shutdown/Startup for Containers running on kubernetes (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2996/)
  - New settings to set default shutdown/startup time and mode

## 0.11.76

- Fix naming issues in some actions (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3018)
- Handle existing malformed launch.json gracefully instead of failing silently (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3019)

## 0.11.75

- Allow the deployment of arbitrary build artifacts to arbitrary containers (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2968)
- Add configuration options for container name proposals (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2971)
- Show success or error feedback when creating launch.json configurations (https://dev.azure.com/cc-ppi/General/_workitems/edit/2972)
- Optionally show which cosmo.json has been used when creating a container (https://dev.azure.com/cc-ppi/General/_workitems/edit/2973)
- Fix auto refresh config names (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2888)
- Make cloning feature available for AKS (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2904/)
- Support separate namespaces with Kubernetes (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2841/)
- New Action to show image build error message from container (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2848/)
- Show only current available actions in context menu of containers and organizations (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2889/)

## 0.11.74

- Add an action to clone a container (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2579)
- Add a preview action to upgrade a container (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2145)
- Make the backend for creating bug reports and feature request configurable (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2938)
- Hide meaningless password in AAD containers, show owners if multiple (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2940)
- Add a preview action with a flow to create a development environment: create branch, create container, create launch.json (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2939)
- Auto refresh log view of k8s containers. (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2888)
  - Auto refresh stops when container is healthy or timeout is exceeded
  - new setting Log Lines
  - new setting Log refresh Interval
  - new setting Log Auto refresh Timout
- Remove RabbitMQ dependency for Kubernetes (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2957/)

## 0.11.73

- Bring in features from Azure DevOps Simplify (https://marketplace.visualstudio.com/items?itemName=tfenster.azdevops-vscode-simplify) until version 0.0.7 (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2845):
  - Auto-expand organization and project that contains the local git repository, if any
  - Show and allow to change the current Azure tenant
  - Optimize branch create for workitem: Local branch is also created and checked out, configuration options for default branch prefixes are respected
  - Add new action "COSMO Alpaca: Select WorkItem to associate with commit" that opens a searchable list of workitems to associate with a commit
- Fix status indicator on containers (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2782/)
- Fix a bug where repositories with cosmo.json files in subfolders incorrectly claimed that cosmo.json was missing (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2840)
- Show "starting" instead of "Running" during container startup (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2842)
- Also show the age of a container ("created at") in the container tree (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2747)
- Add devcontainer support (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2850)

## 0.11.72

- First version with support for both Docker Swarm and Kubernetes backends

## 0.11.71

- Fix bug where the branch list and filter didn't work as expected (https://dev.azure.com/cc-ppi/General/_workitems/edit/2696)
- Improve error handling for eventlog download, allow action on docker treeview (https://dev.azure.com/cc-ppi/General/_workitems/edit/2694/)
- Special handling for IP artifacts from master: Only show latest, add reference with wildcard (https://dev.azure.com/cc-ppi/General/_workitems/edit/2699)
- Add an action to download a package of all DLLs required for base app modifications (https://dev.azure.com/cc-ppi/General/_workitems/edit/2709)
- Prepare migration to k8s
- Show containers from central clusters (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2736/)
- Fix bug where container creation fails if DevOpsArtifacts are missing in cosmo.json (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2759/)

## 0.11.70

- Fix bug where tenant was checked to early on activate (https://dev.azure.com/cc-ppi/General/_workitems/edit/2669)

## 0.11.69

- Add setting to trigger behavior that only shows the branches created by the current user and default branches (main/master) (https://dev.azure.com/cc-ppi/General/_workitems/edit/2606/)
- Add quick toggles to switch "show only favorite organizations" and "show only my branches" settings (https://dev.azure.com/cc-ppi/General/_workitems/edit/2607/)
- Update dependencies in cosmo.json only if the version is below min Version (https://dev.azure.com/cc-ppi/General/_workitems/edit/2586/)
- Customer Assignment: show customer no. in selection (https://dev.azure.com/cc-ppi/General/_workitems/edit/2516)
- Respect the selected auth mode of the container when creating a launch.json config (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2170)
- Allow to create cosmo.json based on IP artifact (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2381) with license selection if the artifact is W1 (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2560) and in the right folder, optionally adding it to the workspace (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2577/)
- Support repositories with cosmo.json files in subfolders (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2528)
- Azure File Share as an alternative backend for IP packages (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2217)
- Azure File Share IP packages can be deployed directly to containers (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2603)

## 0.11.68

- Fix emergency button on container create (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2544)

## 0.11.67

- Add emergency button on container start (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2544)

## 0.11.66

- Extended error message for incompatibel workspace, when download packages to package chache (https://dev.azure.com/cc-ppi/General/_workitems/edit/2406)
- Numeric sort of product package versions (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2463)
- Fix typos in pipeline name (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2474)

## 0.11.65

- Add possibility to overrule customer container limit (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2304)
- Use container state through new backend service directly instead of BC health service (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2232/)
- Add possibility to create Minimum Check and Localization Check pipelines (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/1304/)
- Support retrieving favorite organizations from backend only (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/1067)
- Fix bug where a SaaS backup was not recognized when selecting a specific BC Artifact configuration (https://dev.azure.com/cc-ppi/General/_workitems/edit/2374)

## 0.11.63 / 0.11.64

- Support configuration for publishing SwaggerUI for BC APIs (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2315/)
- add download and download to alpackagecache to product packages (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/1725/)
- Correct displayed id in product packages to show the appid instead of package id (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2342/)

## 0.11.61 / 0.11.62

- Accidental releases

## 0.11.60

- Add option to show actions with links on notifications (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2141/)
- Support assigning responsible user to organization, project or repository (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2234)
- Increase performance for repository loading (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/1067)
- Fix bug where container list was empty when a container from another tenant was present (https://dev.azure.com/cc-ppi/General/_workitems/edit/2253)

## 0.11.59

- Implement workaround for auth issue (https://dev.azure.com/cc-ppi/General/_workitems/edit/1926)

## 0.11.58

- Support assigning customer account to organization, project or repository (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/1753/)
- Add support for companion containers, i.e. non-BC containers connected to a "main" BC container (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/1970/)
- Support for new COSMO Deployment Tasks (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/1876/)
- Define a simple mechanism to trigger different behavior for custom startup scripts per Swarm (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2194)

## 0.11.57

- Support Azure AD authentication for containers in the self-service (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/1775/)
- Also show meaningful error messages if a container start violates resource limits (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2035/)

## 0.11.56

- New Command "Add Dependency" for Product Package (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/1724)
- Generate/Use all-orgs PAT instead of org-specific PAT when accessing artifacts in Azure DevOps (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/720/)
- Show better error message if a container can't be created due to backend resource limits (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/1925/)
- When an error notification is pushed from the backend, it should appear as error (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/1981/)

## 0.11.55

- More robust identifaction of user email address (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/1908)
- Remove unneccesary console logs (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/1909)

## 0.11.54

- Go to modern authentication and fix dependency isses (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/1893)

## 0.11.53

- Improved determination of API base URLs (esp. when using devMode) (https://dev.azure.com/cc-ppi/General/_workitems/edit/1778/)
- Use custom header of RabbitMQ messages to determine if it is an error message (https://dev.azure.com/cc-ppi/General/_workitems/edit/1811/)
- Get RabbitMQ hostname from configuration (https://dev.azure.com/cc-ppi/General/_workitems/edit/1890/)

## 0.11.52

- Allow to specify a company when converting a bacpac to a bak to remove all others from the backup (https://dev.azure.com/cc-ppi/General/_workitems/edit/1672)
- Update to the new COSMO branding (https://dev.azure.com/cc-ppi/General/_workitems/edit/1767)

## 0.11.51

- Improved error message if the organization, project or repository for a container can't be identified (https://dev.azure.com/cc-ppi/General/_workitems/edit/1673/)
- Fix linter problems (https://dev.azure.com/cc-ppi/General/_workitems/edit/1671/)
- Minor improvements (https://dev.azure.com/cc-ppi/General/_workitems/edit/1632/)
- Update container action sorting (https://dev.azure.com/cc-ppi/General/_workitems/edit/1696)
- Added overview for IP packages (https://dev.azure.com/cc-ppi/General/_workitems/edit/1572)

## 0.11.50

- Migration of the VS Code extension to the official COSMO CONSULT publisher (https://dev.azure.com/cc-ppi/General/_workitems/edit/1632/)

## 0.11.42

- Add license selection for standalone containers (https://dev.azure.com/cc-ppi/General/_workitems/edit/1608)

## 0.11.41

- Support to set up arbitrary customNavSettings and customWebSettings in cosmo.json (https://dev.azure.com/cc-ppi/General/_workitems/edit/1142)
- Get branch name for a container from the container labels and show it if defined (https://dev.azure.com/cc-ppi/General/_workitems/edit/1555)
- Fix bug where "successfully started container" was displayed after stopping a container (https://dev.azure.com/cc-ppi/General/_workitems/edit/1494)
- Add snapshot debugging configuration when creating launch.json configuration for a container (https://dev.azure.com/cc-ppi/General/_workitems/edit/1530)

## 0.11.40

- Added Parameter to enable/disable performance counters for better monitoring, default is enabled (https://dev.azure.com/cc-ppi/General/_workitems/edit/422/)
- Support creating containers with arbitrary version and country (https://dev.azure.com/cc-ppi/General/_workitems/edit/1058)
- Fix bug where container list broke when a user has one or more demo containers (https://dev.azure.com/cc-ppi/General/_workitems/edit/1510)

## 0.11.39

- Display errors on app creation (https://dev.azure.com/cc-ppi/General/_workitems/edit/772)
- Support special chars when creating bugs or feature requests (https://dev.azure.com/cc-ppi/General/_workitems/edit/1424/)
- Show name and description for process modifications (https://dev.azure.com/cc-ppi/General/_workitems/edit/1455)
- Fixed: Release pipeline was created with corrupted artifact definition (https://dev.azure.com/cc-ppi/General/_workitems/edit/1453)
- Show better caption on the file prompt when creating a backup for a container database (https://dev.azure.com/cc-ppi/General/_workitems/edit/1488)
- Support restoring SaaS backups (https://dev.azure.com/cc-ppi/General/_workitems/edit/1349)
- Fix bug where container list wasn't displayed for non-COSMO users (https://dev.azure.com/cc-ppi/General/_workitems/edit/1262)

## 0.11.38

- Enable SSL verification (https://dev.azure.com/cc-ppi/General/_workitems/edit/1383)
  This reverts the change of 0.11.37 as we found a backend configuration that works again

## 0.11.37

- Disable SSL verification (https://dev.azure.com/cc-ppi/General/_workitems/edit/1383)
  **WARNING**: With this change SSL verification is disabled, which means that you might be open for https fraud. Because of https://github.com/microsoft/vscode/issues/134244, we have no other short-term solution, but we will work on turning this back as soon as possible. If you don't want to use this version, please manually go back to 0.11.36, but be aware that the extension most likely won't work.

## 0.11.36

- Allow retrieving running containers when there are multiple tasks for a service (https://dev.azure.com/cc-ppi/General/_workitems/edit/1140)
- Allow to use COSMO hosted agents in release pipelines (https://dev.azure.com/cc-ppi/General/_workitems/edit/1327)
- Ignore containers from another tenant when for the container list (https://dev.azure.com/cc-ppi/General/_workitems/edit/1339)
- Add suggestions when error happening during Update CI/CD (https://dev.azure.com/cc-ppi/General/_workitems/edit/1167)
- Encode branch name when creating container from branch to support branches with # in their name (https://dev.azure.com/cc-ppi/General/_workitems/edit/1356)
- Set license variable name correctly to later allow updates (https://dev.azure.com/cc-ppi/General/_workitems/edit/1363)

## 0.11.35

- Use dev endpoint of docker-automation only when devMode is enabled but not on debugMode (https://dev.azure.com/cc-ppi/General/_workitems/edit/1165)
- Always use azdevops-automation URL if configured in settings (https://dev.azure.com/cc-ppi/General/_workitems/edit/1181)
- Use correct login method for VS Code Azure Account extension (https://dev.azure.com/cc-ppi/General/_workitems/edit/1182)
- Add project template support for product management. (https://dev.azure.com/cc-ppi/General/_workitems/edit/1103/)
- Fix problem when trying to find backend is connected (https://dev.azure.com/cc-ppi/General/_workitems/edit/1311/)
- Avoid unnecessary warnings about missing cosmo.json (https://dev.azure.com/cc-ppi/General/_workitems/edit/969)
- Regenerate image when starting a stopped container where the image was cleaned up in the meantime (https://dev.azure.com/cc-ppi/General/_workitems/edit/998)

## 0.11.34

- Change debug shortcuts as they were blocking standard shortcuts since 0.11.30 (https://dev.azure.com/cc-ppi/General/_workitems/edit/1136)
- Fix bug where a PAT is not passed to a service for downloading artifacts when there is a config-specific DevOps artifact but no top-level one (https://dev.azure.com/cc-ppi/General/_workitems/edit/1159)

## 0.11.33

- Fix bug causing the connection to the docker-automation backend to fail (https://dev.azure.com/cc-ppi/General/_workitems/edit/1120)

## 0.11.32

- Fix bug where Database Backups within a configuration in the `bcartifacts` section of the `cosmo.json` weren't used (https://dev.azure.com/cc-ppi/General/_workitems/edit/1113)
- Hide settings intended only for development purposes (https://dev.azure.com/cc-ppi/General/_workitems/edit/1115)

## 0.11.31

- Only encode URLs once, not twice (https://dev.azure.com/cc-ppi/General/_workitems/edit/1097)

## 0.11.30

- Add the possibility to invoke a database backup for a container (see [docs](https://docs.cosmoconsult.com/en-us/cloud-service/devops-docker-selfservice/vsc-extension/backup-database.html))
- Add a second view that shows all currently running containers (see [docs](https://docs.cosmoconsult.com/en-us/cloud-service/devops-docker-selfservice/vsc-extension/show-all-containers.html))
- Better error handling when creating containers (https://dev.azure.com/cc-ppi/General/_workitems/edit/862)
- The lists below "WorkItems" are now sorted in the same way as the original queries (https://dev.azure.com/cc-ppi/General/_workitems/edit/925/)
- Fix error preventing the launch.json to be updated when the configurations field is not present, pretty-print config (https://dev.azure.com/cc-ppi/General/_workitems/edit/970)
- Fix creation of release pipeline used wrong ordered stages caused by VSCode ItemList sorting. [see #989](https://dev.azure.com/cc-ppi/General/_workitems/edit/989/)
- Rename "Update license" to "Update variables/licenses" as it now does both (https://dev.azure.com/cc-ppi/General/_workitems/edit/354)
- Add the possibility to set additional owners for a container so that it appears in their tooling as well (https://dev.azure.com/cc-ppi/General/_workitems/edit/500/)
- Support the new workspace trust feature (https://code.visualstudio.com/docs/editor/workspace-trust) of Visual Studio Code (https://dev.azure.com/cc-ppi/General/_workitems/edit/1029/)
- Release "create container from branch" as regular feature, no longer a preview feature (https://docs.cosmoconsult.com/en-us/cloud-service/devops-docker-selfservice/vsc-extension/create-branch-container.html)
- Fix a problem where creating a container from a branch was impossible if the branch name contained a # (https://dev.azure.com/cc-ppi/General/_workitems/edit/1017/)
- Remove the action to create a new app from a container image as those are now deprecated for 4 months (https://freddysblog.com/2021/02/10/removing-all-specific-nav-and-business-central-docker-images/, https://dev.azure.com/cc-ppi/General/_workitems/edit/1069/)
- Show detailed error responses for project creation (https://dev.azure.com/cc-ppi/General/_workitems/edit/380)

## 0.11.29

- Fix issue with PATs (https://dev.azure.com/cc-ppi/General/_workitems/edit/964)

## 0.11.28

- Fix default for enablePremium (https://dev.azure.com/cc-ppi/General/_workitems/edit/933)

## 0.11.27

- The initial login sometimes had issues, especially when switching tenants. This should make it more robust (https://dev.azure.com/cc-ppi/General/_workitems/edit/912)
- If the backend Swarm configuration was defined with a trailing slash, this could cause problems (https://dev.azure.com/cc-ppi/General/_workitems/edit/908/)
- New command `Update Task groups` added to import/update Task group templates for setup of Release Pipelines in a project (https://docs.cosmoconsult.com/en-us/cloud-service/devops-docker-selfservice/vsc-extension/update-task-groups.html)
- New command `Create Release Pipeline` added to setup Release Pipelines for Apps in a project (https://docs.cosmoconsult.com/en-us/cloud-service/devops-docker-selfservice/vsc-extension/create-release-pipeline.html)
- Next Major/Minor pipelines added (https://docs.cosmoconsult.com/en-us/cloud-service/devops-docker-selfservice/pipelines/next.html)
  - Command added to setup Next Major/Minor pipelines for repository (https://dev.azure.com/cc-ppi/General/_workitems/edit/736)
  - Fix: Command "setup Next Major/Minor pipelines" was not added in extension (https://dev.azure.com/cc-ppi/General/_workitems/edit/736)
  - Changed: "setup Next Major/Minor pipelines" command no longer accesses Azure KeyVault secrets (https://dev.azure.com/cc-ppi/General/_workitems/edit/736)
- Provide a public API for the extension to allow for extensibility (https://dev.azure.com/cc-ppi/General/_workitems/edit/900)
- Allow onboarding of existing projects to the self-service (https://dev.azure.com/cc-ppi/General/_workitems/edit/610)
- If artifacts were defined without an ignoreIn config, they were ignored (https://dev.azure.com/cc-ppi/General/_workitems/edit/929)
- Support optionally enabling premium SKU for the default user (https://docs.cosmoconsult.com/en-us/cloud-service/devops-docker-selfservice/containers/setup-cosmo-json.html#docker-specific-parameters, see param `enablePremium`)

## 0.11.26

- Fix bug where downloading artifacts didn't work because of missing token scope (https://dev.azure.com/cc-ppi/General/_workitems/edit/906)
- Fix the image used for converting bacpacs to baks (https://dev.azure.com/cc-ppi/General/_workitems/edit/728)

## 0.11.25

- Allow to manually stop and start containers. **Please note:** This will **keep** the database, but it will **not keep** the file system and a full initialization of the container will be performed, excluding the .app, .fob and rapidstart imports. You can find out more in the [documentation](https://docs.cosmoconsult.com/en-us/cloud-service/devops-docker-selfservice/vsc-extension/startstop-container.html)
- Allow to set a locale through cosmo.json when starting a BC container as this can be used to set locale and culture information in the container (https://github.com/microsoft/nav-docker/blob/573359a13e7ac57f5c42b1aeca882a39ee55932b/generic/Run/SetupVariables.ps1#L215-L222)
- Get RabbitMQ connection information from Azure KeyVault (https://dev.azure.com/cc-ppi/General/_workitems/edit/702)
- Handle entites differently for Non-COSMO users (https://dev.azure.com/cc-ppi/General/_workitems/edit/690)
- Fix a bug where Graph auth tokens were always requested for COSMO and not the actually selected AD tenant (https://dev.azure.com/cc-ppi/General/_workitems/edit/759/)
- Find the URL of the key vault to be used from a new backend service to allow dedicated key vaults per entity / customer (https://dev.azure.com/cc-ppi/General/_workitems/edit/695)
- Find out which artifact-based app configurations are possible when creating a new app by asking the new service that translates available license to possible configurations (https://dev.azure.com/cc-ppi/General/_workitems/edit/705)
- Move to tenant ID for determining if a user is a Cosmonaut and support COSMO guest users in different ADs (https://dev.azure.com/cc-ppi/General/_workitems/edit/759)
- Allow to connect to an azdevops-automation backend running in the Swarm (https://dev.azure.com/cc-ppi/General/_workitems/edit/762)
- Move KeyVault secret retrieval to the backend APIs (https://dev.azure.com/cc-ppi/General/_workitems/edit/762)
- Command added to setup Next Major/Minor pipelines for repository (https://dev.azure.com/cc-ppi/General/_workitems/edit/736)
- Allow configuring Symbol Loading in cosmo.json, the default value if nothing is specified is true (https://dev.azure.com/cc-ppi/General/_workitems/edit/681/)
- Move check if license URL is already in variable group to the backend (https://dev.azure.com/cc-ppi/General/_workitems/edit/762)
- Move updating license variables in the variable groups to the backend (https://dev.azure.com/cc-ppi/General/_workitems/edit/762)
- Retrieve SAS token in backend when updating CI/CD repository (https://dev.azure.com/cc-ppi/General/_workitems/edit/762)
- Add method to get the cosmo.json from a repository with all variables resolved (https://dev.azure.com/cc-ppi/General/_workitems/edit/762)
- Retrieve KeyVault secrets in backend when creating a project (https://dev.azure.com/cc-ppi/General/_workitems/edit/762)

## 0.11.24

- Improve launch.json creation process by using "Al Test Tool" page as startup object for test app

## 0.11.23

- Allow to select the BC artifact configuration (typically current, nextMinor, nextMajor) when starting a container. This allows to start a preview container when needed (https://dev.azure.com/cc-ppi/General/_workitems/edit/538)
- Show container version directly after the container name to make the type, version and localization immediately visible
- Don't allow to create a project with the same name as the organization as this will lead to a feed name clash (https://dev.azure.com/cc-ppi/General/_workitems/edit/596)
- Allow the service API to define the dockerParamsForBuild because it was static in the extension anyway and there isn't a good scenario currently where this might be different for different clients (https://dev.azure.com/cc-ppi/General/_workitems/edit/601)
- Fix dependencies with security issues (npm audit fix)

## 0.11.22

- Encode the branch name when opening a PR from a branch (https://dev.azure.com/cc-ppi/General/_workitems/edit/595)

## 0.11.21

- When you created a bug report and you had a default password set up in the extension settings, it was added to the bug report, which might have been a security risk (https://dev.azure.com/cc-ppi/General/_workitems/edit/581/)
- When you created a bug report through the generic functionality, you weren't asked for a title
- You can now also create a feature request in the same place where you can create a bug report

## 0.11.20

- Fix missing icons

## 0.11.19

- Release support for custom scripts as a preview feature

## 0.11.18

- Support adding custom scripts to project repository to override default logic at container start (https://dev.azure.com/cc-ppi/General/_workitems/edit/62)

## 0.11.17

- Fix additional folder URL for created containers to use the current AzDevOps Automation API

## 0.11.16

- Fix a bug that prevented dev containers to be created if an artifact without an ignoredIn definition was set up in cosmo.json

## 0.11.15

- Add additional artifacts for trial

## 0.11.14

- Show "my queries" and "shared queries": To allow more flexibility which work items are visible, you will now also see "my queries" and "shared queries" in the list (https://dev.azure.com/cc-ppi/General/_workitems/edit/108)
- Add "Work on this (create branch)" functionality for work items: See [documentation](https://docs.cosmoconsult.com/en-us/cloud-service/devops-docker-selfservice/vsc-extension/branches.html#create-a-branch-to-work-on-a-work-item)

## 0.11.13

- Add additional artifacts for trial

## 0.11.12

- Add an action to convert a .bacpac file to a .bak file ([documentation](https://docs.cosmoconsult.com/en-us/cloud-service/devops-docker-selfservice/containers/convert-bacpac-to-bak.html))
- Allow to set up whether multi-tenancy is active or not in containers (https://dev.azure.com/cc-ppi/General/_workitems/edit/465)
- Don't default isolation mode to "hyperv" in the extension but use the backend default of "process" because Windows Server 2019 (2004) has problems with network shares and shared disks in hyperv isolation. Allow override through a param "isolation" in cosmo.json
- Fixes to support trials for Non-COSMO users:
  - Authentication must be possible for Non-COSMO users as well (https://dev.azure.com/cc-ppi/General/_workitems/edit/481)
  - Entity handling because we currently only support COSMO entities (https://dev.azure.com/cc-ppi/General/_workitems/edit/482/) because we currently only support COSMO entities
  - Secret handling because we currently only support Azure Key Vault access for COSMO employees (https://dev.azure.com/cc-ppi/General/_workitems/edit/484)
  - Image handling because we only support a limited number of images for trials (https://dev.azure.com/cc-ppi/General/_workitems/edit/484)

## 0.11.11

- Show the branches in a repository with their creators and allow creating a PR for a branch with an action on that branch ([documentation](https://docs.cosmoconsult.com/en-us/cloud-service/devops-docker-selfservice/vsc-extension/branches.html))
- Allow to select a different tenant if needed ([documentation](https://docs.cosmoconsult.com/en-us/cloud-service/devops-docker-selfservice/vsc-extension/tenant.html))
- Open organization in browser, same as for other browsers

## 0.11.10

- Allow definition of favorite organizations including potentially filtering on them ([documentation](https://docs.cosmoconsult.com/en-us/cloud-service/devops-docker-selfservice/vsc-extension/favorite-orgs.html))
- Use new startup file handling ([documentation](https://dev.azure.com/cc-ppi/General/_workitems/edit/382))
- Add action to open [documentation](https://docs.cosmoconsult.com/en-us/cloud-service/devops-docker-selfservice)
- Refresh the organization after an entity has been assigned ([documentation](https://dev.azure.com/cc-ppi/General/_workitems/edit/394/))
- Allow container access even when the container isn't running ([documentation](https://dev.azure.com/cc-ppi/General/_workitems/edit/401))

## 0.11.9

- "Create organization" now links to the website as automatically creating it was confusing

## 0.11.8

- Allow storing and automatically retrieving a PAT and passing it to containers for downloading Azure DevOps artifacts on startup
- Enable artifact download again

## 0.11.7

- Allow spaces in app names

## 0.11.6

- Display icon next to WorkItems for opening them directly instead of via the context menu
- Get direct feedback after creating a container

## 0.11.5

- Add US locale for selection when creating an app

## 0.11.4

- Meaningful error message if Swarm URL is missing

## 0.11.3

- Don't allow empty app names

## 0.11.2

- Fix for opening container in browser or creating launch.json if no bcartifacts are defined

## 0.11.1

- Stability improvements, mainly around special characters in org or project names

## 0.11.0

- Support artifacts in addition to Docker images. Images are still supported, so existing projects won't break.
- Use display name of the container for BC launch configs
- Support multi-tenancy in sandboxes
- Enable opening non-BC repos
- Go to bccontainerhelper

## 0.10.7

- Fix publishing problem

## 0.10.6

- Allow defining a custom name for a container
- Add setting for default username / password for containers
- Support reading cosmo.json from other branch than master

## 0.10.5

- Support specification of bakfile in cosmo.json
- Support using the Azure File Share for artifacts when creating the container

## 0.10.4

- Get Docker backend URL from Azure Key Vault

## 0.10.3

- Check if there are actually changes during CI/CD repo updates
- Add config settings when creating a bug report

## 0.10.2

- Consider portainer endpoints for entity-specific Swarms
- Fix visibility of container actions

## 0.10.1

- Fix localhost detection

## 0.10.0

- BREAKING CHANGE: Containers are now connected to repositories, not projects. Please get in touch with team PPI (Michael Megel or Tobias Fenster) if you need to migrate projects
- Creating a new app (repository, pipeline, pool) is now separated from creating a project which should make the setup of multi-app projects easier
- Config and dependency handling for containers is done using a config file in the repo
- Add integrated option to file bug report for team PPI
- Portainer features: Access to container stats, inspect and log are new; access to terminal and fileshare are no longer in preview
- New action to update the CI/CD repo
- Check if user is Project Collection Administrator if necessary
- Backend API versioning

## 0.9.23

- Stability improvements

## 0.9.22

- Support different swarms and remove the extension setting (URL is read from the project)

## 0.9.21

- Support custom .bak files as databases for containers

## 0.9.20

- Preview features: Open terminal in container and open file share in container
- Support process and project customizations
- Fix group handling
- Workitem import is now a preview feature

## 0.9.19

- Show COSMO office instead of AD abbreviation
- Fix user handling
- Minor stability fixes

## 0.9.18

- Support MFA login by now logging in through the Azure Account extension
- Temporarily disable artifact download (because of MFA support)
- Check if required configurations are missing in the project
- Support more languages: Austria, Hungary, Romania, Spain and Sweden

## 0.9.17

- Default isolation to hyperv
- Allow setup of .dlls and .apps when starting a container

## 0.9.16

- Assign entity connection when creating organizations
- Allow assigning an entity later
- Warn if an entity is not assigned
- Show entity assignment in organization list
- Cleanup organization and project list
- Allow BC license updates for projects

## 0.9.15

- Fix Docker image selection during project creation

## 0.9.14

- Fix missing icons

## 0.9.13

- package bump, explicitely add jsprim

## 0.9.12

- Allow sandbox as container image for SaaS projects
- Fix license selection for W1 projects
- Allow file selection for WI import
- Add insider registry credential reading

## 0.9.11

- Fix missing icons

## 0.9.10

- Fix artifact download for projects with special characters

## 0.9.9

- Don't overwrite full launch config but only adjust the relevant fields (thanks to Bert Krätge for the first "external" Pull Request!)
- Only enable keyboard shortcuts in debug mode

## 0.9.8

- Initial WorkItem import capability (thanks to Fabian Lippik and Franziska Frese for the input)
- Selection of desired locale (currently DE and FR)
- Selection of subscription and resource group to use when creating an organization
- Associate WorkItem to commit and only show closed WorkItems in the "Assigned to me" list (thanks to Sven Biernat for the idea)
- Re-enable artifact download
- Support login to dedrsdevops.azurecr.io

## 0.9.7

- Support login to docker.cosmoconsult.com

## 0.9.6

- Fix refactor miss

## 0.9.5

- Download artifacts from Azure BLOB storage
- Add meaningful build icons

## 0.9.4

- Validate org and project name before creating

## 0.9.3

- Allow selection of BC version when creating a new project

## 0.9.2

- Allow overriding artifacts source locations for DevOps and project templates
- Open project in browser with right-click

## 0.9.1

Pilot readiness

## 0.1.1

Support artifacts, views and feeds in organization scope

## 0.1.0

First public release

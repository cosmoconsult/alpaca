---
    title: Container Backend Changelog
    description: Container Backend Changelog
    orig-source: https://dev.azure.com/cc-ppi/Self-Service/_git/docker-automation?path=%2FCHANGELOG.md&version=GBk8s
---

# Container Backend Changelog

All notable changes to the Container Backend

## v1.76.0 (2025-11-19)

- Add DK as available country [see #4552](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4552)

## v1.75.0 (2025-09-25)

- Add Azure DevOps pipeline agents demands as environment variable [see #4450](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4450)

## v1.74.3 (2025-09-10)

- Fix issue where project with long names could no longer create Azure DevOps pipeline agents [see #4462](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4462)

## v1.74.2 (2025-09-08)

- Fix issue where Azure DevOps pipeline agents were not created for release pipelines [see #4460](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4460)

## v1.72.0 - v1.74.1 (2025-09-04)

- Update Version of Azure DevOps dummy pipeline agent
- Fix issue where project with long names or whitespaces in the name could no longer create Azure DevOps pipeline agents [see #4453](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4453)

## v1.71.0 (2025-09-04)

- Add support for Node.js agents and support different agent images [see #4450](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4450)

## v1.70.0 (2025-08-20)

- Add "au" localization [see #4436](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4436)

## v1.69.0 (2025-08-14)

- Update BuildBcContainerDeadline to stop build bc containers after 4 hours per default [see #4430](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4430/)

## v1.68.1 (2025-08-04)

- Fix issue where the auto-stop configuration of a container was reset to the default values when starting the container [see #4423](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4423)

## v1.68.0 (2025-07-24)

- Do not lower the whole name of the backup folder when backing up a container [see #4413](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4413)

## v1.67.0 (2025-07-16)

- Use new ArgoCD tracking id annotation to correctly delete SSH secrets [see #4409](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4409)

## v1.66.0 (2025-07-08)

- Remove obsolete owner labels, read owner(s) always from annotations [see #4397](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4397)
- Make agent job deadline based on BC build container deadline [see #4398](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4398)
- Reset autostop override time on manual stop [see #4396](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4396)

## v1.65.2 (2025-07-02)

- Fix "dk" localization [see #4386](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4386)

## v1.65.1 (2025-07-02)

- Update Alpaca-API and add dedicated endpoint to retrieve the assigned entity of a GitHub repository again [see #4388](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4388)

## v1.65.0 (2025-07-02)

- Add support for server file cache persistence to container/service creation [see #4387](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4387)
- Update Alpaca-API [see #4388](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4388)

## v1.64.0 (2025-06-30)

- Add "da-dk" localization [see #4386](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4386)

## v1.63.3 (2025-06-12)

- Fix issue where the owner of a container could not be determined correctly [see #4363](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4363)

## v1.63.1 - v1.63.2 (2025-06-05)

- Fix issue where the owner of a container could not be determined correctly [see #4363](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4363)

## v1.63.0 (2025-05-30)

- Fix issue where a container may not be restarted correctly after changing the owner(s) [see #4357](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4357)
- Update Alpaca API client and remove dedicated Authorization Header for GitHub requests [see #4358](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4358)

## v1.62.0 (2025-05-14)

- Add support for async mode to container/service creation [see #4320](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4320)
- Validate syntax when changing the owner(s) of a container based on the container origin (Azure DevOps or GitHub) [see #4277](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4277)

## v1.61.0 (2025-05-08)

- Fix issue where an orphaned service could lead to a crash of the API [see #4333](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4333)
- Add new property for custom nuget feeds in Container creation model for GitHub [see #4271](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4271/)
- Adapt implementation of namespace determination for COSMO GitHub repositories to recent changes in AlpacaAPI [see #4278](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4278)

## v1.60.0 (2025-04-30)

- Add branch filter to the endpoint for getting services/containers of a repository [see #4317](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4317)

## v1.59.0 (2025-04-01)

- Add better error handling when retrieving container configuration fails [see #4290](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4290/)

## v1.58.0 (2025-03-19)

- ConfigHelper for managing application settings and configurations [see #4240](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4240/)
- Add new property for custom nuget feeds in Container creation model [see #4268](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4268/)

## v1.57.0 (2025-03-12)

- New endpoint to get Nuget Package config for VS Code [see #4262](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4262)

## v1.56.0 (2025-03-07)

- Determine Namespace based on custom property for COSMO GitHub repositories [see #4251](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4251)
- Update launch.json creation process with the attach configuration [see #4238](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4238)

## v1.55.0 (2025-02-14)

- Update Alpaca API client [see #4229](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4229)
- Update backup-converter chart version to 1.11.0 (appVersion 1.2.3) [see #4230](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4230)

## v1.54.0 (2025-02-14)

- Update backup-converter chart version to 1.8.0 (appVersion 1.2.0) [see #4226](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4226)
- Set auto start and stop deactivated for backup conversion containers [see #4226](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4226)

## v1.53.0

- Enable BC14 pipelines [see #4224](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4224)

## v1.52.0

- Replace GitHubAPI client by AlpacaAPI client [see #4220](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4220)

## v1.51.0

- Resolve target namespace for GitHub containers [see #4218](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4218)

## v1.50.0

- Add Endpoint to get artifacts for a GitHub container configuration [see #4210](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4210)

## v1.49.0

- Add retries for Kubernetes API requests (https://github.com/cosmoconsult/alpaca/issues/28)

## v1.48.0 (2025-01-22)

- Upgrade dependencies to latest versions (https://github.com/cosmoconsult/alpaca/issues/28)

## v1.47.5 (2025-01-15)

- Allow longer startup time for containers with saasbak [see #4196](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4196)

## v1.47.4 (2025-01-08)

- Fix saasbak and bak are handled as nuget [see #4191](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4191)

## v1.47.3

- Fix problem in namespace resolution [see #4189](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4189)

## v1.47.2

- Fix upgrades for containers by always removing all apps before the upgrade [see #4178](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4178)

## v1.47.1

- Fix container creation for GitHub repositories without configuration (https://github.com/cosmoconsult/alpaca/issues/18)

## v1.47.0

- Support configuration of artifacts for GitHub containers

## v1.46.0

- Fix issue where the name of the owner of a container is incorrectly normalized [see #4172](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4172)

## v1.45.0

- Add DevOpsIdentifierAttributes to ContainerInfo [see #4154](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4154)
- Adjust health check to not fail in case Azure DevOps is unhealthy or unresponsive [see #4164](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4164)

## v1.44.0

- Add iceland (IS) as country [see #4149](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4149)

## v1.43.0

- Add new endpoint for GitHub build containers

## v1.42.0 - v1.42.2

- Replace individual OpenTelemetry components with Azure Application Insights [see #4133](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4133)

## v1.41.0

- Add property IsBuildContainer to CreateContainerRequest [see #4128](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4128)

## v1.40.1

- Retry requests during authentication on timeouts [see #4082](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4082/)

## v1.40.0

- Add logging to custom auth handler [see #4082](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4082/)

## v1.39.1

- Fix issue where the owner instead of the username was used to create containers [see #4086](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4086)

## v1.39.0

- Update GitHub API client and support creating GitHub containers based on a branch [see #4078](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4078)

## v1.38.1

- Improve auth handler to retry on timeout [see #4082](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4082)

## v1.38.0

- Add BcArtifact documentation comments [see #4077](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4077)

## v1.37.0

- Improve exceptions for invalid artifacts [see #4075](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4075)

## v1.36.0

- Validate maximum length of branch name when getting containers [see #4074](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4074)

## v1.35.0

- Add new endpoints to prune obsolete configurations of the vscode launch.json [see #2282](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2282/)
- Validate maximum length of kubernetes labels (esp. branch name) [see #4066](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4066)
- Add more countries for app creation [see #4070](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4070)

## v1.34.1

- Fix create ssh key for every environment [see #4062](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4062)

## v1.34.0

- Always create SSH key for DynamicArgoApps [see #4062](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4062)

## v1.33.0

- Always set public DNS name container environment variable [see #4035](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4035/)
- Always enable ingress for containers (v12) [see #4033](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4033/)
- Extend BC Build container deadline to DynamicArgoApp TTL [see #4059](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4059)

## v1.32.0

- Create containers by referencing an AL-Go project [see #3678](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3678)

## v1.30.0

- Make BC Build container deadline configurable [see #4059](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4059)

## v1.29.0

- fix Service/Get results in serialization error when companions exist [see #4056](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4056)

## v1.28.0

-

## v1.27.0

- Refactor and improve major service/container actions v0.12 [see #4049](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4049)

## v1.26.0

- Add new endpoints to create or update the vscode launch.json for a container [see #4004](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4004/)
- Add support for New Zealand localisation [see #4039](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4039)
- Update backup-converter chart version to 1.7.0 (appVersion 1.1.3) [see #4041](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4041/)

## v1.25.0

- Allow update of customNavSettings for a container based on potentially changed cosmo.json [see #3993](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3993)
- Improve establishing SSH connection to containers [see #4017](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4017)

## v1.24.0

- Allow enforcement of autostart/stop through configuration and whitelist for enabled users [see #3966](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3966)
- Extend ContainerInfo with additional fields [see #3981](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3981/)

## v1.23.0

- Set large configurations through a config map instead of environment variables [see #3952](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3952/)
- Fix and optimize devcontainer and VS Code handling [see #3961](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3961)

## v1.22.0

- Add servicename to ExecStatus, add XMLdoc [see #3957](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3957)

## v1.21.1

- Rework telemetry implementation [see #3928](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3928)

## v1.21.0

- Remove service environment variables from agents to prevent overflows [see #3913](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3913)

## v1.20.0

- Add Belgium as supported country [see #3914](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3914)
- Improve exception handling, add support for async script execution within containers [see #3917](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3917)

## v1.19.0

- Improve startup speed by keeping compiled C# assemblies [see #3889](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3889)
- Update SSH dependency to enable trimming again [see #3848](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3848)
- Better handling for auto-stop corner cases [see #3902](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3902)
- Make oldest available license version configurable [see #3904](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3904)

## v1.18.0

- Support configuring Azure Pipeline Agents [see #3893](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3893)

## v1.17.0

- Normalize branch name in kubernetes labels [see #3882](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3882)

## v1.16.1

- Handle all types of github tokens during authentication [see #2179](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2179)

## v1.16.0

- Allow renaming a container [see #3757](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3757)
- Fix companion retrieval [see #3735](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3735)
- Test container SSH connection [see #3848](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3848)

## v1.15.3

- Add swiss (ch) country option [see #3741](https://dev.azure.com/cc-ppi/General/_workitems/edit/3741)

## v1.15.2

- Move to new registry

## v1.15.1

- Clone should use the exact same image as cloned [see #3570](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3570)
- Status endpoint should give recognizable return if container can't be found [see #3572](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3572)

## v1.15.0

- Reenable container upgrades [see #3399](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3399)

## v1.14.0

- Fix issues for BC22+ containers running without license [see #3505](https://dev.azure.com/cc-ppi/General/_workitems/edit/3505/)
- Improve error for organizations with ambiguous COSMO entity assignment [see #3495](https://dev.azure.com/cc-ppi/General/_workitems/edit/3495)

## v1.13.1

- Fix multiple cloning issues [see #3498](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3498)

## v1.13.0

- Add ability to get apps in container filesystem [see #3487](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3487)

## v1.12.0

- Move to versioned production build agent image [see #3481](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3481)

## v1.11.2

- Add NL and GB localizations [see #3475](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3475)

## v1.11.1

- Enforce autostop, disable autostart in 4PS [see #3451](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3451)

## v1.11.0

- Add bacpac to bak conversion for Kubernetes [see #3192](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3192)

## v1.10.1

- Fix missing TTL on build services [see #3420](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3420)

## v1.10.0

- Fix issue with COSMO guest users [see #2179](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2179)

## v1.9.0

- Support GitHub auth [see #2179](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2179)

## v1.8.0

- Make liveness / readiness / startup probes configurable [see #3353](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3353)

## v1.7.0

- Ignore audience logs [see #3126](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3126)

## v1.6.0

- Allow startup of arbitrary containers [see #3332](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3332)

## v1.5.0

- Separate app registrations [see #3126](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3126)

## v1.4.0

- Support authentication via App registration [see #3126](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3126)

## v1.3.0

- Add configuration option for disk size (and performance) of BC database disks [see #3311](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3311)

## v1.2.0

- Add configuration option for CPU and memory limits of BC containers [see #3294](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3294)
- Fix issue where locale was handed in incorrectly [see #3286](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3286)

## v1.1.4

- Fix issue where branch name and org name was not passed correctly to container [see #3275](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3275)

## v1.1.3

- Fix issue where Release Pipeline Start Agent fails, introduced by v1.0.1 [see #3255](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3255)

## v1.1.2

- Fix issue introduced by v1.0.1 [see #3255](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3255)

## v1.1.1

- Fix empty version prevented from using AAD-Authentication [see #3280](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3280/)

## v1.1.0

- Support COSMO guest users [see #2995](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2995/)

## v1.0.1

- Also support old-style Azure DevOps URLs [see #3255](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3255)

## v1.0.0

- Allow disabling persistence for containers [see #2995](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2995/)

## v0.11.56

- Make license secret optional [see #2995](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2995/)

## v0.11.55

- Add external image pull secret to agents and BC containers [see #2995](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2995/)

## v0.11.54

- Keep mounting dev licenses for non-trial users when set in cosmo.json [see #2995](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2995/)

## v0.11.53

- Support shared customer cluster scenarios [see #2995](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2995/)
- Introduce API Versioning

## v0.11.50

- Fix failing base app deployment with increased proxy timeouts and memory limit [see #3149](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3149/)
- Allow execution of PowerShell commands in a k8s-container [see #3158](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3158)
- Add creation time [see #3159](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3159)

## v0.11.49

- Fix AAD auth by enlarging the Nginx buffer [see #3142](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3142)

## v0.11.45

- Add Tracing [see #2976](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2976)

## v0.11.44.1

- Fix issue that prevented exec calls on containers [see #2864](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2864)
- Fix multiple issues with nextMajor / nextMinor and latest onprem builds [see #2865](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2865)
- Support for access by additional users, e.g. freelancers working for COSMO [see #2855](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2855)

## v0.11.44

- Implement backend code to upgrade a container [see #2145](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2145)
- Improve logging [see #2746](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2746/)
- Fix nextMajor/nextMinor image create for ondemand containers [see #2828](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2828/)
- Add devcontainer support [see #2850](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2850)
- Support for opt-in AD guest support [see #2855](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2855)

## v0.11.43

- Support building images without license [see #2774](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2774)

## v0.11.42

- Fix licenseVarName handling during container clone [see #2744](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2744/)

## v0.11.41

- Exclude containers shared with me from admin-set limits [see #2554](https://dev.azure.com/cc-ppi/General/_workitems/edit/2554)
- Cleanup outdated container limit warning [see #2688](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2688)
- New Controller "Features" [see #2693](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2693/)
- Fix eventlog download since change in containerhelper broke it [see #2694](https://dev.azure.com/cc-ppi/General/_workitems/edit/2694/)

## v0.11.40

- Support BC22 with *.bclicense only [see #2581](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2581)

## v0.11.39

- Allow adding new service labels [see #2547](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2547)
- Added labels for better evalution pipelines in grafana [see #2553](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2553)

## v0.11.38.1

- Fix missing traefik label connection the middleware and router [see #2539](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2539)

## v0.11.38

- Increase Docker API timeouts, fix issue during service start [see #2532](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2532)

## v0.11.37

- Allow default setup for the mechanism to trigger different behavior for custom startup scripts per Swarm [see #2194](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2194)

## v0.11.36

- Send a notification when a container is created without respecting the limits [see #2304](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2304)
- Enable setting container orgname, projectname & reponame directly via the service definition [see #2353](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2353)

## v0.11.35

- Define a simple mechanism to trigger different behavior for custom startup scripts per Swarm [see #2194](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2194)
- Add support for cloning a container [see #1486](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/1486)
- Limit number of containers per customer via customer resolution service (e.g. active subscription for "Project Tooling" bought by customer) [see #2141](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2141/)
- Fix an issue where BcArtifact determination fails on rebuild of base images [see #2235](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2235/)
- Differ between build/nonbuild containers for default customer container limit [see #2273](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2273/)
- Consider additional setup when checking health and use container health state directly [see #2232](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2232/)
- Support configuration for publishing SwaggerUI for BC APIs [see #2315](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2315/)

## v0.11.34

- Fix bug where cleanup fails because one search criteria gave an empty result [see #2143](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2143)
- Fix issue where wrong the image was used when specifying version partly [see #2129](https://dev.azure.com/cc-ppi/General/_workitems/edit/2129)

## v0.11.33

- Fix a problem where empty REST responses (e.g. HTTP 204) caused internal server errors because of missing HTTP/2 support in BC 19 and older [see #784](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/784)
- Fix a problem where AAD settings for BC 20 didn't work if the client sent customWebSettings [see #2016](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2016/)
- Retry service creation with an exponential backoff if it fails [see #2118](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2118)
- Disable TLS for BC container created from pipeline [see #2122](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2122)

## v0.11.32

- Better error message if container start causes limit violation [see #2035](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2035/)
- Support AAD authentication for BC 20 and newer as well [see #2016](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2016/)
- Additional AAD fixes [see #1775](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/1775/)

## v0.11.30

- Respect container limits on start as well [see #2035](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2035/)
- Add option to prevent starting build agent if a pipeline template is too old [see #2045](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2045)

## v0.11.29

- Only cleanup build directories on Azure File Share older than 1 day [see #1884](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/1884/)
- Support Azure AD authentication for containers in the self-service [see #1775](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/1775/)
- Fix issue where images of services starting with docker.io couldn't be started [see #2013](https://dev.azure.com/cc-ppi/General/_workitems/edit/2013)

## v0.11.28

- Enable Symbol Loading was ignored during docker start for build containers (BC13/BC14 + container with DB-Backup) [see #1998](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/1998/)

## v0.11.27

- Add weekly worker cleanup for BC build services and build directories on Azure File Share [see #1884](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/1884/)
- Add daily manager cleanup for docker system incl. unused images [see #1973](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/1973)
- Return a good message if a container is attempted to be started, but the image build fails, e.g. because the base artifacts are no longer available [see #1981](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/1981)

## v0.11.26

- Suppress output messages when importing BCCH as ith messes with result interpreation [see #1912](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/1912)
- Run worker cleanup every day instead of once a week [see #1941](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/1941)
- Fix problem where containers couldn't be started after failure / shutdown [see #1929](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/1929)
- Optionally limit number of containers per user and overall, both running and total, as well as total number of build containers [see #1925](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/1925)
- Added health check API endpoints [see #1916](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/1916/)

## v0.11.25

- Added weekly cleanup of BCCH PerfmonLogs [see #1820](https://dev.azure.com/cc-ppi/General/_workitems/edit/1820)
- Added custom header to RabbitMQ messages to determine if it is an error message [see #1811](https://dev.azure.com/cc-ppi/General/_workitems/edit/1811/)
- API changes to allow creation of build services/containers and getting container logs [see #1869](https://dev.azure.com/cc-ppi/General/_workitems/edit/1869/)
- Fix bug where logs couldn't be retrieved with a PAT [see #1869](https://dev.azure.com/cc-ppi/General/_workitems/edit/1869/)
- Support specifying either image or BC Artifact when creating a container [see #1883](https://dev.azure.com/cc-ppi/General/_workitems/edit/1883)
- Add env variable to container when creating a BC build service [see #1869](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/1869/)
- Make RabbitMQ hostname configurable to support external RabbitMQ instances [see #1890](https://dev.azure.com/cc-ppi/General/_workitems/edit/1890)
- Make artifacts more stable [see #1883](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/1883)
- Fix image rebuild during container start when there's no defualt license for the artifact [see #1901](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/1901)

## v0.11.24

- Update BCCH to 3.0.1 [see #1804](https://dev.azure.com/cc-ppi/General/_workitems/edit/1804)

## v0.11.23

- Minor improvements [see #1632](https://dev.azure.com/cc-ppi/General/_workitems/edit/1632/)
- Support for *.bclicense files [see #1783](https://dev.azure.com/cc-ppi/General/_workitems/edit/1783)
- Better info notifications for standalone containers [see #1543](https://dev.azure.com/cc-ppi/General/_workitems/edit/1543/)

## v0.11.22

- Support bcArtifact configurations with type OnPrem and empty version [see #1602](https://dev.azure.com/cc-ppi/General/_workitems/edit/1602)

## v0.11.21

- Add branch name to the service and containers labels in order to later identify it [see #1337](https://dev.azure.com/cc-ppi/General/_workitems/edit/1337)
- Fix bug where "successfully started container" was posted after stopping a container [see #1494](https://dev.azure.com/cc-ppi/General/_workitems/edit/1494)
- More clear message if image needs to be regenerated on container start [see #1514](https://dev.azure.com/cc-ppi/General/_workitems/edit/1514)
- Fix bug where a stopped container isn't started when no license variable is present in the service labels [see #1523](https://dev.azure.com/cc-ppi/General/_workitems/edit/1523)

## v0.11.20

- Support regerating cosmoartifact images on container start [see #1460](https://dev.azure.com/cc-ppi/General/_workitems/edit/1460)

## v0.11.19

- Add number of current image builds to monitoring metrics [see #960](https://dev.azure.com/cc-ppi/General/_workitems/edit/960)
- Regenerate image when starting a stopped container where the image was cleaned up in the meantime [see #998](https://dev.azure.com/cc-ppi/General/_workitems/edit/998)
- Regenerate "latest" images every night as well [see #1352](https://dev.azure.com/cc-ppi/General/_workitems/edit/1352)
- Fix license file variable name storage [see #1363](https://dev.azure.com/cc-ppi/General/_workitems/edit/1363)

## v0.11.18

- Support retrieving starting Containers as well. Old logic can be enabled with flag feat-gettask-onlyrunning [see #1085](https://dev.azure.com/cc-ppi/General/_workitems/edit/1085)
- Non-BC services like build agents may also need to mount the bccontainerhelper cache folder [see #1128](https://dev.azure.com/cc-ppi/General/_workitems/edit/1128)
- Support use of Performance Counters the counters are activated per default [see #422](https://dev.azure.com/cc-ppi/General/_workitems/edit/422)
- Support license file paths including blanks [see #1137](https://dev.azure.com/cc-ppi/General/_workitems/edit/1137)
- Avoid case problems by making the check for container ownership case-insensitive [see #1139](https://dev.azure.com/cc-ppi/General/_workitems/edit/1139)
- Add additional info about the connection to the KeyVault [see #573](https://dev.azure.com/cc-ppi/General/_workitems/edit/573)
- Only notify users about deleted containers if no other task is running or starting for the same service [see #1088](https://dev.azure.com/cc-ppi/General/_workitems/edit/1088)
- Add an option to mount the bcartifacts cache to any container [see #1201](https://dev.azure.com/cc-ppi/General/_workitems/edit/1201)
- Handle a potential problem if no repository id was given [see #1201](https://dev.azure.com/cc-ppi/General/_workitems/edit/1201)
- Add project template support for product management. [see #1103](https://dev.azure.com/cc-ppi/General/_workitems/edit/1103/)
- Allow to easily define COSMO IP artifacts as dependency in a container [see #1034](https://dev.azure.com/cc-ppi/General/_workitems/edit/1034)
- Support lang subcodes [see #1285](https://dev.azure.com/cc-ppi/General/_workitems/edit/1285)
- Support async creation of a new container and allow to separately check if image needs to be built [see #274](https://dev.azure.com/cc-ppi/General/_workitems/edit/274)

## v0.11.17.3

- Fix bug where NAV 2018 (!) wasn't handled correctly [see #1254](https://dev.azure.com/cc-ppi/General/_workitems/edit/1254)

## v0.11.17.2

- Fix bug where identification of a container didn't work when it has multiple owners [see #1114](https://dev.azure.com/cc-ppi/General/_workitems/edit/1114)

## v0.11.17.1

- Fix bug where starting a container created before v0.11.17 failed because the license could not be updated [see #1099](https://dev.azure.com/cc-ppi/General/_workitems/edit/1099)
- Fix bug where creating a backup didn't work because of the way we identify who owns a container with the multi-owner feature [see #1106](https://dev.azure.com/cc-ppi/General/_workitems/edit/1106)

## v0.11.17

- Pass PAT authentication to sub-requests when collecting system information [see #997](https://dev.azure.com/cc-ppi/General/_workitems/edit/997)
- Added endpoint for Snapshotdebugging according to navcontainerhelper [see #950](https://dev.azure.com/cc-ppi/General/_workitems/edit/950/)
- Support multiple owners per services as a comma-separated list [see #500](https://dev.azure.com/cc-ppi/General/_workitems/edit/500/)
- Add an action to update the license variable (might be needed if it expires) and automatically call it on service start after a previous stop [see #1004](https://dev.azure.com/cc-ppi/General/_workitems/edit/1004/)
- Minimize number of times when images are generated and automatically update images during the night, starting at 21:30 per default but overridable via KeyVault [see #478](https://dev.azure.com/cc-ppi/General/_workitems/edit/478)
- Fix bug where Azure DevOps artifacts couldn't be validated when the optional scope field is not set [see #1031](https://dev.azure.com/cc-ppi/General/_workitems/edit/1031/)
- Fix bug where artifact validation failed because of a non-needed auth header [see #1039](https://dev.azure.com/cc-ppi/General/_workitems/edit/1039)
- Update bccontainerhelper zo version 2.0.13 [see #1066](https://dev.azure.com/cc-ppi/General/_workitems/edit/1066)

## v0.11.16

- Add more information to the system information service [see #573](https://dev.azure.com/cc-ppi/General/_workitems/edit/573)
- Add action to invoke backup of container [see #443](https://dev.azure.com/cc-ppi/General/_workitems/edit/443)
- Validate artifacts when creating a new container [see #862](https://dev.azure.com/cc-ppi/General/_workitems/edit/862)
- Fix bug which prevented the Azure KeyVault configuration provider to refresh secret values [see #983](https://dev.azure.com/cc-ppi/General/_workitems/edit/983)

## v0.11.15

- Add worker information to system information service [see #877](https://dev.azure.com/cc-ppi/General/_workitems/edit/877)
- Support optionally enabling premium SKU for the default user [see #727](https://dev.azure.com/cc-ppi/General/_workitems/edit/727)

## v0.11.14

- Extend system information service to also include the Windows version of the host [see #877](https://dev.azure.com/cc-ppi/General/_sprints/backlog/General%20Team/General/17?workitem=877)
- Fix Bug where stopped services where deleted during cleanup [see #890](https://dev.azure.com/cc-ppi/General/_workitems/edit/890)

## v0.11.13

- Add service to provide system information [see #877](https://dev.azure.com/cc-ppi/General/_sprints/backlog/General%20Team/General/17?workitem=877)

## v0.11.12

- Disable cleanup of stopped BC service because we can now restart them [see #651](https://dev.azure.com/cc-ppi/General/_workitems/edit/651)
- Allow to "stop" and "start" the service by scaling the service to 0 or 1. This looks to the user like the container has started or stopped [see #128](https://dev.azure.com/cc-ppi/General/_workitems/edit/128)
- Allow to set a locale when starting a BC container as this can be used to set locale and culture information in the container [see microsoft/nav-docker](https://github.com/microsoft/nav-docker/blob/573359a13e7ac57f5c42b1aeca882a39ee55932b/generic/Run/SetupVariables.ps1#L215-L222)
- Allow configuring the valid domains within the KeyVault for authenticating against the API [see #698](https://dev.azure.com/cc-ppi/General/_workitems/edit/698)
- Only run background tasks in production environments, identified by env variable "CosmoProduction" [see #737](https://dev.azure.com/cc-ppi/General/_workitems/edit/737)
- Remove default AppInsights key and retrieve it from the KeyVault instead [see #711](https://dev.azure.com/cc-ppi/General/_workitems/edit/711)
- Fix a problem where setting additional labels made creating a BC service impossible [see #628](https://dev.azure.com/cc-ppi/General/_workitems/edit/628)
- Add a background task that synchronizes the central key vault with the entity key vault. This can also be triggered through a REST call (POST /sync)
- Define the possible projects to create by looking at the available licenses: Everything for which we have a license can be built [see #703](https://dev.azure.com/cc-ppi/General/_workitems/edit/703/)
- Validate users against a list of tenant ids instead of emails. The tenant id is always the same for guests and regular users, making it easier to decide if a request is valid or not [see #759](https://dev.azure.com/cc-ppi/General/_workitems/edit/759/)
- Add a controller for retrieving the RabbitMQ client credentials for the VS Code Extension
- Allow configuring Symbol Loading, the default value if nothing is specified is true [see #681](https://dev.azure.com/cc-ppi/General/_workitems/edit/681/)
- Restrict access to COSMO-internal Swarm backends to Cosmonauts from any valid tenant [see #770](https://dev.azure.com/cc-ppi/General/_workitems/edit/770)
- Resolve secret variables when creating a new BC container [see #791](https://dev.azure.com/cc-ppi/General/_workitems/edit/791)

## v0.11.11

- Enable symbol loading for NAV 2018 and BC 13 by default [see #675](https://dev.azure.com/cc-ppi/General/_workitems/edit/675)
- Enable API services by default on container startup as it is also enabled by default in the pipeline [see #675](https://dev.azure.com/cc-ppi/General/_workitems/edit/675)

## v0.11.10.2

- Use TLS for the RabbitMQ connection
- Support custom scripts within BC containers [see #62](https://dev.azure.com/cc-ppi/General/_workitems/edit/62)

## v0.11.10.1

- Fix a bug where the version wasn't specified for Get-BcArtifactUrl (redo 0.11.9.1)

## v0.11.10

- Add async notifications on cleanup tasks as well as on image build [see #221](https://dev.azure.com/cc-ppi/General/_workitems/edit/221)
- Add Azure KeyVault configuration provider to access secrets and configs. This allows flexible configurations of the service behavior.
- Store database on volume so that when a container is restarted/re-created the database still is in place [see #407](https://dev.azure.com/cc-ppi/General/_workitems/edit/407)

## v0.11.9.1

- Fix a bug where the version wasn't specified for Get-BcArtifactUrl

## v0.11.9

- Add a configuration option to allow to selectively disable the import of the performance test toolkit into images while Microsoft fails to fix a bug that makes image generation fail with perf toolkit import [see microsoft/navcontainerhelper#1617](https://github.com/microsoft/navcontainerhelper/issues/1617)
- Go to bccontainerhelper 2.0.4
- Fix image name recognition. When creating a preview image (nextMinor/nextMajor) the image name was not always correctly identified [see #539](https://dev.azure.com/cc-ppi/General/_workitems/edit/539/)

## v0.11.8.4

- Go to bccontainerhelper 2.0.2
- Additional artifacts for trial

## v0.11.8.3

- Additional trial users

## v0.11.8.2

- Additional trial user and image

## v0.11.8.1

- Additional trial user

## v0.11.8

- Allow to configure whether multi-tenancy is active or not [see #465](https://dev.azure.com/cc-ppi/General/_workitems/edit/465)
- Allow to configure whether the Azure File Share is mounted for non-BC services as well. This is needed whenever a non-BC container wants to access the Azure File Share.
- Allow access for Non-COSMO users, in the first for a trial phase [see #481](https://dev.azure.com/cc-ppi/General/_workitems/edit/481/)
- Add trial mode for image generation which allows only specific, predefined images to be generated for trials and will be set up in advance [see #484](https://dev.azure.com/cc-ppi/General/_workitems/edit/484)
- Go to bccontainerhelper 2.0.0 to use the new -before param for Get-BCArtifactUrl in order to not get artifacts after a specific date
- Go to bccontainerhelper 2.0.1 as it fixes [microsoft/navcontainerhelper#1646](https://github.com/microsoft/navcontainerhelper/issues/1646)

## v0.11.7

- Automatically cleanup dangling Docker images weekly [see #183](https://dev.azure.com/cc-ppi/General/_workitems/edit/183)
- Automatically cleanup BC artifacts older than 7 days every week [see #183](https://dev.azure.com/cc-ppi/General/_workitems/edit/183)
- Automatically cleanup unused volumes [see #183](https://dev.azure.com/cc-ppi/General/_workitems/edit/183)
- License Download Check added and Error Message improved during CI-Setup Variables when Docker image creation is invoked [see #456](https://dev.azure.com/cc-ppi/General/_workitems/edit/456)
- Fix image creation to use a correct image name when building for next minor or major version
- Automatically cleanup build agents, long-running BC build containers and other dead containers/services twice a day [see #183](https://dev.azure.com/cc-ppi/General/_workitems/edit/183)

## v0.11.6.1

- Fix problem where image creation failed on older version because the perf test tool doesn't exist there [see #425](https://dev.azure.com/cc-ppi/General/_workitems/edit/425/)

## v0.11.6

- Remove requirement for PATValidationProject: Instead of setting a PATValidationProject query param, most of the time the org can be deduced from the user. If not, a Header "Collection-URI" is used

## v0.11.5.1

- Change time for the Portainer restart to 4am GMT

## v0.11.5

- Add test libraries (functional and performance) when creating images: Whenever a new image is created, the test libraries are imported into the database, so they are always directly available after the container starts. This also requires that a license file is added to the call when the image is created as it is not possible to import the test libraries with a Cronus license
- Add scheduled restarts for Portainer services (first part of [see #183](https://dev.azure.com/cc-ppi/General/_workitems/edit/183))
- Set access control using labels ([Tobias Fenster blog](https://tobiasfenster.io/portainer-access-control-setup))
- Add cleartext org, project and repo for later usage
- Get container startup scripts according to new logic and from new repo [see #382](https://dev.azure.com/cc-ppi/General/_workitems/edit/382)
- Fix status check when looking for containers: Now only running containers are considered
- Add telemetry key to the core service, not to the agent service
- Optionally get non-running task as well [see #401](https://dev.azure.com/cc-ppi/General/_workitems/edit/401)

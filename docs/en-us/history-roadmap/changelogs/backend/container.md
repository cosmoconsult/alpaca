---
    title: Container Backend Changelog
    description: Container Backend Changelog
    orig-source: https://dev.azure.com/cc-ppi/Self-Service/_git/docker-automation?path=%2FCHANGELOG.md&version=GBk8s
---

# Container Backend Changelog

All notable changes to the Container Backend

## v1.55.0 (2025-02-14)

- Update Alpaca API client (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4229)
- Update backup-converter chart version to 1.9.0 (appVersion 1.2.1) (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4226)
- Update backup-converter chart version to 1.10.0 (appVersion 1.2.2) (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4230)

## v1.54.0 (2025-02-14)

- Update backup-converter chart version to 1.8.0 (appVersion 1.2.0) (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4226)
- Set auto start and stop deactivated for backup conversion containers (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4226)

## v1.53.0

- Enable BC14 pipelines (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4224)

## v1.52.0

- Replace GitHubAPI client by AlpacaAPI client (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4220)

## v1.51.0

- Resolve target namespace for GitHub containers (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4218)

## v1.50.0

- Add Endpoint to get artifacts for a GitHub container configuration (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4210)

## v1.49.0

- Add retries for Kubernetes API requests (https://github.com/cosmoconsult/alpaca/issues/28)

## v1.48.0 (2025-01-22)

- Upgrade dependencies to latest versions (https://github.com/cosmoconsult/alpaca/issues/28)

## v1.47.5 (2025-01-15)

- Allow longer startup time for containers with saasbak (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4196)

## v1.47.4 (2025-01-08)

- Fix saasbak and bak are handled as nuget (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4191)

## v1.47.3

- Fix problem in namespace resolution (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4189)

## v1.47.2

- Fix upgrades for containers by always removing all apps before the upgrade (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4178)

## v1.47.1

- Fix container creation for GitHub repositories without configuration (https://github.com/cosmoconsult/alpaca/issues/18)

## v1.47.0

- Support configuration of artifacts for GitHub containers

## v1.46.0

- Fix issue where the name of the owner of a container is incorrectly normalized (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4172)

## v1.45.0

- Add DevOpsIdentifierAttributes to ContainerInfo (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4154)
- Adjust health check to not fail in case Azure DevOps is unhealthy or unresponsive (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4164)

## v1.44.0

- Add iceland (IS) as country (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4149)

## v1.43.0

- Add new endpoint for GitHub build containers

## v1.42.0 - v1.42.2

- Replace individual OpenTelemetry components with Azure Application Insights (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4133)

## v1.41.0

- Add property IsBuildContainer to CreateContainerRequest (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4128)

## v1.40.1

- Retry requests during authentication on timeouts (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4082/)

## v1.40.0

- Add logging to custom auth handler (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4082/)

## v1.39.1

- Fix issue where the owner instead of the username was used to create containers (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4086)

## v1.39.0

- Update GitHub API client and support creating GitHub containers based on a branch (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4078)

## v1.38.1

- Improve auth handler to retry on timeout (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4082)

## v1.38.0

- Add BcArtifact documentation comments (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4077)

## v1.37.0

- Improve exceptions for invalid artifacts (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4075)

## v1.36.0

- Validate maximum length of branch name when getting containers (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4074)

## v1.35.0

- Add new endpoints to prune obsolete configurations of the vscode launch.json (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2282/)
- Validate maximum length of kubernetes labels (esp. branch name) (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4066)
- Add more countries for app creation (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4070)

## v1.34.1

- Fix create ssh key for every environment (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4062)

## v1.34.0

- Always create SSH key for DynamicArgoApps (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4062)

## v1.33.0

- Always set public DNS name container environment variable (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4035/)
- Always enable ingress for containers (v12) (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4033/)
- Extend BC Build container deadline to DynamicArgoApp TTL (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4059)

## v1.32.0

- Create containers by referencing an AL-Go project (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3678)

## v1.30.0

- Make BC Build container deadline configurable (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4059)

## v1.29.0

- fix Service/Get results in serialization error when companions exist (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4056)

## v1.28.0

-

## v1.27.0

- Refactor and improve major service/container actions v0.12 (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4049)

## v1.26.0

- Add new endpoints to create or update the vscode launch.json for a container (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4004/)
- Add support for New Zealand localisation (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4039)
- Update backup-converter chart version to 1.7.0 (appVersion 1.1.3) (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4041/)

## v1.25.0

- Allow update of customNavSettings for a container based on potentially changed cosmo.json (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3993)
- Improve establishing SSH connection to containers (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4017)

## v1.24.0

- Allow enforcement of autostart/stop through configuration and whitelist for enabled users (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3966)
- Extend ContainerInfo with additional fields (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3981/

## v1.23.0

- Set large configurations through a config map instead of environment variables (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3952/)
- Fix and optimize devcontainer and VS Code handling (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3961)

## v1.22.0

- Add servicename to ExecStatus, add XMLdoc (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3957)

## v1.21.1

- Rework telemetry implementation (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3928)

## v1.21.0

- Remove service environment variables from agents to prevent overflows (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3913)

## v1.20.0

- Add Belgium as supported country (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3914)
- Improve exception handling, add support for async script execution within containers (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3917)

## v1.19.0

- Improve startup speed by keeping compiled C# assemblies (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3889)
- Update SSH dependency to enable trimming again (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3848)
- Better handling for auto-stop corner cases (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3902)
- Make oldest available license version configurable (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3904)

## v1.18.0

- Support configuring Azure Pipeline Agents (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3893)

## v1.17.0

- Normalize branch name in kubernetes labels (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3882)

## v1.16.1

- Handle all types of github tokens during authentication (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2179)

## v1.16.0

- Allow renaming a container (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3757)
- Fix companion retrieval (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3735)
- Test container SSH connection (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3848)

## v1.15.3

- Add swiss (ch) country option (https://dev.azure.com/cc-ppi/General/_workitems/edit/3741)

## v1.15.2

- Move to new registry

## v1.15.1

- Clone should use the exact same image as cloned (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3570)
- Status endpoint should give recognizable return if container can't be found (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3572)

## v1.15.0

- Reenable container upgrades (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3399)

## v1.14.0

- Fix issues for BC22+ containers running without license (https://dev.azure.com/cc-ppi/General/_workitems/edit/3505/)
- Improve error for organizations with ambiguous COSMO entity assignment (https://dev.azure.com/cc-ppi/General/_workitems/edit/3495)

## v1.13.1

- Fix multiple cloning issues (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3498)

## v1.13.0

- Add ability to get apps in container filesystem (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3487)

## v1.12.0

- Move to versioned production build agent image (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3481)

## v1.11.2

- Add NL and GB localizations (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3475)

## v1.11.1

- Enforce autostop, disable autostart in 4PS (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3451)

## v1.11.0

- Add bacpac to bak conversion for Kubernetes (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3192)

## v1.10.1

- Fix missing TTL on build services (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3420)

## v1.10.0

- Fix issue with COSMO guest users (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2179)

## v1.9.0

- Support GitHub auth (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2179)

## v1.8.0

- Make liveness / readiness / startup probes configurable (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3353)

## v1.7.0

- Ignore audience logs (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3126)

## v1.6.0

- Allow startup of arbitrary containers (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3332)

## v1.5.0

- Separate app registrations (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3126)

## v1.4.0

- Support authentication via App registration (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3126)

## v1.3.0

- Add configuration option for disk size (and performance) of BC database disks (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3311)

## v1.2.0

- Add configuration option for CPU and memory limits of BC containers (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3294)
- Fix issue where locale was handed in incorrectly (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3286)

## v1.1.4

- Fix issue where branch name and org name was not passed correctly to container (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3275)

## v1.1.3

- Fix issue where Release Pipeline Start Agent fails, introduced by v1.0.1 (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3255)

## v1.1.2

- Fix issue introduced by v1.0.1 (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3255)

## v1.1.1

- Fix empty version prevented from using AAD-Authentication (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3280/)

## v1.1.0

- Support COSMO guest users (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2995/)

## v1.0.1

- Also support old-style Azure DevOps URLs (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3255)

## v1.0.0

- Allow disabling persistence for containers (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2995/)

## v0.11.56

- Make license secret optional (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2995/)

## v0.11.55

- Add external image pull secret to agents and BC containers (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2995/)

## v0.11.54

- Keep mounting dev licenses for non-trial users when set in cosmo.json (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2995/)

## v0.11.53

- Support shared customer cluster scenarios (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2995/)
- Introduce API Versioning

## v0.11.50

- Fix failing base app deployment with increased proxy timeouts and memory limit (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3149/)
- Allow execution of PowerShell commands in a k8s-container (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3158)
- Add creation time (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3159)

## v0.11.49

- Fix AAD auth by enlarging the Nginx buffer (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3142)

## v0.11.45

- Add Tracing (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2976)

## v0.11.44.1

- Fix issue that prevented exec calls on containers (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2864)
- Fix multiple issues with nextMajor / nextMinor and latest onprem builds (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2865)
- Support for access by additional users, e.g. freelancers working for COSMO (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2855)

## v0.11.44

- Implement backend code to upgrade a container (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2145)
- Improve logging (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2746/)
- Fix nextMajor/nextMinor image create for ondemand containers (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2828/)
- Add devcontainer support (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2850)
- Support for opt-in AD guest support (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2855)

## v0.11.43

- Support building images without license (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2774)

## v0.11.42

- Fix licenseVarName handling during container clone (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2744/)

## v0.11.41

- Exclude containers shared with me from admin-set limits (https://dev.azure.com/cc-ppi/General/_workitems/edit/2554)
- Cleanup outdated container limit warning (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2688)
- New Controller "Features" (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2693/)
- Fix eventlog download since change in containerhelper broke it (https://dev.azure.com/cc-ppi/General/_workitems/edit/2694/)

## v0.11.40

- Support BC22 with *.bclicense only (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2581)

## v0.11.39

- Allow adding new service labels (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2547)
- Added labels for better evalution pipelines in grafana (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2553)

## v0.11.38.1

- Fix missing traefik label connection the middleware and router (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2539)

## v0.11.38

- Increase Docker API timeouts, fix issue during service start (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2532)

## v0.11.37

- Allow default setup for the mechanism to trigger different behavior for custom startup scripts per Swarm (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2194)

## v0.11.36

- Send a notification when a container is created without respecting the limits (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2304)
- Enable setting container orgname, projectname & reponame directly via the service definition (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2353)

## v0.11.35

- Define a simple mechanism to trigger different behavior for custom startup scripts per Swarm (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2194)
- Add support for cloning a container (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/1486)
- Limit number of containers per customer via customer resolution service (e.g. active subscription for "Project Tooling" bought by customer) (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2141/)
- Fix an issue where BcArtifact determination fails on rebuild of base images (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2235/)
- Differ between build/nonbuild containers for default customer container limit (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2273/)
- Consider additional setup when checking health and use container health state directly (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2232/)
- Support configuration for publishing SwaggerUI for BC APIs (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2315/)

## v0.11.34

- Fix bug where cleanup fails because one search criteria gave an empty result (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2143)
- Fix issue where wrong the image was used when specifying version partly (https://dev.azure.com/cc-ppi/General/_workitems/edit/2129)

## v0.11.33

- Fix a problem where empty REST responses (e.g. HTTP 204) caused internal server errors because of missing HTTP/2 support in BC 19 and older (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/784)
- Fix a problem where AAD settings for BC 20 didn't work if the client sent customWebSettings (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2016/)
- Retry service creation with an exponential backoff if it fails (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2118)
- Disable TLS for BC container created from pipeline (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2122)

## v0.11.32

- Better error message if container start causes limit violation (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2035/)
- Support AAD authentication for BC 20 and newer as well (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2016/)
- Additional AAD fixes (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/1775/)

## v0.11.30

- Respect container limits on start as well (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2035/)
- Add option to prevent starting build agent if a pipeline template is too old (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2045)

## v0.11.29

- Only cleanup build directories on Azure File Share older than 1 day (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/1884/)
- Support Azure AD authentication for containers in the self-service (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/1775/)
- Fix issue where images of services starting with docker.io couldn't be started (https://dev.azure.com/cc-ppi/General/_workitems/edit/2013)

## v0.11.28

- Enable Symbol Loading was ignored during docker start for build containers (BC13/BC14 + container with DB-Backup) (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/1998/)

## v0.11.27

- Add weekly worker cleanup for BC build services and build directories on Azure File Share (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/1884/)
- Add daily manager cleanup for docker system incl. unused images (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/1973)
- Return a good message if a container is attempted to be started, but the image build fails, e.g. because the base artifacts are no longer available (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/1981)

## v0.11.26

- Suppress output messages when importing BCCH as ith messes with result interpreation (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/1912)
- Run worker cleanup every day instead of once a week (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/1941)
- Fix problem where containers couldn't be started after failure / shutdown (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/1929)
- Optionally limit number of containers per user and overall, both running and total, as well as total number of build containers (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/1925)
- Added health check API endpoints (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/1916/)

## v0.11.25

- Added weekly cleanup of BCCH PerfmonLogs (https://dev.azure.com/cc-ppi/General/_workitems/edit/1820)
- Added custom header to RabbitMQ messages to determine if it is an error message (https://dev.azure.com/cc-ppi/General/_workitems/edit/1811/)
- API changes to allow creation of build services/containers and getting container logs (https://dev.azure.com/cc-ppi/General/_workitems/edit/1869/)
- Fix bug where logs couldn't be retrieved with a PAT (https://dev.azure.com/cc-ppi/General/_workitems/edit/1869/)
- Support specifying either image or BC Artifact when creating a container (https://dev.azure.com/cc-ppi/General/_workitems/edit/1883)
- Add env variable to container when creating a BC build service (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/1869/)
- Make RabbitMQ hostname configurable to support external RabbitMQ instances (https://dev.azure.com/cc-ppi/General/_workitems/edit/1890)
- Make artifacts more stable (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/1883)
- Fix image rebuild during container start when there's no defualt license for the artifact (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/1901)

## v0.11.24

- Update BCCH to 3.0.1 (https://dev.azure.com/cc-ppi/General/_workitems/edit/1804)

## v0.11.23

- Minor improvements (https://dev.azure.com/cc-ppi/General/_workitems/edit/1632/)
- Support for *.bclicense files (https://dev.azure.com/cc-ppi/General/_workitems/edit/1783)
- Better info notifications for standalone containers (https://dev.azure.com/cc-ppi/General/_workitems/edit/1543/)

## v0.11.22

- Support bcArtifact configurations with type OnPrem and empty version (https://dev.azure.com/cc-ppi/General/_workitems/edit/1602)

## v0.11.21

- Add branch name to the service and containers labels in order to later identify it (https://dev.azure.com/cc-ppi/General/_workitems/edit/1337)
- Fix bug where "successfully started container" was posted after stopping a container (https://dev.azure.com/cc-ppi/General/_workitems/edit/1494)
- More clear message if image needs to be regenerated on container start (https://dev.azure.com/cc-ppi/General/_workitems/edit/1514)
- Fix bug where a stopped container isn't started when no license variable is present in the service labels (https://dev.azure.com/cc-ppi/General/_workitems/edit/1523)

## v0.11.20

- Support regerating cosmoartifact images on container start https://dev.azure.com/cc-ppi/General/_workitems/edit/1460)

## v0.11.19

- Add number of current image builds to monitoring metrics (https://dev.azure.com/cc-ppi/General/_workitems/edit/960)
- Regenerate image when starting a stopped container where the image was cleaned up in the meantime (https://dev.azure.com/cc-ppi/General/_workitems/edit/998)
- Regenerate "latest" images every night as well (https://dev.azure.com/cc-ppi/General/_workitems/edit/1352)
- Fix license file variable name storage (https://dev.azure.com/cc-ppi/General/_workitems/edit/1363)

## v0.11.18

- Support retrieving starting Containers as well. Old logic can be enabled with flag feat-gettask-onlyrunning (https://dev.azure.com/cc-ppi/General/_workitems/edit/1085)
- Non-BC services like build agents may also need to mount the bccontainerhelper cache folder (https://dev.azure.com/cc-ppi/General/_workitems/edit/1128)
- Support use of Performance Counters the counters are activated per default (https://dev.azure.com/cc-ppi/General/_workitems/edit/422)
- Support license file paths including blanks (https://dev.azure.com/cc-ppi/General/_workitems/edit/1137)
- Avoid case problems by making the check for container ownership case-insensitive (https://dev.azure.com/cc-ppi/General/_workitems/edit/1139)
- Add additional info about the connection to the KeyVault (https://dev.azure.com/cc-ppi/General/_workitems/edit/573)
- Only notify users about deleted containers if no other task is running or starting for the same service (https://dev.azure.com/cc-ppi/General/_workitems/edit/1088)
- Add an option to mount the bcartifacts cache to any container (https://dev.azure.com/cc-ppi/General/_workitems/edit/1201)
- Handle a potential problem if no repository id was given (https://dev.azure.com/cc-ppi/General/_workitems/edit/1201)
- Add project template support for product management. (https://dev.azure.com/cc-ppi/General/_workitems/edit/1103/)
- Allow to easily define COSMO IP artifacts as dependency in a container [#1034](https://dev.azure.com/cc-ppi/General/_workitems/edit/1034)
- Support lang subcodes (https://dev.azure.com/cc-ppi/General/_workitems/edit/1285)
- Support async creation of a new container and allow to separately check if image needs to be built (https://dev.azure.com/cc-ppi/General/_workitems/edit/274)

## v0.11.17.3

- Fix bug where NAV 2018 (!) wasn't handled correctly (https://dev.azure.com/cc-ppi/General/_workitems/edit/1254)

## v0.11.17.2

- Fix bug where identification of a container didn't work when it has multiple owners (https://dev.azure.com/cc-ppi/General/_workitems/edit/1114)

## v0.11.17.1

- Fix bug where starting a container created before v0.11.17 failed because the license could not be updated (https://dev.azure.com/cc-ppi/General/_workitems/edit/1099)
- Fix bug where creating a backup didn't work because of the way we identify who owns a container with the multi-owner feature (https://dev.azure.com/cc-ppi/General/_workitems/edit/1106)

## v0.11.17

- Pass PAT authentication to sub-requests when collecting system information (https://dev.azure.com/cc-ppi/General/_workitems/edit/997)
- Added endpoint for Snapshotdebugging according to navcontainerhelper (https://dev.azure.com/cc-ppi/General/_workitems/edit/950/)
- Support multiple owners per services as a comma-separated list (https://dev.azure.com/cc-ppi/General/_workitems/edit/500/)
- Add an action to update the license variable (might be needed if it expires) and automatically call it on service start after a previous stop (https://dev.azure.com/cc-ppi/General/_workitems/edit/1004/)
- Minimize number of times when images are generated and automatically update images during the night, starting at 21:30 per default but overridable via KeyVault (https://dev.azure.com/cc-ppi/General/_workitems/edit/478)
- Fix bug where Azure DevOps artifacts couldn't be validated when the optional scope field is not set (https://dev.azure.com/cc-ppi/General/_workitems/edit/1031/)
- Fix bug where artifact validation failed because of a non-needed auth header (https://dev.azure.com/cc-ppi/General/_workitems/edit/1039)
- Update bccontainerhelper zo version 2.0.13 (https://dev.azure.com/cc-ppi/General/_workitems/edit/1066)

## v0.11.16

- Add more information to the system information service (https://dev.azure.com/cc-ppi/General/_workitems/edit/573)
- Add action to invoke backup of container (https://dev.azure.com/cc-ppi/General/_workitems/edit/443)
- Validate artifacts when creating a new container (https://dev.azure.com/cc-ppi/General/_workitems/edit/862)
- Fix bug which prevented the Azure KeyVault configuration provider to refresh secret values (https://dev.azure.com/cc-ppi/General/_workitems/edit/983)

## v0.11.15

- Add worker information to system information service (https://dev.azure.com/cc-ppi/General/_workitems/edit/877)
- Support optionally enabling premium SKU for the default user (https://dev.azure.com/cc-ppi/General/_workitems/edit/727)

## v0.11.14

- Extend system information service to also include the Windows version of the host (https://dev.azure.com/cc-ppi/General/_sprints/backlog/General%20Team/General/17?workitem=877)
- Fix Bug where stopped services where deleted during cleanup (https://dev.azure.com/cc-ppi/General/_workitems/edit/890)

## v0.11.13

- Add service to provide system information (https://dev.azure.com/cc-ppi/General/_sprints/backlog/General%20Team/General/17?workitem=877)

## v0.11.12

- Disable cleanup of stopped BC service because we can now restart them (https://dev.azure.com/cc-ppi/General/_workitems/edit/651)
- Allow to "stop" and "start" the service by scaling the service to 0 or 1. This looks to the user like the container has started or stopped (https://dev.azure.com/cc-ppi/General/_workitems/edit/128)
- Allow to set a locale when starting a BC container as this can be used to set locale and culture information in the container (https://github.com/microsoft/nav-docker/blob/573359a13e7ac57f5c42b1aeca882a39ee55932b/generic/Run/SetupVariables.ps1#L215-L222)
- Allow configuring the valid domains within the KeyVault for authenticating against the API (https://dev.azure.com/cc-ppi/General/_workitems/edit/698)
- Only run background tasks in production environments, identified by env variable "CosmoProduction" (https://dev.azure.com/cc-ppi/General/_workitems/edit/737)
- Remove default AppInsights key and retrieve it from the KeyVault instead (https://dev.azure.com/cc-ppi/General/_workitems/edit/711)
- Fix a problem where setting additional labels made creating a BC service impossible (https://dev.azure.com/cc-ppi/General/_workitems/edit/628)
- Add a background task that synchronizes the central key vault with the entity key vault. This can also be triggered through a REST call (POST /sync)
- Define the possible projects to create by looking at the available licenses: Everything for which we have a license can be built (https://dev.azure.com/cc-ppi/General/_workitems/edit/703/)
- Validate users against a list of tenant ids instead of emails. The tenant id is always the same for guests and regular users, making it easier to decide if a request is valid or not (https://dev.azure.com/cc-ppi/General/_workitems/edit/759/)
- Add a controller for retrieving the RabbitMQ client credentials for the VS Code Extension
- Allow configuring Symbol Loading, the default value if nothing is specified is true (https://dev.azure.com/cc-ppi/General/_workitems/edit/681/)
- Restrict access to COSMO-internal Swarm backends to Cosmonauts from any valid tenant (https://dev.azure.com/cc-ppi/General/_workitems/edit/770)
- Resolve secret variables when creating a new BC container (https://dev.azure.com/cc-ppi/General/_workitems/edit/791)

## v0.11.11

- Enable symbol loading for NAV 2018 and BC 13 by default (https://dev.azure.com/cc-ppi/General/_workitems/edit/675)
- Enable API services by default on container startup as it is also enabled by default in the pipeline (https://dev.azure.com/cc-ppi/General/_workitems/edit/675)

## v0.11.10.2

- Use TLS for the RabbitMQ connection
- Support custom scripts within BC containers (https://dev.azure.com/cc-ppi/General/_workitems/edit/62)

## v0.11.10.1

- Fix a bug where the version wasn't specified for Get-BcArtifactUrl (redo 0.11.9.1)

## v0.11.10

- Add async notifications on cleanup tasks as well as on image build (https://dev.azure.com/cc-ppi/General/_workitems/edit/221)
- Add Azure KeyVault configuration provider to access secrets and configs. This allows flexible configurations of the service behavior.
- Store database on volume so that when a container is restarted/re-created the database still is in place (https://dev.azure.com/cc-ppi/General/_workitems/edit/407)

## v0.11.9.1

- Fix a bug where the version wasn't specified for Get-BcArtifactUrl

## v0.11.9

- Add a configuration option to allow to selectively disable the import of the performance test toolkit into images while Microsoft fails to fix a bug that makes image generation fail with perf toolkit import (https://github.com/microsoft/navcontainerhelper/issues/1617)
- Go to bccontainerhelper 2.0.4
- Fix image name recognition. When creating a preview image (nextMinor/nextMajor) the image name was not always correctly identified (https://dev.azure.com/cc-ppi/General/_workitems/edit/539/)

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

- Allow to configure whether multi-tenancy is active or not (https://dev.azure.com/cc-ppi/General/_workitems/edit/465)
- Allow to configure whether the Azure File Share is mounted for non-BC services as well. This is needed whenever a non-BC container wants to access the Azure File Share.
- Allow access for Non-COSMO users, in the first for a trial phase (https://dev.azure.com/cc-ppi/General/_workitems/edit/481/)
- Add trial mode for image generation which allows only specific, predefined images to be generated for trials and will be set up in advance (https://dev.azure.com/cc-ppi/General/_workitems/edit/484)
- Go to bccontainerhelper 2.0.0 to use the new -before param for Get-BCArtifactUrl in order to not get artifacts after a specific date
- Go to bccontainerhelper 2.0.1 as it fixes https://github.com/microsoft/navcontainerhelper/issues/1646

## v0.11.7

- Automatically cleanup dangling Docker images weekly (https://dev.azure.com/cc-ppi/General/_workitems/edit/183)
- Automatically cleanup BC artifacts older than 7 days every week (https://dev.azure.com/cc-ppi/General/_workitems/edit/183)
- Automatically cleanup unused volumes (https://dev.azure.com/cc-ppi/General/_workitems/edit/183)
- License Download Check added and Error Message improved during CI-Setup Variables when Docker image creation is invoked (https://dev.azure.com/cc-ppi/General/_workitems/edit/456)
- Fix image creation to use a correct image name when building for next minor or major version
- Automatically cleanup build agents, long-running BC build containers and other dead containers/services twice a day (https://dev.azure.com/cc-ppi/General/_workitems/edit/183)

## v0.11.6.1

- Fix problem where image creation failed on older version because the perf test tool doesn't exist there (https://dev.azure.com/cc-ppi/General/_workitems/edit/425/)

## v0.11.6

- Remove requirement for PATValidationProject: Instead of setting a PATValidationProject query param, most of the time the org can be deduced from the user. If not, a Header "Collection-URI" is used

## v0.11.5.1

- Change time for the Portainer restart to 4am GMT

## v0.11.5

- Add test libraries (functional and performance) when creating images: Whenever a new image is created, the test libraries are imported into the database, so they are always directly available after the container starts. This also requires that a license file is added to the call when the image is created as it is not possible to import the test libraries with a Cronus license
- Add scheduled restarts for Portainer services (first part of https://dev.azure.com/cc-ppi/General/_workitems/edit/183)
- Set access control using labels (https://tobiasfenster.io/portainer-access-control-setup)
- Add cleartext org, project and repo for later usage
- Get container startup scripts according to new logic and from new repo (https://dev.azure.com/cc-ppi/General/_workitems/edit/382)
- Fix status check when looking for containers: Now only running containers are considered
- Add telemetry key to the core service, not to the agent service
- Optionally get non-running task as well (https://dev.azure.com/cc-ppi/General/_workitems/edit/401)

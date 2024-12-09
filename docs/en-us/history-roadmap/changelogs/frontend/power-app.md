---
    title: Power App Changelog
    description: Power App Changelog
    orig-source: https://dev.azure.com/cc-ppi/General/_git/ppi-self-service?path=%2Fchangelog.md
---

# Power App Changelog

All notable changes to the PowerApp

> [!NOTE]
> Dicontinued. [More information](../../whats-next.md#power-app)

## 2.3.30

* Fixed: PR Builds are now sorted by build number [#1982](https://dev.azure.com/cc-ppi/General/_workitems/edit/1982)

## 2.3.29

* Fixed: Corrected Problems with inconsistent canvas app source code [#1942](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/1942)

## 2.3.28

* Fixed: Bug report for Maintenance > Update Variables not working [#1825](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/1825)
* Fixed: Bug report for PowerApp Containers List Error [#1935](https://dev.azure.com/cc-ppi/General/_workitems/edit/1935)

## 2.3.27

* Update to new brand design. [#1769](https://dev.azure.com/cc-ppi/General/_workitems/edit/1769)

## 2.3.26

* Fix: Published PowerApp does not react after start. [#1743](https://dev.azure.com/cc-ppi/General/_workitems/edit/1743)

## 2.3.25

* Support parameter "enablePremium" when creating a container in the PowerApp [#930](https://dev.azure.com/cc-ppi/General/_workitems/edit/930)

## 2.3.24

* Fixed: Bug report for missing PR Artifacts in PR containers.

## 2.3.23

* Fixed: Bug report for Phantom entries in artifact list for Product Development configs [#1669](https://dev.azure.com/cc-ppi/General/_workitems/edit/1669/)
* Allow to set up arbitrary customNavSettings and customWebSettings in cosmo.json [#1558](https://dev.azure.com/cc-ppi/General/_workitems/edit/1558/)

## 2.3.22

* Fixed: Target name corrected for "Support SaaS Backups" [#1495](https://dev.azure.com/cc-ppi/General/_workitems/edit/1495/)

## 2.3.21

* Support SaaS Backups [#1495](https://dev.azure.com/cc-ppi/General/_workitems/edit/1495/)
* Add product template support in PowerApp [#1499](https://dev.azure.com/cc-ppi/General/_workitems/edit/1499/)

## 2.3.20

* Fixed: Can not create a BC Container with config from cosmoConfigBranch [#1470](https://dev.azure.com/cc-ppi/General/_workitems/edit/1470/)

## 2.3.19

* Fixed: Control alignment for Template Repository in SelfService PowerApp is not correct [#1335](https://dev.azure.com/cc-ppi/General/_workitems/edit/1335/)

## 2.3.18

* Fixed: PowerApp is not respecting `cosmoConfigBranch` parameter from Variable Group  [#972](https://dev.azure.com/cc-ppi/General/_workitems/edit/972)
* New option `UseServerlessAgents` added to support D365BC Release Pipelines that uses API deployment with no need of MS hosted agents.

## 2.3.17

* Fixed: Resolved configuration cause a problem during create container with logic of PowerApp. [#1268](https://dev.azure.com/cc-ppi/General/_workitems/edit/1268)
* Fixed: Bug report for PowerApp : Issue on creating container from pull request. [#1183](https://dev.azure.com/cc-ppi/General/_workitems/edit/1183)
* Fixed: Problems with Umlauts in Artifact Configuration path. [#1306](https://dev.azure.com/cc-ppi/General/_workitems/edit/1306)

## 2.3.16

* Fixed: Update CI/CD does not work from PowerApp. [#1244](https://dev.azure.com/cc-ppi/General/_workitems/edit/1244)

## 2.3.15

* Fix bug where included variables in cosmo.json caused an issue during Create Container operations. [#1183](https://dev.azure.com/cc-ppi/General/_workitems/edit/1183)

## 2.3.14

* Allow external customers to setup a repository for demo container configurations. [see more #1035](https://dev.azure.com/cc-ppi/General/_workitems/edit/1035)
* Create Container with Artifacts fails from PowerApp, because the validation in API avoid creation. [see more #1036](https://dev.azure.com/cc-ppi/General/_workitems/edit/1036)

## 2.3.13

* Fix: Share Container didn't work (Flow replaced by office 365 Connector). The Mail is now send direct without a Flow. [see more #957](https://dev.azure.com/cc-ppi/General/_workitems/edit/957)

## 2.3.12

* Fix: API-Call failed - Create Release Definition with HTTP 500 [see more #995](https://dev.azure.com/cc-ppi/General/_workitems/edit/995)

## 2.3.11

* Fix: Share Container didn't work (changed flow parameters). [see more #957](https://dev.azure.com/cc-ppi/General/_workitems/edit/957)

## 2.3.10

* Setup of container display name was incorrect from PowerApps [see more #959](https://dev.azure.com/cc-ppi/General/_workitems/edit/959)

## 2.3.9

* License Information are now available at screen "Container Information"
* Start / Stop containers and show status [see more #919](https://dev.azure.com/cc-ppi/General/_workitems/edit/919)

## 2.3.8

* PowerApp version is now defined by Environment Variable 'ccppi_AzureDevOpsDockerSelfService_Version' (automatically increased by deployment)
* Feedback Email address for external customers updated

## 2.3.7

* Feedback from External Customers is now send by EMail (Limited Access to Internal Backlog)
* Back Buttons are now added to each Screen [see more #904](https://dev.azure.com/cc-ppi/General/_workitems/edit/904)
* "Other Feedback" was interpreted as Bug and not as User Story [see more #910](https://dev.azure.com/cc-ppi/General/_workitems/edit/910)

## 2.3.6

* Container information was not retrieved from correct Swarm URL.

## 2.3.5

* Create Container parameters are incomplete [see more #886](https://dev.azure.com/cc-ppi/General/_workitems/edit/886)
* Improved error information during refresh of Container Log and Container Information
* Sorting of license and project template adjusted for app creation

## 2.3.4

* Reload fails on Create Project Container with Debug Swarm URL [see more #884](https://dev.azure.com/cc-ppi/General/_workitems/edit/884)
* Marketing Information (Name, Description) corrected

## 2.3.3

* Release preparation - debug information removed

## 2.3.2

* Fixed: Wrong entity code were used in several places e.g. create app [see more #879](https://dev.azure.com/cc-ppi/General/_workitems/edit/879)
* Fixed: Entity code "Unknown" caused problems to resolve the right app [see more #879](https://dev.azure.com/cc-ppi/General/_workitems/edit/879)

## 2.3.1.1

* Hardcoded Settings for Testing removed
* Usage of DebugSwarmUrl improved

## 2.3.1

* Settings refactored, Debug-Swarm & Debug-Entity-Code are now used in Get-Containers & Create-Container API calls
* Unused variables and collections removed

## 2.3.0

* Display Solution Version and System Indicator in PowerApp [see more #813](https://dev.azure.com/cc-ppi/General/_workitems/edit/813)
* Change KeyVault access for every secret in PowerApp [see more #785](https://dev.azure.com/cc-ppi/General/_workitems/edit/785)
* API refactoring [see more #785](https://dev.azure.com/cc-ppi/General/_workitems/edit/785)
* Customer specific information (Org-Names, Projects, ...) removed from trace [see more #785](https://dev.azure.com/cc-ppi/General/_workitems/edit/717)
* Get Default Entity Code, KeyVault from Azure AD Graph [see more #754](https://dev.azure.com/cc-ppi/General/_workitems/edit/754)
* Resolve secrets for `azdevops-automation` service calls in service [see more #789](https://dev.azure.com/cc-ppi/General/_workitems/edit/789)
* Secrets are not longer resolved by PowerApp for Update Variables, Create App, Create Project, Update Task Groups [see more #790](https://dev.azure.com/cc-ppi/General/_workitems/edit/790)
* Version pick, license pick on app creation in Power App is now based on `docker-automation` service [see more #707](https://dev.azure.com/cc-ppi/General/_workitems/edit/707)

## 2.2.4

* Import Solution Guide [see more #709](https://dev.azure.com/cc-ppi/General/_workitems/edit/709)
* GetDomains response of `Microsoft-Graph Core API` connector fixed
* Default User Domain is now used for KeyVault Request

## 2.2.3

* Fixed: Query for Default COSMO Entity Code fixed

## 2.2.2

* Assign Entity added

## 2.2.1

* Import Task groups
* Create CD Pipelines

## 2.2.0

* Entity AAD Code Handling refactored.
* KeyVault-URL is now provided by azdevops-automation API - needed for external readiness
* azdevops-automation API is used for KeyVault access - needed for external readiness

## 2.1.0

* changelog added

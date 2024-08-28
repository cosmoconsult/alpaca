---
    title: Container startup scripts Changelog
    description: Container startup scripts Changelog
    orig-source: https://github.com/cosmoconsult/container-scripts-for-selfservice/blob/main/CHANGELOG.md
---

# Change Log

All notable changes to the Container startup scripts

- Add brackets to avoid problems if database names are reserved T-SQL words
- Support COSMO IP artifacts (see [#1034](https://dev.azure.com/cc-ppi/General/_workitems/edit/1034))
- Add severity level "debug" to logging (see [1232](https://dev.azure.com/cc-ppi/General/_workitems/edit/1232))
- Add better log handling (simple recovery mode and shrinked log)
- Enable Performance Counter
- Fix version resolution for artifacts (see [#1019](https://dev.azure.com/cc-ppi/General/_workitems/edit/1019))
- Fix ignored artifact version specification (see [#988](https://dev.azure.com/cc-ppi/General/_workitems/edit/988))
- Restart after font import
- Add enablePremium handling
- Handle restart gracefully
- DevOps artifacts were ignored
- Support custom scripts
- "Start-NavAppDataUpgrade" added to additional setup, when a data upgrade is needed during app install
- Fix: "Start-NavAppDataUpgrade" was not executed, when previous app version was uninstalled during upgrade of another app (see [#1314](https://dev.azure.com/cc-ppi/General/_workitems/edit/1314))
- Suppress configurable errors or warnings during logging. The suppressed message are then logged as information. (see [#1730](https://dev.azure.com/cc-ppi/General/_workitems/edit/1730))
- Suppress configurable errors or warnings changed to Base64. (see [#1730](https://dev.azure.com/cc-ppi/General/_workitems/edit/1730))
- Logging for RapidStart import improved. (see [#1830](https://dev.azure.com/cc-ppi/General/_workitems/edit/1830))
- 30 days trial company ('My Company') is now ignored during RapidStart. (see [#1830](https://dev.azure.com/cc-ppi/General/_workitems/edit/1830))
- Change experience at company information for all companies (except 'My Company') into Premium, when `enablePremium` is set to `true`. (see [#1842](https://dev.azure.com/cc-ppi/General/_workitems/edit/1842))
- Extend health check to also consider a marker file generated at the end of AdditionalSetup.ps1 (see [#2232](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2232))
- Add 4PS initialization and upgrade handling
- Add 4PS post startup handling to collect DLLs for base app modifications
- Improve stability during upgrades for corner cases
- Add ability to unpublish all apps as this is required for BC 20 -> 21 upgrades
- Allow to work with BC Online backups from modified base app clusters
- Fix potential problem with NavUserPassword auth (see [#3047](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3047))

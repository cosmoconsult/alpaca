---
    title: Business Central development project templates Changelog
    description: Business Central development project templates Changelog
    orig-source: https://dev.azure.com/cc-ppi/General/_git/Templates-Project-D365BC?path=%2Fchangelog.md
---

# Change Log

All notable changes to the Business Central development project templates

- Adhere to naming conventions (see [1110](https://dev.azure.com/cc-ppi/General/_workitems/edit/1110/))
- Added workspace recommendations (see [#28](https://dev.azure.com/cc-ppi/General/_workitems/edit/28/))
- Fix BC15 test app (see [#977](https://dev.azure.com/cc-ppi/General/_workitems/edit/977/))
- Support automated setup of nextminor/nextmajor and add BC18 support (see [#738](https://dev.azure.com/cc-ppi/General/_workitems/edit/738/), [#739](https://dev.azure.com/cc-ppi/General/_workitems/edit/739/))
- Fix .vscode gitignore handling
- Added template for product management [#1103](https://dev.azure.com/cc-ppi/General/_workitems/edit/1103)
- Re-added assignment of suffix [#1266](https://dev.azure.com/cc-ppi/General/_workitems/edit/1266)
- Enabled `isolation=hyperv`for BC14 template, because `FinSQL` is used to run the tests and task `ALOps Run Test Suite` failed in pipeline [#1280](https://dev.azure.com/cc-ppi/General/_workitems/edit/1280)
- BC19 templates added [#1399](https://dev.azure.com/cc-ppi/General/_workitems/edit/1399)
- Remove verbosity for al.editorServicesLogLevel [#1547](https://dev.azure.com/cc-ppi/General/_workitems/edit/1547)
- BC19 template replaced "ShowMyCode" with "resourceExposurePolicy" [#1511](https://dev.azure.com/cc-ppi/General/_workitems/edit/1511)
- Disable AppSourceCop on NextMajor builds by default [#1197](https://dev.azure.com/cc-ppi/General/_workitems/edit/1197)
- Update workspace extension recommendations [#1632](https://dev.azure.com/cc-ppi/General/_workitems/edit/1632/)
- enable Premium exprience by default [#1344](https://dev.azure.com/cc-ppi/General/_workitems/edit/1344)
- Support limiting localization checks to specific localization to reduce runtime [#1303](https://dev.azure.com/cc-ppi/General/_workitems/edit/1303/)
- Remove showmycode from product template [#1694](https://dev.azure.com/cc-ppi/General/_workitems/edit/1694/)
- Add vscode-icons to recommendations[#1695](https://dev.azure.com/cc-ppi/General/_workitems/edit/1695/)
- Increase default memory to 14GB
- Update artifact now as 7zip archive for K8s [2101](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2101)
- Disable Task Scheduler per default [2009](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2009)
- Allow backend specific defaults incl. enablePremium [#2194](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2194)
- Add appImportScope Tenant to 4PS defaults [#2583](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2583)
- Respect auth param when creating a project [#2672](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/2672)
- add init-environment pipeline [#3213](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/3213)

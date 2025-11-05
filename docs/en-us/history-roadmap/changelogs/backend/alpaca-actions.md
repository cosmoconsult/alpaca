---
    title: Alpaca AL-Go Actions Changelog
    description: Alpaca AL-Go Actions Changelog
    orig-source: https://github.com/cosmoconsult/Alpaca-Actions
---

# Alpaca AL-Go Actions Changelog

All notable changes to the Alpaca AL-Go Actions

## v2.3.2 (2025-11-05)

- Fix issue where tests where not run in the container or could result in endless lopps

## v2.3.1 (2025-11-04)

- Fix issue where AL-Go published wrong app versions in the container

## v2.3.0 (2025-10-29)

- Added new workflow to sync secrets to the Alpaca backend
- Moved all usages of the k8s api to the alpaca api

## v2.2.0 (2025-10-28)

- Fix issue with urls in AL-Go setting "installApps"
- Added support for Url-artifacts to directly reference app files
- Added support for all not already installed apps to be published in the container

## v2.1.0 (2025-09-04)

- Added support for multiple projects with dependencies

## v2.0.0 (2025-08-05)

- Refactored scripts for custom workflow jobs of repository Alpaca-PTE as actions
- Refactored handling of Run-AlPipeline overrides

## v1.0.0 (2025-06-23)

- Download AL-Go Helpers from microsoft/AL-Go-PTE@preview

## (2025-06-19)

- Update AL-Go Helpers
- Fix issue with GitHub Token when downloading template

## (2025-05-30)

- Adapt recent changes in AL-Go Actions

## (2025-05-27)

- Fix issue where the destination folder was not correctly set when updating files

## (2025-05-22)

- Improve handling of file updates and ensure compatibility with GitHub Actions environments

## (2025-05-16)

- Initial release: add UpdateAlpacaSystemFiles action

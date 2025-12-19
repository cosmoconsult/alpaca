---
    title: NuGet Backend Changelog
    description: NuGet Backend Changelog
    orig-source: https://github.com/cosmoconsult/nuget-api
---

# NuGet Backend Changelog

All notable changes to the NuGet Backend

## v1.6.0 (2025-12-16)

- Return title, description and authors of a package [see #4596](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4596)
- Swagger: handle XForwardedPrefixHeader correctly

## v1.5.0 (2025-12-16)

- Support paging when querying packages in a feed [see #4596](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4596)

## v1.4.0 (2025-09-23)

- Add endpoint `<package>/download` to download a package with HTTP POST [see #4476](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4476)

## v1.3.2 (2025-09-19)

- Fix issues with GitHub feeds [see #4474](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4474)

## v1.3.1 (2025-09-04)

- Fix wildcard homebrew path

## v1.3.0 (2025-09-02)

- Harmonize PowerShell execution within APIs

## v1.2.4 (2025-08-29)

- Better PowerShell error handling

## v1.2.3 (2025-04-25)

- Update BcContainerHelper

## v1.2.2 (2025-04-15)

- Support for platform version and selection of "LatestMatching" [see #4303](https://dev.azure.com/cc-ppi/83f75d99-795d-45dc-8543-9fe1918ff7f9/_workitems/edit/4303)

## v1.2.1 (2025-03-24)

- Download with selction of "Earlist" if version is given [see #4276](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4276)

## v1.2.0 (2025-03-14)

- New endpoint `/metadata` to get package information [see #4262](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4262)

## v1.1.0 (2025-03-12)

- Add features for package view in VSCode [see #4262](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4262)

## v1.0.0

- Initial release
- Move to GitHub

---
    title: Alpaca AL-Go Per Tenant Extension Template Changelog
    description: Alpaca AL-Go Per Tenant Extension Template Changelog
    orig-source: https://github.com/cosmoconsult/Alpaca-PTE
---

# Alpaca AL-Go Per Tenant Extension Template Changelog

All notable changes to the Alpaca AL-Go Per Tenant Extension Template

## (2026-02-04)

- Updated to [Alpaca-Actions@v2.5.0](./alpaca-actions.md#v250-2026-01-30)

## (2026-01-22)

- Updated to [Alpaca-Actions@v2.4.0](./alpaca-actions.md#v240-2026-01-19)
- Updated to [AL-Go@v8.1](https://github.com/microsoft/AL-Go/blob/v8.1/RELEASENOTES.md)

## (2025-11-05)

- Updated to [Alpaca-Actions@v2.3.2](./alpaca-actions.md#v232-2025-11-05)

## (2025-11-04)

- Updated to [Alpaca-Actions@v2.3.0](./alpaca-actions.md#v230-2025-10-29)
- Updated to [Alpaca-Actions@v2.3.1](./alpaca-actions.md#v231-2025-11-04)

## (2025-10-28)

- Updated to [AL-Go@v8.0](https://github.com/microsoft/AL-Go/blob/v8.0/RELEASENOTES.md)
- Updated to [Alpaca-Actions@v2.2.0](./alpaca-actions.md#v220-2025-10-28)

## (2025-09-04)

- Added support for multiple projects with dependencies
- Changed runner to ubuntu-latest for all custom jobs
- Changed shell to pwsh for all custom jobs

## (2025-08-05)

- Added update of AL-Go system files after all app creation workflows
- Added support for multiple independent projects
- Refactored scripts of custom workflow jobs as actions in repository Alpaca-Actions
- Refactored handling of Run-AlPipeline overrides

## (2025-07-23)

- Fix issue where the error messages of the attempts to publish an app resulted in confusing annotations

## (2025-07-02)

- Fix issue where the container configuration was not correctly used from the source branch of the pull request

## (2025-06-30)

- Fix bug where only the last attempt to publish a app logged the error message

## (2025-06-23)

- Update AL-Go System Files

## (2025-06-18)

- Update AL-Go System Files

## (2025-06-06)

- Include OnPrem deployment script from https://github.com/akoniecki/AL-Go-OnPremise-Deployer

## (2025-06-05)

- Update AL-Go System Files

## (2025-06-02)

- Update AL-Go System Files

## (2025-05-30)

- Refactor Alpaca API functions module
- Support setting a custom backendUrl using the variable `ALPACA_BACKEND_URL` (on organization or repository level)
- Remove dedicated GitHub Authorization Header for Alpaca container requests

## (2025-05-16)

- Update AL-Go System Files
- Move and refactor Update COSMO Alpaca system files to a dedicated GitHub action

## (2025-05-07)

- Fix bug where pre-configured artifacts were not correctly placed in compiler folder
- Add BcContainerHelper setting `doNotRemovePackagesFolderIfExists` to AL-Go settings (next to the related setting `useCompilerFolder`)

## (2025-04-29)

- Fix bug where pre-configured apps were not considered for compilation

## (2025-04-25)

- Update AL-Go System Files
- Set w1 as default country
- Improve default AL-Go settings

## (2025-04-16)

- Add default Alpaca backend URL
- Add basic alpaca.json configuration
- Update AL-Go System Files

## (2025-04-15)

- Update AL-Go System Files

## (2025-03-03)

- Update AL-Go System Files

## (2025-02-05)

- Skip dependency app install, because they are already installed in container

## (2025-02-03)

- Get artifacts for compiler folder

## (2025-01-31)

- Fix path of .alpaca folder for multi project repositories

## (2025-01-30)

- Fix template url and naming of custom jobs
- Add update logic for .alpaca directory
- Update from AL-Go template

## (2024-10-30)

- Initial release

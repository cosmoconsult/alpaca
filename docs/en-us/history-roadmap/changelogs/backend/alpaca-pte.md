---
    title: Alpaca AL-Go Per Tenant Extension Template Changelog
    description: Alpaca AL-Go Per Tenant Extension Template Changelog
    orig-source: https://github.com/cosmoconsult/Alpaca-PTE
---

# Alpaca AL-Go Per Tenant Extension Template Changelog

All notable changes to the Alpaca AL-Go Per Tenant Extension Template

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

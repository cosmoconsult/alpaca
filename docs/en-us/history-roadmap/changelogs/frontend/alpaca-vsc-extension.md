---
    title: Visual Studio Code Extension (Preview) Changelog
    description: Visual Studio Code Extension (Preview) Changelog
    orig-source: https://github.com/cosmoconsult/alpaca-vsc-extension/releases
---

# Visual Studio Code Extension (Preview) Changelog

All notable changes to the Visual Studio Code Extension (Preview)

## Unreleased

## 0.33.0 (2025-01-10)

- Improve webview implementation
- After an update of the extension, the changelog will now be shown automatically
- Update translations
- Update dependency packages

## 0.32.0 (2024-12-09)

- Add optional setting to always show the container id (`cosmo-alpaca.visibility.alwaysShowContainerId`)
- Improve container status/health checks (esp. after restarts)
- Improve documentation of auto start/stop actions and settings
- Update dependency packages
- Update API clients
  
## 0.31.0 (2024-11-19)

- Fix visibility issue when switching to only show favorites
- Add additional container labels in the container tree view
- Add action to only show own branches (incl. default branches)
- Add multi-language support with translations for English and German
- Add action to open branch in browser
- Update dependency packages
- Update API clients

## 0.30.0 (2024-10-31)

- Support Alpaca-PTE template for AL:Go

## 0.29.0 (2024-10-30)

- Don't show all containers for projects beneath a branch

## 0.28.0 (2024-10-29)

- Support Azure DevOps in vscode.dev

## 0.27.0 (2024-10-18)

- New Azure Devops features:
  - show and assign COSMO entities
  - list branches
- Update dependency packages
- Update API clients
- Show all containers from all branches underneath the project

## 0.26.0 (2024-10-01)

- Fix missing container actions for technical users

## 0.25.1 (2024-09-26)

- Improve role selection for existing users

## 0.25.0 (2024-09-26)

- Sort treeview items alphabetically by name
- Update API clients
- Add simplified fullscreen views for functional roles with reduced actions, add walkthrough

## 0.24.1 (2024-09-25)

- Bundle VS Code Elements for webview

## 0.24.0 (2024-09-25)

- Preview: Add framework for future webview support in Alpaca

## 0.23.0 (2024-09-19)

- Add support to prune obsolete configurations of the vscode launch.json
- Split launch.json and terminal functions from container.ts
- Implement container tree view
- Add new action to create standalone containers
- Improve container creation
- Support GitHub containers based on a branch
- Update dependency packages
- Update API clients

## 0.22.0 (2024-09-03)

- Fix problem where part of a setting could be read as "AI" instead of "AL"
- Add support to clear existing symbols before downloading symbols from a container
- Add welcome page with view selection when opening the extension for the first time
- Refactoring and several internal improvements
- Update dependency packages
- Update API clients

## 0.21.0 (2024-08-13)

- Update API clients

## 0.20.0 (2024-07-31)

- Update API clients

## 0.19.0 (2024-07-29)

- Fix issue where "Create release" action wasn't displayed
- Hide container actions based on container state

## 0.18.0 (2024-07-26)

- Moved Launch.json creation/extension to k8s-api
- Add support to cache the container credentials and download symbols directly after successfully creating the launch.json
- Improved container status handling & health checks
- New actions:
  - rename container
  - set container auto start & stop mode
  - (un-)favorite accounts and repositories (stored in settings)
  - hide accounts and repositories (stored in settings)
- Refactoring and several internal improvements
- Fix an issue where canceling an input dialog was not handled correctly and didn't cancel the action [#3](https://github.com/cosmoconsult/alpaca/issues/3)
- Update dependency packages
- Update API clients

## 0.17.0 (2024-06-07)

- Updated README with more information

## 0.16.0 (2024-06-06)

- Improve caching: remember collapse state of tree items
- Refactoring and several internal improvements

## 0.15.0 (2024-06-04)

- List/create deployments and show deployment status
- List/create pull requests and show checks

## 0.14.0 (2024-05-17)

- More details for apps including app dependencies
- List branches
- Show/open releases & download release assets
- Environment management (list, create, delete)
- Action to deploy releases to one or multiple environments
- Create releases from branches

## 0.13.0 (2024-05-08)

- Disable caching for containers, refactor deletion

## 0.12.0 (2024-05-08)

- Show AL-Go apps underneath projects
- New actions:
  - Import apps into AL-Go repository
  - Init existing AL-Go repo for usage with COSMO Alpaca
  - Update AL-Go system files
  - Create release
  - Increment version number

## 0.11.0 (2024-05-03)

- Update API clients

## 0.10.0 (2024-05-03)

- Add code generation to automate & validate user inputs, responses & error messages
- Update API clients
- Improve caching
- Add action to create AL-Go app repositories
- Add AL-Go app creation workflow

## 0.9.0 (2024-03-22)

- Make extension more compatible with codespaces
- Update API clients
- UI/UX improvements - tree view, icons, favorites- Execute DLL collection asynchronously

## 0.8.3 (2024-01-18)

- Fix packaging issue
- Fix asynchronous view-based functions
- Add hidden action to refresh auth/login

## 0.8.0 (2024-01-18)

- Make extension work on the web version of VS Code
- Rework caching
- Improve waiting for IP address and SSH connection
- Remove sasToken
- Update dependency packages
- Update API clients

## 0.7.1 (2023-11-10)

- Add BCST restart after base app preparation

## 0.7.0 (2023-11-09)

- Base app preparation moves all extensions into dev scope

## 0.6.0 (2023-10-20)

- Initial release

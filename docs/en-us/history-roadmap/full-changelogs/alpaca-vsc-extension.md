---
    title: Visual Studio Code Preview Extension (Preview) Changelog
    description: Visual Studio Code Preview Extension (Preview) Changelog
    orig-source: https://dev.azure.com/cc-ppi/Self-Service/_git/alpaca-vsc-extension?path=/CHANGELOG.md
---

# Change Log

All notable changes to the Visual Studio Code Extension (Preview)

## 0.18.0

- Moved Launch.json creation/extension to k8s-api

## 0.17.0

- Updated README with more information

## 0.16.0

- Improve caching: remember collapse state of tree items
- Refactoring and several internal improvements

## 0.15.0

- List/create deployments and show deployment status
- List/create pull requests and show checks

## 0.14.0

- More details for apps including app dependencies
- List branches
- Show/open releases & download release assets
- Environment management (list, create, delete)
- Action to deploy releases to one or multiple environments
- Create releases from branches

## 0.13.0

- Disable caching for containers, refactor deletion

## 0.12.0

- Show AL-Go apps underneath projects
- New actions:
  - Import apps into AL-Go repository
  - Init existing AL-Go repo for usage with COSMO Alpaca
  - Update AL-Go system files
  - Create release
  - Increment version number

## 0.11.0

- Update API clients

## 0.10.0

- Add code generation to automate & validate user inputs, responses & error messages
- Update API clients
- Improve caching
- Add action to create AL-Go app repositories
- Add AL-Go app creation workflow

## 0.9.0

- Make extension more compatible with codespaces
- Update API clients
- UI/UX improvements (tree view, icons, favorites)
- Execute DLL collection asynchronously

## 0.8.1 - 0.8.3

- Fix packaging issue
- Fix asycronous view based functions
- Add hidden action to refresh auth/login

## 0.8.0

- Make extension work on the web version of VS Code
- Rework caching
- Improve waiting for ip address and SSH connection
- Remove sasToken
- Update dependency packages
- Update API clients

## 0.7.1

- Add BCST restart after base app preparation

## 0.7.0

- Base app preparation moves all extensions into dev scope

## 0.6.0

- Initial release

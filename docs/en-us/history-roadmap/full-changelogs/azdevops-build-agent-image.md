---
    title: Azure DevOps build agent image Changelog
    description: Azure DevOps build agent Changelog
    orig-source: https://github.com/cosmoconsult/azdevops-build-agent-image/blob/master/CHANGELOG.md
---

# Change Log

All notable changes to the Azure DevOps build agent image

# v1.0.3

- Add default font to vsceagent image since the new windows server core images come without any

# v1.0.2

- Add Azure CLI to vsceagent image (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/1950)

# v1.0.1

- Add vsceagent image with Node.js (LTS), python, windows-build-tools and npm packages (webpack, vsce) (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/1950)

# v1.0.0

- Add AppInsights

# v0.9.9

- Add an option to copy NST dlls (https://dev.azure.com/cc-ppi/General/_workitems/edit/1201)
- Bump bccontainerhelper to 2.0.14 in BC image

# v0.9.8

- Bump bccontainerhelper to 2.0.13 in BC image

# v0.9.7

- Add .NET 5.0 and 6.0 (preview) SDKs to dotnet image
- Add Azure CLI to dotnet image
- Bump bccontainerhelper to 2.0.12 in BC image

# v0.9.6.1

- Fix missing env variables

# v0.9.6

- Add multi-arch builds

# v0.9.5

- Add jq to the dotnet core image

# v0.9.4

- Add a dotnet core image

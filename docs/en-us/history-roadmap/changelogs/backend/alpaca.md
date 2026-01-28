---
    title: Alpaca Backend Changelog
    description: Alpaca Backend Changelog
    orig-source: https://github.com/cosmoconsult/alpaca-api
---

# Alpaca Backend Changelog

All notable changes to the Alpaca Backend

## v0.79.0 (2026-01-28)

- Add support for creating and managing on-premises GitHub environments

## v0.78.0 (2026-01-28)

- Read repository variables from config sync as fallback 

## v0.77.0 (2026-01-27)

- Integrate and refactor endpoints from NuGet API:
  - `/NuGet/FeedsConfig`: Get NuGet feeds configuration for the current user
  - `/AzureDevOps/NuGetFeedsConfig` is obsolete now
  - `/NuGet/Feed/query`: Query a NuGet feed and get package list
  - `/NuGet/Package/{packageName}/download`: Download a NuGet package
  - `/NuGet/Package/{packageName}/metadata`: Get metadata of a NuGet package
  - `/NuGet/Package`: Create a NuGet package by uploading an app file
- Integrate and refactor related services and models from NuGet API
- Implement consolidation of BC NuGet packages (previously necessary on client side)
- Move from alpine-based image to Debian due to BcContainerHelper/ALtool dependency
- Updated to AL-Go v8.1
- Integrate caching for NuGet feed indexes, query results and packages metadata
- Always use memory streaming when downloading files (incl. NuGet packages)
- Add Kubernetes leader election for distributed pod coordination (e.g. cleanup tasks)

## v0.76.1 (2026-01-23)

- Change Kubernetes secret name for GitHub ConfigSync

## v0.76.0 (2026-01-22)

- Replace GitHub SecretSync with ConfigSync and support variables

## v0.75.0 (2026-01-22)

- Add distributed Redis cache shared between Alpaca API instances

## v0.74.1 (2026-01-12)

- Fix issue where the workflow specific settings file was not correctly used when creating a GitHub container for that workflow/settings

## v0.74.0 (2025-12-16)

- Add endpoint to retrieve NuGet feeds configuration

## v0.73.0 (2025-12-16)

- Add endpoint to retrieve secret sync status for GitHub

## v0.72.1 - v0.72.3 (2025-12-11)

- Read and pass licenseFile from cosmo.json correctly to the container
- Fix issue that prevented using AAD authentication when creating containers for Azure DevOps repositories
- Make properties in BC container request overridable from user input while also using a configuration

## v0.72.0 (2025-12-08)

- Upgrade to .NET 10 (incl. dependencies packages)
- Adapt to changes in OpenAPI & Swagger
- Support API paging when retrieving graph groups for an Azure DevOps organization
- Fix issue that the server address in the container launch configuration should not contain the server instance
- Review and streamline XML docs of all API endpoints
- Review and replace misleading API endpoints:
  - POST `/AzureDevOps/Backlog/{organization}/{project}/{sourceOrganization}/{sourceProject}` ->
  - POST `/AzureDevOps/Backlog/import` with request body
  - GET `/AzureDevOps/Branch/{organization}/{project}/{repository}/branches` ->
  - GET `/AzureDevOps/Branch/{organization}/{project}/{repository}`
  - GET `/AzureDevOps/Repository/{organization}/{project}/{repository}` ->
  - GET `/AzureDevOps/RepositoryConfig/{organization}/{project}/{repository}`
  - GET `/AzureDevOps/Repository/{organization}/{project}/{repository}/bcArtifacts` ->
  - GET `/AzureDevOps/RepositoryConfig/{organization}/{project}/{repository}/bcArtifacts`
  - marked the old endpoints as obsolete for now
- Add dedicated container endpoints with simplified models:
  - POST `/Container/Container` (generic endpoint remains unchanged)
  - POST `/Container/Container/azureDevOps`
  - POST `/Container/Container/gitHub`
  - POST `/Container/Container/standalone`
  - POST `/Container/Container/demo`
- BC Artifact properties are now overridable when creating a container

## v0.71.0 (2025-12-05)

- Rework for handling of trusted NuGet feeds

## v0.70.0 (2025-11-27)

- Add endpoint to retrieve Azure DevOps demo container configurations
- Add endpoint to create containers based on an Azure DevOps demo configuration
- Implement BcArtifact selection while creating containers for an Azure DevOps repository

## v0.69.0 (2025-11-19)

- Implement reading of AL-Go configuration settings

## v0.68.0 - v0.68.1 (2025-11-18)

- Add support for authentication with Azure management tokens
- Set default backend URL for COSMO users
- Update dependency packages

## v0.67.2 (2025-11-14)

- Set artifact defaults already when retrieving the configuration of an AL-Go project

## v0.67.1 (2025-11-11)

- Remove unnecessary Kubernetes label validation for branch names again

## v0.67.0 (2025-11-10)

- Add endpoints to retrieve the current user together with their type
- Retrieve the user profile from Graph API instead of Visual Studio API
- Additionally extract the COSMO domain of a user from its Graph profile
- Update dependency packages

## v0.66.0 - v0.66.1 (2025-10-30)

- Add endpoint to retrieve Azure DevOps pull requests
- Implement support to create containers based on a cosmo.json (Azure DevOps)
- Implement retrieval to read the container configuration from a cosmo.json (Azure DevOps)
- Streamline and reuse models from GitHub for Azure DevOps container configuration
- Implement translation and merge of ipArtifacts (Azure DevOps)
- Implement origin-based container request pre-processing
- Implement validation of URL and DevOps artifacts (Azure DevOps)
- Add endpoints to create and revoke PATs (Azure DevOps)
- Add support for authentication with Azure DevOps pipeline token

## v0.65.0 (2025-10-29)

- Add endpoint to update CI/CD of an Azure DevOps project
  
## v0.64.0 (2025-10-24)

- Improve error handling while migrating project to template process

## v0.63.0 (2025-10-22)

- Modify endpoint to receive container/image creation status to use bool flags for easy access in consuming Powershell

## v0.62.0 (2025-10-22)

- Add a ProjectHelper class to map GitHub workflow to container configuration

## v0.61.0 (2025-10-21)

- Update Snippet endpoints to return the whole commit message of a snippet as description in case there is no dedicated description

## v0.60.0 (2025-10-16)

- Add demo-containers configuration
  
## v0.59.0 (2025-10-14)

- Add Endpoint to get info about published and installed apps in the container

## v0.58.1 (2025-10-13)

- Improve error handling when reading Github project settings

## v0.58.0 (2025-10-09)

- Add endpoint for syncing GitHub secrets/variables to Kubernetes secret

## v0.57.0 (2025-10-08)

- Add Copilot instructions and support for GitHub workflow authentication

## v0.56.1 (2025-10-01)

- Fix issue where customizing a new project in a new organization causes an error while creating ChildTasksTemplates

## v0.56.0 (2025-10-01)

- Add endpoint to retrieve container configurations and prune obsolete ones
- Add support for the `ChildTasksTemplate` extension in the customizing function

## v0.55.1 (2025-09-26)

- Fix issue where trying to create a container for a branch containing non-alphanumeric characters caused an error

## v0.55.0 (2025-09-23)

- Internal improvements & refactorings
- Support AL-Go setting `assignPremiumPlan` for premium experience in Alpaca containers

## v0.54.0 (2025-09-17)

- Include areas when importing an Azure DevOps project backlog
- Update dependency packages

## v0.53.4 (2025-09-12)

- Fix issue where existing service connections were not correctly used when onboarding an Azure DevOps project

## v0.53.3 (2025-09-11)

- Fix issue that may have occurred when updating the Templates repository in an Azure DevOps project
- Enhance error handling when initializing Azure DevOps projects

## v0.53.2 (2025-09-10)

- Fix issue where the enterprise backend was not correctly used when creating or onboarding an Azure DevOps project

## v0.53.0 - v0.53.1 (2025-09-09)

- Add new endpoint to import the backlog of another Azure DevOps project
- Fix process retrieve for process customization

## v0.52.0 (2025-09-09)

- Adapt to AL-Go workflow inputs  
- Update dependency packages

## v0.51.0 (2025-09-02)

- Harmonize PowerShell execution within APIs

## v0.50.0 (2025-08-29)

- Add new container actions: get logs, execute scripts (DLL collection, base app preparation, restart NAV/BC server instance), retrieve event logs, and download files
- Implement script execution with async status tracking and WebSocket-based command execution in containers

## v0.49.0 (2025-08-28)

- Add endpoint for project creation
- Refactor Kubernetes label value validation and normalization
- Restore BcArtifact default values (were previously removed with [v0.46.1](#v0461-2025-08-07))
- Update dependency packages

## v0.48.1 (2025-08-14)

- Remove all forward and back slashes from the start and end of snippet group names

## v0.48.0 (2025-08-13)

- Introduce container type, add IDs to GitHub models

## v0.47.0 (2025-08-07)

- Add process customizations to configs

## v0.46.1 (2025-08-07)

- Fix containers always using default BC artifact values (e.g. country "w1")

## v0.46.0 (2025-08-07)

- Implement retrieval of process modifications based on namespace via tenantId

## v0.45.0 (2025-08-05)

- Changed repository for template type "AlpacaPTE" to "cosmoconsult/Alpaca-PTE-Template"

## v0.44.0 (2025-08-05)

- Add container functions and endpoints to create, update and delete (BC) containers

## v0.43.0 (2025-08-05)

- Update dependency packages
- Add customize function for Azure DevOps projects

## v0.41.1 (2025-07-14)

- Streamline some Azure DevOps and GitHub models, add Id properties
- Add tests for GitHub BranchService
- Update cache when changing the assigned entity of a GitHub repository
- Update dependency packages

## v0.41.0 (2025-07-10)

- Add organization and project to repository model
- Add more properties to branches model: organization, project, repository, isMineOrDefault
- Extend tests

## v0.40.2 (2025-07-09)

- Swagger: Don't require unique actionName/operationId per namespace but only per controller
- Swagger: Set the action name as the description of the operation

## v0.40.1 (2025-07-08)

- Move backendUrl retrieval (from variables, variable group and service connection) to dedicated endpoints
- Return default backendUrl on DevOps organizations/projects and GitHub owners/repositories (default backend is determined by Azure AD Tenant or GitHub owner)
- Add initial support for 4PS backend
- Improve caching for repository retrieval
- Set correct htmlUrl on repositories
- Return branch names without prefix
- Update dependency packages

## v0.40.0 (2025-07-07)

- Add dedicated endpoints for Azure DevOps Repositories and Branches

## v0.39.1 (2025-07-02)

- Add dedicated endpoint to retrieve the assigned entity of a GitHub repository again

## v0.39.0 (2025-07-02)

- Support specific backend per Azure DevOps project (defined in variable group or service connection)
- Check if the current user is a Project Collection Administrator when assigning a COSMO entity to a project
- Remove default values for BcArtifact to enable inheritance again

## v0.38.0 (2025-06-30)

- Improve repository retrieval & also include repositories where the user is only a collaborator
- Add Container namespace and endpoints to retrieve containers
- Add separate Azure DevOps authentication and connection
- Add endpoints to retrieve DevOps organizations, projects and their assigned entities
- Streamline entity handling between Azure DevOps and GitHub
- Streamline handling for Azure DevOps organizations/projects and GitHub owners/repositories
- Update dependency packages

## v0.37.1 (2025-06-10)

- Improve repository search

## v0.37.0 (2025-05-30)

- Remove backendUrl from repository configuration
- Setting a custom backendUrl is now done via the variable `ALPACA_BACKEND_URL` (on organization or repository level)
- Minor internal improvements
- Update dependency packages

## v0.36.0 (2025-05-22)

- Add additional properties to update GitHub repository settings from variable `ALPACA_REPO_STANDARDS`
- Update dependency packages

## v0.35.0 - v0.35.2 (2025-05-08)

- Add new endpoint to get the list of COSMO entities (together with the related office)
- Add new endpoint to assign a COSMO entity to a GitHub repository
- Automatically retrieve the assigned COSMO entity when getting a GitHub repository

## v0.34.0 - v0.34.1 (2025-05-02)

- Improve variable retrieval logic to enable overriding organization variables on repository level
- Enhance error handling when getting custom properties of a repository
- Update dependency packages

## v0.33.0 (2025-04-17)

- Enhance processing of scheduled background jobs
- Minor internal improvements

## v0.32.1 (2025-04-29)

- Remove optional route parameters and update XMLDoc generation

## v0.32.0 (2025-04-17)

- Update AL-Go

## v0.31.0 (2025-04-15)

- Update AL-Go

## v0.30.1 (2025-03-26)

- Fix search to return default branch of repositories

## v0.30.0 (2025-03-13)

- Adapt specification of release types due to changes in AL-Go [see #4263](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4263)
- Support specific backend per GitHub owner and pass backendUrl to be used to client [see #4264](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4264)

## v0.29.0 (2025-03-06)

- Automatically apply Alpaca repo standards configured in org variable on repo initialization

## v0.28.1 - v0.28.2 (2025-03-05)

- Fix Image build

## v0.28.0 (2025-03-05)

- Add endpoint to get the custom properties of a repo

## v0.27.0 (2025-02-26)

- Merge GitHub specific services, adapt structure and tests

## v0.26.0 (2025-02-26)

- Update dependency packages
- Remove duplicate GitHub endpoints
- Add tests for RepositoryService

## v0.25.0 (2025-02-15)

- Update dependency packages
- Internal improvements
- Add GitHub specific endpoints

## v0.24.0 (2025-02-06)

- Move to GitHub
- Update to AL-Go v6.3

## v0.23.0 (2024-12-10)

- Fix issue where slashes in the name of an AL-Go project caused an error [see #4180](https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4180)
- Update AL-Go to version 6.1

## v0.22.0

- Add support for `alpaca.json` configuration

## v0.21.0

## v0.20.0

## v0.19.1

## v0.19.0

## v0.18.2

## v0.18.1

## v0.18.0

## v0.17.2

## v0.17.1

## v0.17.0

## v0.16.0

## v0.15.0

## v0.14.0

## v0.13.0

## v0.12.0

## v0.11.0

## v0.10.0

## v0.9.0

## v0.8.1

## v0.8.0

## v0.7.0

## v0.6.1

## v0.6.0

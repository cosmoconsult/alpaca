---
    title: Alpaca Backend Changelog
    description: Alpaca Backend Changelog
    orig-source: https://github.com/cosmoconsult/alpaca-api
---

# Alpaca Backend Changelog

All notable changes to the Alpaca Backend

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

- Adapt specification of release types due to changes in AL-Go (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4263)
- Support specific backend per GitHub owner and pass backendUrl to be used to client (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4264)

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

- Fix issue where slashes in the name of an AL-Go project caused an error (https://dev.azure.com/cc-ppi/Self-Service/_workitems/edit/4180)
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

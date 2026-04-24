---
    title: Azure DevOps
    description: Azure DevOps
---

# Azure DevOps

This section covers all COSMO Alpaca features for teams using **Azure DevOps** as their DevOps platform.

COSMO Alpaca provides its own CI/CD pipeline templates, automated project setup, container management, artifact feeds, and release pipelines — all tightly integrated into Azure DevOps and accessible from the VS Code extension.

## Features

### General Features

Create and manage Azure DevOps organizations and projects with standardized templates and configurations. Onboard existing projects, import backlogs between projects, and customize processes (work item types, fields, states, rules) with predefined templates. Interact with work items and link them to branches and commits for full traceability, download artifacts, browse NuGet and artifact feeds from the Packages View, and open any element in the browser with one click. Use built-in MCP tools to expose COSMO Alpaca functionality to AI agents like GitHub Copilot.

### App Development

Create repositories and AL apps with a guided wizard — just provide a name, BC version, country, and license. COSMO Alpaca creates the repository, sets up the CI/CD pipeline, and configures everything automatically. Clone repositories directly from the extension and work with branches linked to work items for end-to-end traceability from requirement to deployment.

### Dev Container Management

Spin up cloud-hosted Business Central environments for development, testing, and demos directly from VS Code — no local Docker setup required. Create standalone containers for ad-hoc needs without a project connection. Start, stop, share, rename, and delete containers, configure Auto-Start and Auto-Stop schedules to save costs, access the web client, terminal, file share, logs, SQL Server, and Event Log, and back up databases from running containers. Containers are managed entirely in the cloud and can be ready in minutes.

### Container Configuration

Configure containers through `cosmo.json` in the `.devops` folder. Define the Business Central version, country, and type (sandbox or on-premises), specify license files, artifacts to import (apps, DLLs, fonts, RapidStart packages) from URLs, file shares, NuGet feeds, or Azure DevOps artifact feeds, database backups to restore, custom server and web settings, authentication methods, custom startup scripts, and companion containers. Support for multiple named configurations (e.g., "current", "nextMajor", "nextMinor") lets teams test against different BC versions.

### Pipeline Setup

Automate builds, testing, and deployments with COSMO Alpaca's CI/CD pipeline templates. Auto-increment app versions, sign apps with HSM certificates via Azure Key Vault, test against future BC versions with Next Major/Minor pipelines, use preprocessor directives for multi-version codebases, run Page Scripting Tests for automated UI testing, and create release pipelines for staged deployments (test, QA, production) to both SaaS and on-premises environments.

### Collaboration

Invite external users — customers, partners, or freelancers — to collaborate on projects. Work across different Azure AD tenants with tenant switching, supporting organizations that reside in customer tenants.

### COSMO-only Features

Internal features for COSMO CONSULT teams, including assigning organizations to customers, COSMO entities, and responsible users for internal tracking and license management.

## Prerequisites

- An Azure DevOps organization
- The [COSMO Alpaca VS Code extension](../getting-started/setup-vsce.md) installed
- The extension configured for the **Azure DevOps** platform

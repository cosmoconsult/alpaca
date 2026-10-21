---
    title: GitHub (AL-Go)
    description: GitHub (AL-Go)
---

# GitHub (AL-Go)

This section covers all COSMO Alpaca features for teams using **GitHub** as their DevOps platform.

COSMO Alpaca builds on top of [AL-Go for GitHub](https://github.com/microsoft/AL-Go) — Microsoft's GitHub Actions-based framework for building, testing, and deploying Business Central apps. It extends AL-Go with cloud-based container infrastructure, additional workflow enhancements, and a user-friendly VS Code interface.

## Features

### General Features

Create and manage GitHub organizations and projects, interact with requirements (issues) and link them to branches and commits for full traceability, browse NuGet and artifact feeds from the Packages View and add package artifacts to AL-Go settings, and open any element in the browser with one click. Use built-in MCP tools to expose COSMO Alpaca functionality to AI agents like GitHub Copilot.

### App Development

Create repositories and AL apps with a guided wizard — just provide a name, BC version, country, and license. COSMO Alpaca creates the repository from a template with all AL-Go workflow files pre-configured and can apply configured [GitHub Repo Standards](../admin/index.md#github-repo-standards). Work with branches linked to issues for end-to-end traceability from requirement to deployment.

### Dev Container Management

Spin up cloud-hosted Business Central environments for development, testing, and demos directly from VS Code — no local Docker setup required. Configure container authentication with `NavUserPassword` or Microsoft Entra ID. Share containers with colleagues, rename them, restart the BC service tier, access the SQL Server database, and view the Event Log. Containers are managed entirely in the cloud and can be ready in minutes.

### Container Configuration

Configure containers through AL-Go settings files (`.github/AL-Go-Settings.json`) with COSMO Alpaca-specific settings under the `alpaca` property. Control the Business Central version and country, define artifacts to import (apps, DLLs, fonts, Configuration Packages (RapidStart)) from URLs, file shares, or NuGet feeds, and more.

### AL-Go Workflow Enhancements

COSMO Alpaca extends AL-Go workflows with cloud-based container workloads that can complete in up to 40% of the time of an equivalent unoptimized AL-Go setup, depending on the workload. A global image cache and preconfigured containers reduce preparation time, and moving container workloads to COSMO Alpaca can reduce infrastructure costs while maintaining or improving performance.

Use the same AL-Go settings to configure development and workflow containers. Workflows can generate and validate XLIFF translations, check for breaking changes against previous app versions from trusted NuGet feeds, use different code analyzers and rulesets for test apps, and extend AppSourceCop validation with obsolete-tag enforcement and test-app prefixes.

See [Setup AL-Go Settings](setup-al-go-settings.md), [Custom CodeCops](custom-codecops.md), [Setup Minimum & Other Workflows](setup-workflows.md), [Initialize Repository](initialize-repository.md), and [GitHub Repo Standards](../admin/index.md#github-repo-standards).

### Collaboration

Collaborate on the Business Central base app with other teams and contributors.

### COSMO-only Features

Internal features for COSMO CONSULT teams, including [preconfigured build modes](preconfigured-build-modes.md) for conditional workflow behavior and assigning organizations to COSMO entities for internal tracking.

## Prerequisites

- A GitHub account and at least one GitHub organization
- The [COSMO Alpaca VS Code extension](../getting-started/setup-vsce.md) installed
- The extension configured for the **GitHub** platform

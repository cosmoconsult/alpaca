---
title: COSMO Alpaca — Comprehensive Overview
description: A comprehensive, easy-to-understand overview of COSMO Alpaca — what it is, how it works, who it is for, and what problems it solves.
---

# COSMO Alpaca — Comprehensive Overview

## What Is COSMO Alpaca?

COSMO Alpaca is an implementation toolset for Microsoft Dynamics 365 Business Central. It is built by COSMO CONSULT and delivered as a cloud-based Software-as-a-Service (SaaS) product. Its purpose is to automate, standardize, and simplify the entire lifecycle of developing and implementing Business Central projects — from initial project setup, through coding and testing, all the way to deploying the finished application.

COSMO Alpaca is a comprehensive cloud service consisting of multiple components: a **Visual Studio Code extension** (also usable in a web browser at [vscode.dev](https://vscode.dev)), a **cloud-based container infrastructure** for running Business Central development and test environments and **CI/CD pipeline and workflow templates** for automated building, testing, and deploying. The VS Code extension serves as the primary user interface — a single control panel for managing projects, environments, pipelines/workflows, and deployments. Under the hood, the cloud backends handle container orchestration, artifact management, and platform integration. COSMO Alpaca is tightly integrated with **GitHub** (using the AL-Go framework) and **Azure DevOps** — the two most popular platforms for managing code and project work in the Business Central ecosystem.

The product is designed so that it can be used by **developers**, **consultants**, and **project managers** alike. Upon first use, you choose a role — "technical" or "functional" — and the interface adapts accordingly. This means that even non-technical team members can create projects, spin up demo environments, or manage tasks without having expertise in DevOps tooling.

---

## The Problem COSMO Alpaca Solves

When teams develop or customize Business Central, the underlying development processes are often manual, inconsistent, and require deep technical knowledge. Common pain points include:

- **Setting up projects and environments is slow and error-prone.** Developers need to manually configure repositories, pipelines, build agents, containers, and artifact dependencies.
- **Creating development and test environments is complex.** Running a Business Central instance for local development or testing typically requires setting up Docker containers manually, configuring licenses, importing dependencies, and more.
- **There is no standardization.** Different projects and teams often follow different workflows, making it hard to ensure quality and consistency across the organization.
- **Non-technical team members are shut out.** Project managers and consultants often cannot easily create environments or track project progress without relying on developers.
- **Deployment is manual and risky.** Getting a finished app from a developer's machine to a production environment involves multiple manual steps.

COSMO Alpaca addresses all of these challenges by providing a unified, automated, and easy-to-use toolset.

---

## How It Works — Key Concepts

### 1. Platform Integration: GitHub and Azure DevOps

COSMO Alpaca is not a standalone platform — it enhances and sits on top of the existing DevOps platforms that Business Central teams already use:

- **GitHub (with AL-Go):** AL-Go is a set of GitHub Actions templates from Microsoft for building, testing, and deploying Business Central apps. COSMO Alpaca extends AL-Go with its own container infrastructure, additional workflow enhancements & features, and a user-friendly VS Code interface — making builds significantly faster and the overall experience much more accessible.
- **Azure DevOps:** COSMO Alpaca provides its own CI/CD pipeline templates, project creation, artifact management, release pipelines, and more within the Azure DevOps ecosystem.

Users choose their platform when first setting up the extension, and the documentation and features are organized accordingly.

### 2. The VS Code Extension

The primary way to interact with COSMO Alpaca is through a Visual Studio Code extension called **COSMO Alpaca Preview**. This extension provides a tree-view sidebar where users can:

- Browse their organizations, projects, and repositories
- Create new organizations, projects, apps, and containers
- Manage build pipelines/workflows
- Interact with requirements (work items in Azure DevOps, issues in GitHub)
- Create, delete, and manage containers and view their status, logs, and configuration
- Access packages and artifact feeds
- Perform many more actions via right-click context menus and wizards

The extension is also available in the browser at [vscode.dev](https://vscode.dev), making it accessible without any local installation — ideal for consultants and project managers who need quick access.

### 3. Containers — Cloud Development and Test Environments

A core feature of COSMO Alpaca is **container management**. In the Business Central world, a "container" is an isolated cloud environment running a full instance of Business Central. These containers are used for:

- **Development:** Each developer gets their own Business Central environment to write and test code against.
- **Testing and QA:** Functional consultants or testers can spin up environments to verify changes.
- **Build verification:** Automated pipelines create temporary containers to compile apps, run tests, and validate code.
- **Demos:** Sales or consulting teams can quickly create demo environments to showcase functionality.

With COSMO Alpaca, creating a container is as simple as right-clicking a project in VS Code and selecting "Create container." The system handles everything behind the scenes: pulling the right Business Central version, importing licenses, installing dependencies, and configuring the environment. If someone else has recently used a similar configuration, the container can be ready in just minutes. Otherwise, first-time creation may take up to 20 minutes.

Containers are managed in the cloud and require no local hardware or Docker setup. Key container features include:

- **Start, stop, restart, and delete** containers from VS Code
- **Auto-Start and Auto-Stop** on a configurable schedule (e.g., start at 8 AM, stop at 6 PM) to save costs
- **Share containers** with colleagues
- **Rename containers** for easy identification
- **Access the Business Central web client** directly from the container
- **Open a terminal** inside the container for advanced debugging
- **Access the file share** to upload or download files
- **View container logs** for troubleshooting
- **Access the SQL Server database** for direct data queries
- **Back up databases** from running containers
- **Restart the Business Central service tier** without recreating the entire container
- **View the Event Log** for Business Central events

### 4. Container Configuration

Containers are configured through settings files stored in the project repository. The configuration determines which Business Central version and country to use, which licenses to apply, which third-party apps and dependencies to install, and more.

- **For Azure DevOps projects:** The configuration file is called `cosmo.json` and lives in the `.devops` folder of the repository. It supports multiple named configurations (e.g., "current", "nextMajor", "nextMinor") so teams can test against different BC versions.
- **For GitHub (AL-Go) projects:** Configuration is stored in AL-Go settings files (e.g., `.github/AL-Go-Settings.json`) with COSMO Alpaca-specific settings nested under an `alpaca` property.

These configuration files define:
- The Business Central version, country, and type (sandbox or on-premises)
- License files to use
- Artifacts to import (apps, DLLs, fonts, RapidStart packages, etc.) from URLs, file shares, NuGet feeds, or Azure DevOps artifact feeds
- Database backups to restore
- Custom server and web settings
- Authentication methods (username/password or Azure AD)
- Custom scripts to run on container startup
- And many more advanced options

### 5. Standalone Containers

For quick, ad-hoc needs — such as testing a specific Business Central version without setting up a full project — COSMO Alpaca offers **standalone containers**. These can be created with a simple wizard where you choose the BC version, country, and whether you want premium experience. No project or repository connection is required.

---

## The Development Workflow

COSMO Alpaca supports a modern, end-to-end development workflow:

1. **Project Setup:** A project manager creates a new organization and project. For Azure DevOps, this sets up necessary extensions, pipelines, and repositories automatically. For GitHub, a repository is created from a template with all workflow files pre-configured.

2. **App Creation:** A new Business Central app (repository) is created with a wizard — just provide a name, BC version, country, and license. COSMO Alpaca creates the repository, sets up the CI/CD pipeline, and configures everything automatically.

3. **Development:** A developer creates a development container linked to the project. While the container starts, they can create a branch linked to a requirement (work item or issue), clone the repository, and start coding. When the container is ready, they connect their VS Code launch configuration to it and begin debugging and publishing.

4. **Code Review and Validation:** When the developer is done, they push changes and create a Pull Request. A pipeline/workflow automatically builds the code, runs tests in a temporary container, and reports the results. A functional consultant can create a separate container to validate the changes from a user perspective.

5. **Deployment:** Once approved and merged, the app can be deployed using release pipelines. COSMO Alpaca supports deployment to both SaaS (cloud) and on-premises Business Central environments. Release pipelines can be created with a few clicks and configured for different stages (test, QA, production) with scheduled deployments.

6. **Ongoing Maintenance:** Night builds can check the app against upcoming Business Central versions (Next Minor, Next Major) to catch compatibility issues early. Version numbers are auto-incremented. Apps can be signed with certificates for security.

---

## Key Features at a Glance

### Project and Organization Management
- Create and manage organizations (Azure DevOps or GitHub)
- Create projects with standardized templates and configurations
- Onboard existing projects that weren't originally set up with COSMO Alpaca
- Import project backlogs from one project to another (Azure DevOps)
- Customize Azure DevOps processes (work item types, fields, states, rules) with predefined customization templates
- Set favorite organizations to declutter the workspace
- Open any element (project, repository, pipeline/workflow, work item/issue) in the browser with one click

### Repository and App Management
- Create repositories and AL apps with a guided wizard
- Support for single-project and multi-project repositories (GitHub)
- Clone repositories directly from the extension
- Work with branches — create branches linked to requirements (work items/issues)
- Create Pull Requests from the extension
- Automatically set up CI/CD pipelines and workflows

### Container Management
- Create, start, stop, restart, rename, share, and delete development containers
- Standalone (on-demand) containers for ad-hoc needs
- Auto-Start and Auto-Stop scheduling for cost optimization
- Multiple container configurations per project (e.g., for different BC versions)
- Access web client, terminal, file share, logs, SQL Server, and Event Log
- Database backup and restore
- Custom startup scripts for advanced customization
- Container configuration from specific branches for safe testing

### CI/CD Pipelines and Workflows
- Automated build, test, and deployment pipelines/workflows
- Support for Azure DevOps pipelines and GitHub Actions workflows (AL-Go)
- Next Major and Next Minor pipelines/workflows to test against future BC versions
- Pipeline/workflow hooks for extending default behavior
- App version auto-increment
- Code signing with HSM certificates via Azure Key Vault
- Preprocessor directives for multi-version apps (e.g., maintaining a single codebase across different BC versions)
- Translation file generation and testing with xliff-sync
- Page Scripting Tests for automated UI testing
- Automatic breaking change detection on Pull Requests

### Artifact and Package Management
- Browse NuGet feeds, Microsoft feeds, and custom feeds from the Packages View
- Download packages or add them to AL package cache directly
- Configure app dependencies, DLLs, fonts, RapidStart packages, and more
- Support for fileshare, URL, NuGet, Azure DevOps feeds, and product feeds as artifact sources
- IP (Intellectual Property) artifact feeds for pre-configured product packages

### Requirements Tracking (Work Items / Issues)
- View and interact with requirements — work items in Azure DevOps, issues in GitHub
- Associate requirements to commits automatically
- Create branches linked to requirements for full traceability
- End-to-end tracking from requirement to branch to commit to Pull Request to deployment

### Cross-Company Collaboration
- Invite external users (customers, partners, freelancers) to collaborate on projects
- Work across different Azure AD tenants with tenant switching
- Support for organizations residing in customer tenants

### AI Integration (MCP Tools)
- Built-in Model Context Protocol (MCP) tools for AI agents
- Expose almost all COSMO Alpaca functionality to GitHub Copilot and similar agents
- Create projects, containers, manage CI/CD, and more through natural language
- No additional setup required — tools ship with the extension and update automatically

### Administration
- Configure global artifact feeds for organization-wide use
- Set up Azure AD authentication for containers
- Customize templates for new app repositories (name, publisher, ID ranges, logo, etc.)
- Define GitHub repository standards (merge methods, branch protection rules, etc.)
- Manage process modifications for Azure DevOps work item types and layouts
- Pre-approve Alpaca app registrations for enterprise Azure AD tenants

---

## Who Is COSMO Alpaca For?

### Business Central Partners (ISVs and VARs)
Partners who develop their own apps or customize Business Central for customers benefit from automated pipelines/workflows, standardized project setup, and the ability to test against multiple BC versions. The time saved on setup and infrastructure management translates directly into faster delivery and lower costs.

### End-Users of Business Central
End users with their own development skills can use COSMO Alpaca directly and independently — setting up their own projects, creating development containers, and managing their own CI/CD pipelines without relying on a partner or external team.

### Customers of Business Central Partners
End customers can collaborate on projects alongside their partner. Organizations can reside in the customer's own Azure AD tenant, giving them control over their data while benefiting from the partner's development workflow.

### Non-Technical Users (Consultants and Project Managers)
The "functional" role view and browser-based access make COSMO Alpaca usable by people without technical backgrounds. They can create projects, spin up demo or testing environments, view requirements, and track progress — all without needing to understand DevOps or Docker.

### COSMO CONSULT Project Teams
As a product from COSMO CONSULT, COSMO Alpaca is deeply integrated into their internal workflows. COSMO-specific features include entity assignment (linking organizations to COSMO entities for internal tracking), license management, and pre-configured artifact feeds for COSMO products.

---

## Pricing

COSMO Alpaca uses a **usage-based pricing model**. Billing is based on container runtime, measured to the minute. The following types of container usage are billed:

- Development containers (environments used by developers)
- Build agent containers (running CI/CD pipelines)
- Build BC containers (created during pipeline runs to verify apps and run tests)

**Stopped containers are free.** All project management features (creating projects, managing requirements, etc.) are also free. Auto-Stop and Auto-Start features help control costs, and a usage dashboard provides visibility into costs per organization, project, and user.

Pricing tiers with volume discounts are available:
- **BC Partners:** Tiered pricing from 0.90 EUR/h down to 0.50 EUR/h depending on monthly consumption
- **Non-BC Partners:** 1.00 EUR/h
- **COSMO project customers:** Special pricing

A **free trial** of 50 hours of container runtime is available.

According to COSMO's surveys, COSMO Alpaca saves approximately **20 hours per developer per month** — split across project setup (1.5 h/week), development (3.2 h/week), and QA/deployment (0.5 h/week).

---

## Getting Started

1. **Sign up:** Create a GitHub account or Azure DevOps organization.
2. **Install the extension:** Search for "COSMO Alpaca Preview" in the VS Code Marketplace and install it, or open [vscode.dev](https://vscode.dev) and install the extension there.
3. **Choose your role:** Select "technical" or "functional" view.
4. **Choose your platform:** Select GitHub or Azure DevOps and sign in.
5. **Create a project and app:** Use the guided wizards to set up your first project and repository.
6. **Create a container:** Spin up a development environment and start coding.

The first 50 hours of container runtime are free, so teams can try the product without any commitment.

---

## Summary

COSMO Alpaca transforms the way teams build, test, and deliver Microsoft Dynamics 365 Business Central solutions. By providing a single, unified toolset that automates project setup, environment provisioning, CI/CD pipelines, and deployment, it eliminates manual overhead, standardizes processes, and makes modern DevOps practices accessible to everyone on the team — regardless of their technical background. Whether you are a developer writing AL code, a consultant verifying business requirements, or a project manager tracking progress, COSMO Alpaca provides the tools to work more efficiently and deliver higher-quality results.

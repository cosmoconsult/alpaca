---
    title: Switch from AL-Go to COSMO Alpaca AL-Go
    description: Step-by-step guide to align an existing GitHub AL-Go repository with COSMO Alpaca AL-Go
---

# Switch from AL-Go to COSMO Alpaca AL-Go

This page explains how to take an existing GitHub repository that already uses Microsoft AL-Go and switch it to the COSMO Alpaca AL-Go template.

Use this migration if your repository is already on **GitHub** and already uses AL-Go, but you now want to use COSMO Alpaca features such as managed repository standards, COSMO Alpaca workflow extensions, and cloud-hosted development containers.


> [!NOTE]
> If the repository already uses a custom template, you must migrate that custom template first. After this is done, a initialization and normal update is enough.

## What changes when switching

Switching to COSMO Alpaca AL-Go mainly does three things:

- It prepares the repository for COSMO Alpaca by running **Initialize**.
- It updates the AL-Go system files to use the COSMO Alpaca template.
- It allows you to add COSMO Alpaca specific settings under the `alpaca` property in your AL-Go settings files.

Your existing AL-Go repository structure and normal AL-Go settings stay in place.

## Prerequisites

- An existing GitHub repository that already uses AL-Go
- The [COSMO Alpaca VS Code extension](../getting-started/setup-vsce.md) installed
- Access to the target GitHub organization and repository

## Migration steps

1. Open the repository in VS Code.
2. In **COSMO Alpaca**, run **Initialize** on the repository.
3. In GitHub, run the **Update AL-Go System Files** workflow and set the template URL to `https://github.com/cosmoconsult/Alpaca-PTE@main` or `https://github.com/cosmoconsult/Alpaca-AppSource@main` depending on your existing configuration.
4. Run **Update AL-Go System Files** again with the same template URL a second time.
5. Review the generated changes and commit them in the repository.

> [!IMPORTANT]
> Running **Update AL-Go System Files** twice is required to fully apply the COSMO Alpaca template configuration.

## Why **Initialize** is required

Before switching templates, the repository should be prepared for COSMO Alpaca.

Repository-level **Initialize**:

- Applies configured [GitHub Repo Standards](../admin/index.md#github-repo-standards)
- Creates the `GHTOKENWORKFLOW` repository secret required by GitHub Actions in this repository

Detailed steps are documented here: [Initialize Repository](initialize-repository.md)

## What to check after the switch

After the workflow updates are applied, verify the following:

- The repository contains the expected AL-Go workflow and template files under `.github`
- The workflows run successfully on GitHub
- The repository still contains the AL-Go settings files you expect, such as `.github/AL-Go-Settings.json`
- Any COSMO Alpaca-specific settings are placed under the `alpaca` property

If you want to use COSMO Alpaca container-specific features, review these pages next:

- [Setup AL-Go Settings](setup-al-go-settings.md)
- [Setup Artifacts to Import on Container Startup](setup-artifacts.md)
- [Setup Minimum & Other Workflows](setup-workflows.md)

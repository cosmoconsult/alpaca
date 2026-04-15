---
    title: Initialize Repository
    description: Initialize a GitHub repository with COSMO Alpaca on repository level
---

# Initialize Repository

Use **Initialize** on repository level to align an existing GitHub AL-Go repository with COSMO Alpaca requirements.

This is especially useful after onboarding existing repositories or after manual configuration changes.

## What Initialize does on repository level

When you run Initialize from the VS Code extension on a GitHub repository, it performs the following:

- Applies configured [GitHub Repo Standards](../admin/index.md#github-repo-standards) (merge methods, branch protection rules, etc.)
- Creates the `GHTOKENWORKFLOW` repository secret required for GitHub Actions in this repository

## How to run Initialize

1. Open the repository in VS Code.
1. Right-click the target GitHub repository.
   ![Extension GitHub Projects](../media/repository-initialize.png)
1. Select **Initialize**.

---
    title: Hybrid Working — Azure DevOps Work Items with GitHub Code
    description: How to use Azure DevOps for work item tracking while keeping code and CI/CD on GitHub with COSMO Alpaca
---

# Hybrid Working — Azure DevOps Work Items with GitHub Code

A hybrid setup is supported where work items and backlog management stay in Azure DevOps while code and CI/CD workflows run on GitHub. This page explains how to set up and use this approach.

## Setup steps

### 1. Create the GitHub repository

Create your repository and app on GitHub using the COSMO Alpaca extension. See [Create Repository & App](create-app.md).

Follow the [Recommendations](recommendations.md) for naming and structure.

### 2. Link the Azure DevOps project with the GitHub repository

Connect your Azure DevOps project to the GitHub repository so that work items and code are linked:

1. Open your Azure DevOps project settings.
2. Go to **Boards → GitHub connections**.
3. Follow the Microsoft guide: [Install and configure the Azure Boards app for GitHub](https://learn.microsoft.com/en-us/azure/devops/boards/github/install-github-app?view=azure-devops#add-or-remove-repositories-or-remove-a-connection-from-azure-boards).

Once the connection is established, Azure DevOps and GitHub are aware of each other.

### 3. Work with linked branches and commits

#### Link WI using `AB#<id>` in PR descriptions or in commits

Include `AB#<id>` (where `<id>` is the Azure DevOps work item ID) in your pull request descriptions or in commits. Azure DevOps will automatically link the PR or commit to the work item.

> [!IMPORTANT]
> Using `AB#<id>` in the **PR description** is the recommended approach. When the PR is merged, Azure DevOps automatically transitions the linked work item and records the full link chain (work item → PR → commits). This gives you the best traceability.

Example commit message:

```
Fix currency rounding in sales invoice AB#4521
```

Example PR description:

```
Implements the new discount logic.

AB#4521
AB#4530
```

You can reference multiple work items in a single PR description — each `AB#<id>` creates a separate link.
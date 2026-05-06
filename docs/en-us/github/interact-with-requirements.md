---
    title: Work with Issues and Work Items
    description: Work with GitHub issues and Azure DevOps work items in GitHub repositories
---

# Work with Issues and Work Items

With GitHub you can either use the GitHub issues to track your requirements or you can use the Azure Boards integration to use WorkItems in Azure DevOps.

## Azure DevOps WorkItems

To connect a GitHub repository to an Azure DevOps project you need to [set up the connection](https://learn.microsoft.com/en-us/azure/devops/boards/github/install-github-app?view=azure-devops#add-or-remove-repositories-or-remove-a-connection-from-azure-boards) first.

> [!NOTE]
> For COSMO repositories, the part "Change repository access" by configuring the GitHub app can be skipped, as the necessary permissions are already set for all repositories within the **cosmconsult** organization.

Afterwards you can use the following ways to link code changes in your GitHub repositories to WorkItems in Azure DevOps:
- When you start working on a WorkItem, you can [create a new branch directly from the WorkItem](https://learn.microsoft.com/en-us/azure/devops/release-notes/roadmap/2024/github-branch).
- When you make a change in your code and want to connect that change to a WorkItem, you can do that by [using `AB#<id>` with the ID of the relevant WorkItem](https://learn.microsoft.com/en-us/azure/devops/boards/github/link-to-from-github?view=azure-devops) in your commit message or Pull Request description.

## GitHub Issues

If you're using GitHub issues to track your requirements, there are multiple ways to link code changes to those issues:
- When you start working on an issue, you can [create a new branch directly from the issue](https://docs.github.com/en/issues/tracking-your-work-with-issues/using-issues/creating-a-branch-for-an-issue).
- When you make a change in your code and want to connect that change to a GitHub issue, you can do that by [#-mentioning the ID](https://docs.github.com/en/issues/tracking-your-work-with-issues/using-issues/linking-a-pull-request-to-an-issue) of the relevant issue in your commit message or Pull Request description.

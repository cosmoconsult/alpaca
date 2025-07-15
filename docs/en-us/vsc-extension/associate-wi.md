---
    title: Interact with Requirements
    description: Interact with Requirements
---

# Interact with Requirements

# [**GitHub (AL-Go)**](#tab/github)

With GitHub you can either use the GitHub issues to track your requirements or you can use the Azure Boards integration to use WorkItems in Azure DevOps. 

## Azure DevOps WorkItems

To connect a GitHub repository to an Azure DevOps project you need to [setup the connection](https://learn.microsoft.com/en-us/azure/devops/boards/github/install-github-app?view=azure-devops#add-or-remove-repositories-or-remove-a-connection-from-azure-boards) first.

Afterwards you can use the following ways to link code changes in your GitHub repositories to WorkItems in Azure DevOps:
- When you start working on a WorkItem, you can [create a new branch directly from the WorkItem](https://learn.microsoft.com/en-us/azure/devops/release-notes/roadmap/2024/github-branch).
- When you make a change in your code and want to connect that change to a WorkItem, you can do that by [using `AB#<id>` with the ID of the relevant WorkItem](https://learn.microsoft.com/en-us/azure/devops/boards/github/link-to-from-github?view=azure-devops) in your commit message or Pull Request description.


## GitHub Issues

If you're using GitHub issues to track your requirements, there are multiple ways to link code changes to those issues:
- When you start working on an issue, you can [create a new branch directly from the issue](https://docs.github.com/en/issues/tracking-your-work-with-issues/using-issues/creating-a-branch-for-an-issue).
- When you make a change in your code and want to connect that change to a GitHub issue, you can do that by [#-mentioning the ID](https://docs.github.com/en/issues/tracking-your-work-with-issues/using-issues/linking-a-pull-request-to-an-issue) of the relevant issue in your commit message or Pull Request description. 

# [**Azure DevOps**](#tab/azdevops)

The COSMO Alpaca extension allows a couple of interactions with WorkItems in your projects. To see the WorkItems, you go to the COSMO Alpaca view, open your project and extend "WorkItems (max 25 per query)". You will always see a couple of predefined queries there and you will also see all shared queries in your project as well as your own private queries. Please note that for now only queries of type "flat list of WorkItems" are shown. If you need more information about working with queries, please take a look at the [Azure DevOps documentation](https://docs.microsoft.com/en-us/azure/devops/boards/queries/about-managed-queries?view=azure-devops)

## Associate a WorkItem to a commit

When you make a change in your code and want to connect that change to a WorkItem, a standard Azure DevOps functionality is that you just have to #-mention the ID of the relevant WorkItem and the connection will be made. If you don't know that ID, you can easily find it like this:

1. Stage your change in the Git view
1. Go to the COSMO Alpaca view, open your project and extend "WorkItems (max 25 per query)"
1. Select a query that should show the WorkItem you need
1. Right-click on the WorkItem and select "Associate WorkItem to commit"
1. Go back to the Git view and find the right comment
1. Commit and push your change

To validate the connection, you can go back to the COSMO Alpaca view and open the WorkItem in the browser

You can watch a walkthrough here:

<video width="1280px" height="720px" controls>
  <source src="../media/vsc-extension-associate-wi.mp4" type="video/mp4">
  Your browser does not support the video tag.
</video>

## Create a branch to work on a WorkItem

You can find the documentation about that [here](branches.md)

---
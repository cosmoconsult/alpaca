---
    title: Share Container
    description: Share Container
---

# Share Container

If you want to share a container with a colleague, so that it appears in their container list as well, you can take the following steps:

1. Right-click on a container and select "Change owner(s)"
1. Add or remove owner(s). If you have more than one, they need to be **separated with commas (no blanks)**
1. The container is automatically restarted so the change is applied

## Syntax Validation

> [!NOTE]
> The syntax validation will not be performed for containers created prior 2025-05-14 (see [Changelog](../history-roadmap/changelogs/backend/container.md#v1620-2025-05-14)).

When changing the owner(s) of a container, the syntax of the owner(s) will be validated based on the containers origin:

## [**GitHub (AL-Go)**](#tab/github)

Each owner must be a valid GitHub username. Note that it is not verified that the user actually exists.

## [**Azure DevOps**](#tab/azdevops)

Each owner must be a valid email address. Note that it is not verified that there actually exists a user with the given email address.

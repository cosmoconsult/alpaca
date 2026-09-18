---
    title: COSMO Alpaca AL-Go Features
    description: COSMO Alpaca features that extend AL-Go for GitHub repositories
---

# COSMO Alpaca AL-Go Features

COSMO Alpaca builds on [AL-Go for GitHub](https://github.com/microsoft/AL-Go) with faster cloud-based container workloads, extended workflow configuration, and VS Code integration.

## Faster CI/CD and pull request validation

- Cloud-based container workloads can complete in up to 40% of the time of an equivalent unoptimized AL-Go setup, depending on the workload.
- A global image cache and preconfigured containers reduce container preparation time.
- Moving container workloads to COSMO Alpaca can reduce infrastructure costs while maintaining, or improving, performance.

See [Create Dev Container](create-container.md) and [Container Configuration](setup-al-go-settings.md).

## Extensions to AL-Go

- Use the same AL-Go settings to configure development containers and workflow containers.
- Generate and validate XLIFF translations during workflows.
- Check for breaking changes against previous app versions from trusted NuGet feeds.
- Use different code analyzers and rulesets for test apps.
- Extend AppSourceCop validation, including enforcement of obsolete tags and test-app prefixes.
- Initialize repositories with configured repository standards.

See [Setup AL-Go Settings](setup-al-go-settings.md), [Custom CodeCops](custom-codecops.md), [Setup Minimum & Other Workflows](setup-workflows.md), [Initialize Repository](initialize-repository.md), and [GitHub Repo Standards](../admin/index.md#github-repo-standards).

## General COSMO Alpaca features

- Import apps, DLLs, fonts, and Configuration Packages (RapidStart) from NuGet feeds, URLs, or the COSMO Alpaca file share.
- Create cloud-hosted Business Central containers for development, testing, and demos directly from VS Code.
- Share, rename, clone, and restart containers, and access their SQL Server database and event log.
- Configure container authentication with `NavUserPassword` or Microsoft Entra ID.
- Use a graphical VS Code interface for GitHub and container operations.
- Browse NuGet and artifact feeds in the **Packages** view and add package artifacts to AL-Go settings.
- Expose COSMO Alpaca functionality to AI agents through built-in MCP tools.

See [Setup Artifacts to Import on Container Startup](setup-artifacts.md), [Create Dev Container](create-container.md), [Packages View](packages-view.md), and [MCP Tools for Alpaca](../shared/mcp-tools.md).



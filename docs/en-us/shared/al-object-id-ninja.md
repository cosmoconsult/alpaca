---
    title: AL Object ID Ninja Backend
    description: AL Object ID Ninja Backend
---

# AL Object ID Ninja Backend

COSMO Alpaca provides a built-in backend for the [AL Object ID Ninja](https://marketplace.visualstudio.com/items?itemName=vjeko.vjeko-al-objid) VS Code extension. AL Object ID Ninja helps teams manage AL object IDs centrally and prevents ID collisions when multiple developers work on the same Business Central app.

With COSMO Alpaca's built-in backend, you don't need to deploy or maintain your own AL Object ID Ninja backend infrastructure — it's provided and managed as part of COSMO Alpaca.

## Prerequisites

- [COSMO Alpaca VS Code extension](https://marketplace.visualstudio.com/items?itemName=cosmoconsult.cosmo-alpaca-preview) installed
- [AL Object ID Ninja](https://marketplace.visualstudio.com/items?itemName=vjeko.vjeko-al-objid) VS Code extension installed

## Getting Started

When you open a repository in VS Code, the COSMO Alpaca extension will prompt you to use Alpaca's AL Object ID Ninja backend. If you accept, the extension automatically configures your repository to use the COSMO Alpaca backend by writing the necessary settings to the `.objidconfig` file.

> [!NOTE]
> The `.objidconfig` file should be committed to your repository so that all team members share the same backend configuration.

## How It Works

1. Open a repository (Azure DevOps or GitHub) in VS Code
1. The COSMO Alpaca extension detects the repository and prompts you to use Alpaca's AL Object ID Ninja backend
1. Accept the prompt to automatically configure the backend
1. The AL Object ID Ninja extension will now use the COSMO Alpaca backend for all object ID management

Once configured, every team member working on the repository will automatically use the same backend, ensuring that object IDs are managed centrally and consistently across the team.

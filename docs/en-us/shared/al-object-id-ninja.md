---
    title: AL Object ID Ninja
    description: AL Object ID Ninja
---

# AL Object ID Ninja

COSMO Alpaca provides a built-in backend for the [AL Object ID Ninja](https://marketplace.visualstudio.com/items?itemName=vjeko.vjeko-al-objid) VS Code extension. AL Object ID Ninja helps teams manage AL object IDs centrally and prevents ID collisions when multiple developers work on the same Business Central app.

With COSMO Alpaca's built-in backend, you don't need to deploy or maintain your own backend infrastructure and there are no additional costs — it's included in COSMO Alpaca.

## Prerequisites

- [COSMO Alpaca VS Code extension](../getting-started/setup-vsce.md) installed
- [AL Object ID Ninja](https://marketplace.visualstudio.com/items?itemName=vjeko.vjeko-al-objid) VS Code extension installed

## How It Works

1. When the COSMO Alpaca extension is activated, it prompts you to use Alpaca's AL Object ID Ninja backend
1. Accept the prompt to automatically configure the backend — the extension writes the backend configuration to your VS Code user settings
1. The AL Object ID Ninja extension will now use the COSMO Alpaca backend for all object ID management

If you decline the prompt, you can continue using AL Object ID Ninja with its default public backend or any other backend you have configured.

Every team member working on the same repository needs to accept the prompt individually to use Alpaca's backend, ensuring that object IDs are managed centrally and consistently across the team.

The backend API key is automatically rotated and updated by the COSMO Alpaca extension, so no manual key management is required.

> [!NOTE]
> If you want to use a different AL Object ID Ninja backend for certain projects, you can override the backend configuration in a VS Code workspace settings file.

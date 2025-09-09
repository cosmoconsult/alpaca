---
    title: Change BC Version/Country
    description: Change BC Version/Country
---

# Change BC Version/Country

If you want to change the major BC version, set up a specific BC version or change the localization of the containers used for build, development or testing, you have to modify a different configuration file whether you're using Alpaca with GitHub or Azure DevOps:

# [**GitHub (AL-Go)**](#tab/github)

Locate the container configuration you want to change in the `containerConfigurations` section of the `alpaca.json`, e.g. `current`. There you will see an entry like this:

```json
{
    "name": "current",
    "inheritFromWorkflow": "Test Current"
}
```

If you e.g. want to make sure you stay on release 24.2 and use the w1 version, you would change it like this:

```json
{
    "name": "current",
    "inheritFromWorkflow": "Test Current",
    "version": "24.2",
    "country": "w1"
}
```

For the changes to take effect you need to commit and push the changes to the repository.
When creating a new development container (see [create container](../vsc-extension/create-container.md)) or build container the new configuration will be applied automically.

> [!NOTE]
> Existing containers are not affected.

# [**Azure DevOps**](#tab/azdevops)

Locate the container configuration you want to change in the `bcArtifacts` section of the `cosmo.json`, e.g. `current`. There you will see an entry like this:

```json
"current": {
    "version": "24",
    "type":    "onprem",
    "country": "de"
}
```

If you e.g. want to make sure you stay on release 24.2 and use the w1 version, you would change it like this:

```json
"current": {
    "version": "24.2",
    "type":    "onprem",
    "country": "w1"
}
```

For the changes to take effect you need to commit and push the changes to the repository.
When creating a new development container (see [create container](../vsc-extension/create-container.md)) or build container the new configuration will be applied automically.

> [!NOTE]
> Existing containers are not affected.

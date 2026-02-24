---
    title: Change BC Version/Country
    description: Change BC Version/Country
---

# Change BC Version/Country

If you want to change the major BC version, set up a specific BC version or change the localization of the containers used for build, development or testing, you have to configure the [AL-Go settings](setup-al-go-settings.md).

These changes will also apply to the AL-Go workflows.

If you e.g. want to make sure you stay on release 24.2 and use the w1 version, you would change these properties in the [AL-Go settings](setup-al-go-settings.md):

```json
{
    "country": "w1",
    "artifact": "//24.2//latest"
}
```

If you e.g. want to use the version required by your apps (major & minor based on dependencies), you would change these properties in the [AL-Go settings](setup-al-go-settings.md):

```json
{
    "artifact": "//*//latest"
}
```

For the changes to take effect you need to commit and push the changes to the repository.
When creating a new **development container** (see [create container](create-container.md)) or **build container** the new configuration will be applied automatically.

> [!NOTE]
> Existing containers are not affected.

> [!NOTE]
> Do not change the properties `artifact`, `cacheImageName` and `versioningStrategy` of the files `.github/Test Current.settings.json`, `.github/Test Next Minor.settings.json` and `.github/Test Next Major.settings.json`
---
    title: Change BC Version/Country
    description: Change BC Version/Country
---

# Change BC Version/Country

# [**GitHub (AL-Go)**](#tab/github)
WIP

# [**Azure DevOps**](#tab/azdevops)

If you need to change the configuration of the containers used for build, development or test, e.g. because you want to change the major version, set up a specific version or change the localization, you take these steps:

1. Click on File -> Open in VS Code
1. Navigate to the base project folder of your AL project
1. Navigate to the subfolder ".devops" and open the file "cosmo.json"

In that file, the basic setup is included as well as the artifact used when the container starts (see [setup artifacts][setup-artifacts] for more information on the latter). If you want to change the version or country, go to `bcArtifacts` --> `current`. There you will see entries like this:

```json
"current": {
    "version": "17",
    "type":    "onprem",
    "country": "fr",
    "storageAccount": "bcartifacts",
    "sasToken": "",

    "artifacts": [],
    "devopsArtifacts": []
},
```

If you e.g. want to make sure you stay on release 17.2 and use the w1 version, you would change it like this:

```json
"current": {
    "version": "17.2",
    "type":    "onprem",
    "country": "w1",
    "storageAccount": "bcartifacts",
    "sasToken": "",

    "artifacts": [],
    "devopsArtifacts": []
},
```

For the changes to take effect for your dev containers you need to take the following steps:

1. Reload in the COSMO Alpaca view to make the extension aware of your changes
1. Create a new container (see [create container][create-container]) and probably also a new launch config (see [launch-json][launch-json])

Any build or container created in the future will have the new configuration automatically. Existing container are not affected.

<video width="1280px" height="720px" controls>
  <source src="../media/vsc-extension-change-container.mp4" type="video/mp4">
  Your browser does not support the video tag.
</video>

---

[setup-artifacts]:  setup-artifacts.md
[create-container]: ../vsc-extension/create-container.md
[launch-json]:      ../vsc-extension/create-launch-json.md

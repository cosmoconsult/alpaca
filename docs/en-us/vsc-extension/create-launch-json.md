---
    title: Create a configuration in your launch.json connected to the container
    description: Create a configuration in your launch.json connected to the container
---

# Create a configuration in your launch.json connected to the container

## Creating launch.json files

After [creating a new container](create-container.md) you're almost ready to start development. To connect to your container to publish and debug your app, you need to create a configuration in your `launch.json` file:

1. In the Visual Studio Code extension right click on the container you created before and choose **Create launch.json for this container**.
1. A `launch.json` file has been created for your app and test app.  Each `launch.json` generated have different startup object depending of the path of your apps. App folder have **Page Customer List** as startup object and Test folder have **Page AL Test Tool**

# [**GitHub (AL-Go)**](#tab/github)
WIP

# [**Azure DevOps**](#tab/azdevops)

<video width="1280px" height="720px" controls>
  <source src="../media/create-launch-json.mp4" type="video/mp4">
  Your browser does not support the video tag.
</video>

---

## Updating launch.json files

You can also use **Create launch.json for this container** to update any existing launch.json files:
If a configuration for the container name does not exist yet, then it will be added. Else the configuration will be replaced.

> [!WARNING]
> JSON files containing comments won't be updated, and no notification will appear.

> [!TIP]
> Replace configuration properties commented out with properties whose names start with //.
>
> Bad code example:
>
> ```json
> // "startupObjectId": 130451,
> ```
>
> Good code example:
>
> ```json
> "//startupObjectId": 130451,
> ```

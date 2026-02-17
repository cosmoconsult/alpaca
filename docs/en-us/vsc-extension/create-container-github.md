---
    title: Create Container
    description: Create Container
---

# Create Container

To develop, test or debug your app, you want to create a Business Central container. You can easily achieve that from within Visual Studio Code by following these steps:

1. In the Visual Studio Code extension click on the **+** icon on the **Containers** node under the Project of your Repository.
1. Enter a name for your new container.
1. Wait until the container was created and is shown in the list. If someone else already used a similar container, this just takes a few seconds. Else this might take up to 20 minutes the first time.
1. After your container was created, the color of the icon shows the status of the container. The red icon indicates that the container is starting. As soon as the icon turns blue, the container is ready to access it.
1. You will now want to [create a configuration in your launch.json](create-launch-json.md) or [open the Web Client, terminal, file share or log](open-container.md) of your container.

![Create Container](../media/create-container-github.png)

## Create a container with configuration from a specific branch

To test out a change in either the `alpaca.json` without affecting other users, you can create a container and use the configuration from a specific branch:

1. In the Visual Studio Code extension click on the **+** icon on the **Containers** node under the Branches and the Project of your Repository.
1. Enter a name for your new container and hit Enter.

![Create Container from Branch](../media/create-container-branch-github.png)

Similar as when [creating a container the default way](create-container-github.md#create-container) you need to wait until the container is created and ready.

## Select a specific container configuration when creating a new container

<!-- TODO: Add content for the Preview extension -->

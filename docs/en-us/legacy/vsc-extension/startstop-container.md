---
    title: Start/Stop Container
    description: Start/Stop Container
---

# Start/Stop Container

To manage the operational state of your containers in Azure DevOps, you can start or stop them using the extension. This allows you to conserve resources when containers are not in use.

## Start Container

To start a container:

1. Right-click on a stopped container
2. Select **Start container**
3. The container will begin initializing and will be ready for use once it has fully started

You will see a notification when the container has successfully started.

## Stop Container

To stop a container:

1. Right-click on a running container
2. Select **Stop container**
3. The container will gracefully shut down

You will see a notification when the container has successfully stopped. A stopped container preserves its state and can be restarted later.

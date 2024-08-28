---
    title: Stop and start a container
    description: Stop and start a container
---

# Stop and start a container

To stop and start a container you [created before](create-container.md), e.g. to lessen the load on the backends, you need to do the following steps. Please note that stopping and starting actually **removes the container and creates it again**, only the **database stays in place!** That means that you **keep all your data, deployed extensions etc.**, but **anything on the file system will be gone**. On a restart, the same steps as on the first start are taken, so all dlls, fonts etc. will be added again exactly as on the first start, but importing apps, fobs or rapidstart packages is skipped.

1. When you create the container and check the logs, you will see that it says "This seeems to be a regular start"
1. Right click on your container in the Containers list under the Repository of your app and choose **Stop**. After confirmation your container is stopped. You can identify a stopped container because it will have a grey icon.
1. Right click on the stopped container and choose **Start**. The container will be started and the icon will turn to red until it becomes healthy. If you take a look at the logs again, you will no see the message "This seems to be a service restart".
1. Also note that in a later stage during startup, the log shows "Skipping artifact import because this seems to be a service restart" when the container skips the import of an artifact that shouldn't be imported on restart

<video width="1280px" height="720px" controls>
  <source src="../media/vsc-extension-startstop-container.mp4" type="video/mp4">
  Your browser does not support the video tag.
</video>

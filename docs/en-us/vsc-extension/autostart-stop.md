---
    title: Configure Auto-Start and Auto-Stop for containers
    description: Configure Auto-Start and Auto-Stop for containers
---

# Configure Auto-Start and Auto-Stop for containers

To save costs containers should be shut down when when they are not in use. While you can [manually stop them](startstop-container.md) all containers also have Auto-Stop enabled per default to prevent users forgetting to shutdown their environments.

For the best experience you should configure the default Auto-Start and Auto-Stop times and modes to your personal working schedule:
1. In VS Code, click on the gear at the bottom left and choose **Settings**
1. Look for **COSMO Alpaca** in the settings and find the Auto-Start and -Stop settings.
1. We recommend the Auto-Stop settings to be enabled and Auto-Start to be disabled per default (so your container won't start every day if you're on your three week summer vacation). The time is configured based on your local timezone.

You can also configure the Auto-Start and Auto-Stop modes and times differently for single containers:
1. In VS Code, find your container and right-click on it.
1. Choose **Set Auto-Start mode** or **Set Auto-Stop mode**
1. Choose the mode you want to use for this single container.
1. The new mode is active for the container and the Auto-Start and Auto-Stop time from the settings is set again for this container as well.

You can watch a walkthrough here:
<video width="1280px" height="720px" controls>
  <source src="../media/autostart-stop.mp4" type="video/mp4">
  Your browser does not support the video tag.
</video>

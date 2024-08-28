---
    title: Create an organization in Azure DevOps
    description: Create an organization in Azure DevOps
---

# Create an organization in Azure DevOps

The top-level entity in Azure DevOps is an organization (or "project collection" as it was named in earlier iterations of the product) and you need to have one if you want to be able to work. To get one, you need to do one of the following:

- If you are using the PowerApp (find instructions for setup [here](access-and-setup-powerapps.md)), then you need to click on "Create Organization"
- If you are using the COSMO Alpaca Visual Studio Code Extension (find instructions for setup [here](access-and-setup-vsce.md)), then you need to go to the COSMO Alpaca view, click the three dots on the top right and select "New organization"

In both cases, a web site comes up and you need to take the following steps:

1. Click Continue
1. Enter a name of the organization that you want to create
1. Select the region closest to you
1. Enter the Captcha characters
1. Click Continue

After waiting for a couple of seconds, you have your Azure DevOps organization. **Do not create a project here**, but instead follow the instructions [here](../powerapps/create-project.md) for the PowerApp or [here](../vsc-extension/create-project.md) for the "COSMO Alpaca" Visual Studio Code Extension. If you create a project manually in the browser, then the self-service environment will work only partially or not at all.

In the video you can see how you get to the website from the PowerApp as well as from the Extension, but the actual setup is only done once in the end.

<video width="1280px" height="720px" controls>
  <source src="../media/create-org.mp4" type="video/mp4">
  Your browser does not support the video tag.
</video>

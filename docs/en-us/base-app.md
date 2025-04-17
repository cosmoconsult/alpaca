---
    title: Base App Contributions
    description: Base App Contributions
---

### Base App Contributions

1. Join the Microsoft Dynamics 365 Business Central Base Application contribution pilot : https://forms.office.com/pages/responsepage.aspx?id=v4j5cvGGr0GRqy180BHbR_Qj5hjzNeNOhBcvBoRIOltUOVBVTklZN1hBOTZJUU40OE5CUzNWNk1FQy4u
1. Fork https://github.com/microsoft/BusinessCentralApps
1. In VS Code, download "COSMO Alpaca Preview"
1. Open the COSMO Alpaca Preview extension from the sidebar and search for the forked BusinessCentralApps repo in the tree
1. On the project "App" do a right-cick and select "Create container" and enter a name for your new container
1. While the container is creating, right-click on the repository and select "Clone repository"
1. Open the directory "/App/Layers/W1/BaseApp" within the cloned repository
1. In the new window, open the COSMO Alpaca Preview and find your container underneath project
1. Wait until the container is "healthy". When the container is in "starting" status you can do a right click on the container and select "Show logs" to see what is happening
1. When the container is healthy, right-click on the container and select "Create launch.json" to setup the connection to the container for development
1. Right-click on the container and select "Download DLL package"
1. Right-click on the container and select "Copy password"
1. Press F1 -> Download symbols, choose the container, enter your username and paste the copied password (you may need to to swith AL Langauage extension to Pre-Release version : https://learn.microsoft.com/en-us/dynamics365/release-plan/2023wave2/smb/dynamics365-business-central/get-al-vsix-preview-versions-visual-studio-code-marketplace)
1. Right-click on the container and select "Prepare for base app deployment". This sets the assembly probing paths and increases the version of the base app in app.json
1. In the meantime the DLLs should have been downloaded via your browser. Extract and move them to the `.netpackages` directory. Reload VS Code for AL to grab those changes
1. If you haven't got the newest AL extension and seeing errors you might need to set the runtime in app.json to 12.0
1. Now you're ready to go. Publish with F5 and enter your username and the generated password you copied earlier the access the webclient.

<video width="1280px" height="720px" controls>
  <source src="media/vscode/vsc-baseapp.mp4" type="video/mp4">
  Your browser does not support the video tag.
</video>
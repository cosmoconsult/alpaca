---
    title: Access and setup the VS Code Extension
    description: Access and setup the VS Code Extension
---

# Access and setup the VS Code Extension

One of the clients that give you access to COSMO Alpaca is the VS Code Extension.

## Installation

To get access, you need to:

1. Open Visual Studio Code. If you don't have it installed, you can get it for free [here][vsc-install]
1. Go to the extensions view in the activity bar
1. Search for **cosmo alpaca**
1. Click install
1. Wait until the installation has finished, you might have to reload the VS Code window
1. Afterwards you should see the extension in the list of installed extensions

You can watch a walkthrough here:

<video width="1280px" height="720px" controls>
  <source src="../media/install-vsc-extension.mp4" type="video/mp4">
  Your browser does not support the video tag.
</video>

## First use

When you use the extension for the first time by clicking on the COSMO icon in the activity bar, you might be asked to log in.

<video width="1280px" height="720px" controls>
  <source src="../media/azure-login.mp4" type="video/mp4">
  Your browser does not support the video tag.
</video>

## Configuration

You should be ready to go out of the box, but there are two settings you might want to change from the start:

1. Go to the extension settings. The easiest way is to open the extension view in VS Code, find the extension and do a right-click -> Extension Settings.
1. You might want to change the **Default Container Username** when a dev container is created. This defaults to the part of your Azure account before the @.
1. You also might want to change the **Default Container Password** when a dev container is created. This defaults to a generated random string.

<video width="1280px" height="720px" controls>
  <source src="../media/vsc-extension-config.mp4" type="video/mp4">
  Your browser does not support the video tag.
</video>

[vsc-install]: https://code.visualstudio.com/download

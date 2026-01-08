---
    title: Download Artifacts
    description: Download Artifacts
---

# Download Artifacts

If you want to download build artifacts from Azure DevOps directly from VS Code, you can use the download artifacts action. Right-click on the build (run) where you want to download the artifacts from and select **Download artifacts**:

![Extension Azure DevOps Download Artifacts](../../media/extension-devops-download-artifact.png)

The extension will then download all available build artifacts from the selected build run into a configurable folder. By default, this will be the artifacts folder of the workspace. The artifacts will be organized in subfolders that match the name of the pipeline.

Alternatively, you can also check [Download artifact][download-artifact] in the application guide.

[download-artifact]: ../../containers/setup-artifacts.md

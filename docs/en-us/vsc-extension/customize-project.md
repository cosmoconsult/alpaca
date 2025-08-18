---
    title: Customize Projects
    description: Customize Projects
---

# Customize Projects

> **Note:** If you want to learn more about how to define and structure customizations for Azure DevOps processes – including adding fields, modifying layouts, defining rules, and managing states – please refer to the dedicated [**Process Modification documentation**](process-modification.md).

> **Note:** this function is only available for Azure DevOps projects

# [**Azure DevOps**](#tab/azdevops)

For your specific project in Azure DevOps you might have additional requirements which need customizations. Some examples for customizations include:

- Adding additional fields, groups of fields or pages/tabs to your to WorkItems or removing existing ones
- Change the label of fields
- Add fields to the cards within the board view
- Adding rules to mark specific fields as required or to change values based on certain conditions
- ...

To make sure the customizations don't need to be created every time by hand, so that you save time and always do it exactly the same, we have implemented an action to apply predefined customizations to projects. Those customizations are specific to certain entities. To apply a customization, follow these steps:

1. In the Visual Studio Code extension right click on a project and choose **Customize**.
2. All available customizations for the entity the organization of the project is connected with are displayed. Choose a customization from the list.
3. When the customization was applied, you'll get a notification about the success.

<video width="1280px" height="720px" controls>
  <source src="../media/customize-project.mp4" type="video/mp4">
  Your browser does not support the video tag.
</video>

---

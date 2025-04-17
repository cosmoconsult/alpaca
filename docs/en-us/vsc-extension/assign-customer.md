---
    title: Assign Organization to Customer
    description: Assign Organization to Customer
---

# Assign Organization to Customer
_This is only available for COSMO CONSULT_


# [**GitHub (AL-Go)**](#tab/github)
WIP

# [**Azure DevOps**](#tab/azdevops)

It is important to assign an organization to it´s COSMO customer in order to be able to establish a connection between the DevOps organization and the customer´s data, which is processed/used by other COSMO services. This is particularly relevant for the development process since the maximum number of development environments is determined by the COSMO Alpaca license model selected by the customer.

To assign an organization to a customer, right-click on the organization and select **Assign customer**. A dialog for entering (parts of) the customer name is displayed. In the next step, based on the input made, a filtered list of customers is displayed. Now select the customer to which the organization should be assigned to. When the assignment was successful, the organization list will reload and show the newly assigned customer next to the organisation.

As part of the customer assignment, the current user is automatically assigned as the responsible user for this customer project. This assignment can be changed by [assigning a responsible user](assign-responsible-user.md).

<video width="1280px" height="720px" controls>
  <source src="../media/vsc-extension-assign-customer.mp4" type="video/mp4">
  Your browser does not support the video tag.
</video>

## Mark an organization as internal

In case the organization is only used for COSMO internal purposes and does not have any customer reference, it must be assigned to "COSMO Internal".

<video width="1280px" height="720px" controls>
  <source src="../media/vsc-extension-assign-customer-internal.mp4" type="video/mp4">
  Your browser does not support the video tag.
</video>

## How-to use the *Emergency*-button

In case the customer's container limit is reached and an error occurs when trying to create/start more development environments, the *Emergency*-button can be used to exceed the limitation and create/start the environment anyway. But this must be an emergency that justifies exceeding the licensed number of development environments!

*But beware, COSMO CONSULT digital services, team PPI and your project management will be informed about that overruled limitation automatically.*

Otherwise, please contact your project management to configure this limitation.

<video width="1280px" height="720px" controls>
  <source src="../media/vsc-extension-use-emergency-button.mp4" type="video/mp4">
  Your browser does not support the video tag.
</video>

---
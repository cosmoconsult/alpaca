---
    title: Cross-Company Collaboration
    description: Cross-Company Collaboration
---

# Cross-Company Collaboration

COSMO Alpaca allows that both you and your customers, partners, freelancers, etc. can work together on the same project.
# [**GitHub (AL-Go)**](#tab/github)
WIP

# [**Azure DevOps**](#tab/azdevops)

Please note that the tenant an Azure DevOps organization is connected to, determines the billed party.

## Inviting external users to collaborate with Alpaca

1. *For COSMO organizations only*: Access to COSMO Alpaca needs to be granted for the tenant of the external user first. Please contact the Alpaca support to do so.
1. *For COSMO organizations only*: Files on the fileshare that are referenced as dependencies need to be copied over from your own to the customer specific fileshare. You'll get access information about the customer specific fileshare in step 1.
1. You need to [allow guest access and invite the external users into the organization](https://learn.microsoft.com/en-us/azure/devops/organizations/accounts/add-external-user?view=azure-devops).

Please note that external users now need to [switch to your tenant](vsc-extension/tenant.md) to work in your organization and might want to create separate VS Code profiles if they use Alpaca in multiple tenants.


## Moving an Azure DevOps organization to the customer tenant and use Alpaca there

If your customer wants to have the Azure DevOps organization to reside in their own tenant, you can migrate the organization to the customer tenant.

1. Access to COSMO Alpaca needs to be granted for the target customer tenant first. Please contact the Alpaca support to do so.
1. Files on the fileshare that are referenced as dependencies need to be copied over from your own fileshare to the customer specific fileshare. You'll get access information about the customer specific fileshare in step 1.
1. Move the Azure DevOps organization to the customer tenant by [following the steps outlined in the documentation](https://learn.microsoft.com/en-us/azure/devops/organizations/accounts/change-azure-ad-connection?view=azure-devops).
1. After the move, [allow guest access and invite all your users into the organization](https://learn.microsoft.com/en-us/azure/devops/organizations/accounts/add-external-user?view=azure-devops). Please note that the customer is now billed for all User licenses.

Please note that developers now need to [switch to the customer tenant](vsc-extension/tenant.md) to work in the customer organization and should create different VS Code profiles for the different tenants.

---
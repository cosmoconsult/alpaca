---
    title: Status & Health
    description: Status & Health
---

# Status & Health

## Issue with BC 27.3

We are currently experiencing an issue affecting pipelines running BC version 27.3. The observed error is: `Cannot install apps due to the state of the tenant: OperationalWithDataUpgradeFailure.`

The root cause has been identified as a data upgrade error related to the app **Payables Agent by Microsoft**.

As a temporary workaround, please set the version in your cosmo.json back to **`27.2`**, which is the latest version reported by users to be working correctly.

## Azure DevOps Organization creation requires Billing Subscription

> [!NOTE]
> The information below is only relevant for COSMO users trying to create a new Azure DevOps organization.

Since 2026, creating new Azure DevOps organizations requires specifying a billing subscription.

We're currently working with the Global IT to find a good solution to this new requirement. Until then please get in touch with the [authorized people who have access to the billing subscription](https://engage.cloud.microsoft/main/org/cosmoconsult.com/threads/eyJfdHlwZSI6IlRocmVhZCIsImlkIjoiMzY5OTk2NDUxNzE3MTIwMCJ9?trk_copy_link=V2).

After the organization is created, you will be able to assign the COSMO entity and create a project using COSMO Alpaca as usual.

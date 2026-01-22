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

Microsoft recently made the assignment of a billing Azure subscription mandatory when creating new Azure DevOps organizations.

At the moment, only the Alpaca team and oneIT subscription owners are authorized to perform this assignment. We have already contacted the colleagues to find a better solution, but for now, we **will need to create new organizations on your behalf**. Please reach out to the Alpaca support for assistance.

After the organization is created, you will be able to assign the COSMO entity and create a project using COSMO Alpaca as usual.

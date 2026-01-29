---
    title: Status & Health
    description: Status & Health
---

# Status & Health

## Issue with BC 27.3

We are currently experiencing an issue affecting pipelines running BC version 27.3. The observed error is: `Cannot install apps due to the state of the tenant: OperationalWithDataUpgradeFailure.`

The root cause has been identified as a data upgrade error related to the app **Payables Agent by Microsoft**.

As a temporary workaround, please set the version in your cosmo.json back to **`27.2`**, which is the latest version reported by users to be working correctly.

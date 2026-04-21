---
    title: Add Environment
    description: How to add a SaaS deployment environment for a GitHub AL-Go project using the COSMO Alpaca extension
---

# Add Environment

Environments define where your AL-Go CI/CD pipelines deploy your app. This page explains how to add a SaaS environment to your GitHub repository using the COSMO Alpaca extension.

> [!NOTE]
> For OnPremise environments, the extension guides you through the same flow but collects different connection details.

## Prerequisites: Microsoft Entra App Setup

Before you can configure an environment in the extension, you need to register a Microsoft Entra application in the customer tenant and grant it the required Business Central permissions.

### SaaS deployment

[!INCLUDE [SaaS Entra Setup](../includes/saas-entra-setup.md)]

## Configure the environment in VS Code

Once the Microsoft Entra app is set up and you have the **ClientId**, **ClientSecret**, and **TenantId** at hand, proceed with the following steps in the COSMO Alpaca extension.

### 1. Open the Environments section

In the COSMO Alpaca extension, expand your repository and navigate to **Environments**. Click the **+** button to start the environment wizard.

![Environments section — add button](../media/github/github-env-projects.png)

### 2. Select the environment type

Choose the type of environment:

- **SaaS** — a Business Central online environment (cloud)
- **OnPremise** — a self-hosted Business Central environment

![Select environment type](../media/github/github-env-type.png)

### 3. Enter the environment name

Enter the name that identifies this environment. This name is used as the AL-Go environment name and must match the Business Central environment name exactly.

![Enter environment name](../media/github/github-env-name.png)

### 4. Select the projects

Select which AL-Go projects in the repository this environment applies to. In single-project repositories, only one project is listed.

![Select projects](../media/github/github-env-projects.png)

### 5. Enable Continuous Deployment

Decide whether this environment should be automatically deployed to on every successful CI/CD run.

- **Yes** — enables CD so every successful build deploys to this environment automatically
- **No** — deployment must be triggered manually

![Enable Continuous Deployment](../media/github/github-env-cd.png)

### 6. Enter the Client ID

Enter the **ClientId** obtained in the [Create the app registration](#create-the-app-registration) step above.

![Enter Client ID](../media/github/github-env-client-id.png)

### 7. Enter the Client Secret

Enter the **ClientSecret** (the value copied from Certificates & secrets) obtained in the [Create the app registration](#create-the-app-registration) step above.

![Enter Client Secret](../media/github/github-env-client-secret.png)

### 8. Enter the Tenant ID

Enter the **TenantId** of the customer's Microsoft Entra tenant. This is visible in the URL of the Business Central Admin Center, e.g. `https://businesscentral.dynamics.com/<TenantId>/admin`.

![Enter Tenant ID](../media/github/github-env-tenant-id.png)

### 9. Commit directly or create a pull request

Choose how the environment configuration should be committed:

- **Yes** — commits the environment settings directly to the branch
- **No** — opens a pull request for review before the settings are applied

![Directly commit or create pull request](../media/github/github-env-direct-commit.png)

## What happens next

After confirming, the COSMO Alpaca extension creates the necessary GitHub environment and secrets in your repository. The CI/CD workflow will use this environment for deployments on the next successful build (if CD is enabled) or when triggered manually.

## See also

- [AL-Go `Environments` documentation](https://github.com/microsoft/AL-Go/blob/main/Scenarios/AddExistingAppOrTestApp.md)
- [Setup AL-Go Settings](setup-al-go-settings.md)
- [Create Release](create-release.md)

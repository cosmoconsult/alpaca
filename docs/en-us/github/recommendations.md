---
    title: GitHub Repository Recommendations
    description: Naming conventions, repository structure and best practices for COSMO Alpaca GitHub repositories
---

# GitHub Repository Recommendations

This page summarizes COSMO-specific conventions and best practices for GitHub repositories using COSMO Alpaca with AL-Go.

## Repository naming

Use the following naming scheme:

| Scenario | Pattern | Example |
| - | - | - |
| Customer project | `bc-customer-<customername>` | `bc-customer-acme` |
| Product | `bc-product-<productname>` | `bc-product-opplus` |
| Asset / shared library | `bc-asset-<assetname>` | `bc-asset-translations` |

## Repository structure

### One repository per customer

For customer projects, use **one repository per customer** with all apps in the same repo. This has several advantages:

- AL-Go automatically discovers dependencies between apps in the same repository
- Simpler CI/CD configuration — one set of settings covers all apps
- Easier to manage secrets, permissions and entity assignments per customer

### One repository per product

For products, use **one repository per product**. Products typically have their own release lifecycle and versioning strategy.

## Versioning

Use the AL-Go default versioning strategy `0` unless you have a concrete reason for another strategy. See [Versioning Strategies](versioning-strategies.md) for details.

## See also

- [Create Repository & App](create-app.md)
- [Setup AL-Go Settings](setup-al-go-settings.md)
- [Versioning Strategies](versioning-strategies.md)
- [Migrate from Azure DevOps (cosmo.json)](migrate-from-azure-devops.md)

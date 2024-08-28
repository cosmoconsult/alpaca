---
    title: COSMO Alpaca Integrations
    description: COSMO Alpaca Integrations
---

# COSMO Alpaca Integrations

## BcContainerHelper PowerShell Cmdlets

The Alpaca PowerShell Cmdlets are available starting with BcContainerHelper v5.0.4+. If this version is not yet released you might want to use `Install-Module -Name BcContainerHelper -AllowPrerelease`.

**Usage**:

```powershell
Import-Module BcContainerHelper

$authContext = New-BcAuthContext -clientId $bcContainerHelperConfig.AlpacaSettings.OAuthClientId -Scopes $bcContainerHelperConfig.AlpacaSettings.OAuthScopes -includeDeviceLogin

# Create new container (for more parameters see Get-Help New-AlpacaBcContainer)
$credential = New-Object System.Management.Automation.PSCredential ("admin", (ConvertTo-SecureString "Passw0rd!" -AsPlainText -Force))
$containerId = New-AlpacaBcContainer `
        -authContext $authContext `
        -bcArtifact '/onprem/21.5/de' `
        -credential $credential `
        -containerName 'myBcContainer' `
        -devContainer

# URLs
Write-Host "Web: https://cosmo-alpaca-enterprise.westeurope.cloudapp.azure.com/$containerId/?tenant=default"
Write-Host "OData: https://cosmo-alpaca-enterprise.westeurope.cloudapp.azure.com/$($containerId)rest/"
Write-Host "SOAP: https://cosmo-alpaca-enterprise.westeurope.cloudapp.azure.com/$($containerId)soap/"
Write-Host "DEV: server=https://cosmo-alpaca-enterprise.westeurope.cloudapp.azure.com | serverInstance=$($containerId)dev | port=443"

# Get all containers
Get-AlpacaBcContainer -authContext $authContext

# Get single container
Get-AlpacaBcContainer -authContext $authContext -containerId $containerId

# Stop container
Stop-AlpacaBcContainer -authContext $authContext -containerId $containerId

# Start container
Start-AlpacaBcContainer -authContext $authContext -containerId $containerId

# Delete container
Remove-AlpacaBcContainer -authContext $authContext -containerId $containerId

# Get Event Log
Get-AlpacaBcContainerEventlog -authContext $authContext -containerId $containerId

# Invoke script
Invoke-ScriptInAlpacaBcContainer -authContext $authContext -containerId $containerId -scriptblock {
    param(
        [string] $name
    )
    Write-Host "Returning: Hello $name"
    return "Hello $name" 
} -argumentList 'COSMO Alpaca!'
```

More Cmdlets will be available soon.

## AL-Go for GitHub

There will be integrations in both directions:
- AL-Go will support Alpaca as a backend for running containers for development and pipelines.
- COSMO Alpaca VS Code Extension will support creating and managing AL-Go repositories, running workflows, creating containers, etc.

### Alpaca support in AL-Go

This is still in development.


### AL-Go support in Alpaca

You can [install the **COSMO Alpaca Preview** Extension](getting-started/access-and-setup-vsce.md) in VS Code to get an early preview of the AL-Go support in Alpaca. Please use the **COSMO Alpaca Preview** instead of the **COSMO Alpaca** extension. You can use the stable and the preview extensions in parallel.


## OpenAPI specification

You can find the OpenAPI definitions of the API at https://cosmo-alpaca-enterprise.westeurope.cloudapp.azure.com/api/docker/release/swagger/index.html?urls.primaryName=v0.12.

Authentication is done via OAuth, you can get an access token e.g. via
```powershell
Import-Module BcContainerHelper
$authContext = New-BcAuthContext -clientId $bcContainerHelperConfig.AlpacaSettings.OAuthClientId -Scopes $bcContainerHelperConfig.AlpacaSettings.OAuthScopes -includeDeviceLogin
$authContext.AccessToken
```

This token needs to be passed via an Authentication header:
```http
GET https://cosmo-alpaca-enterprise.westeurope.cloudapp.azure.com/api/docker/release/Service?api-version=0.12
Authorization: Bearer {{accessToken}}
```

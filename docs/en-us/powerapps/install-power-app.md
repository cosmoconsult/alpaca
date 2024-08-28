---
    title: Install Power App in new environment
    description: Install Power App in new environment
---

# Install Power App

## Setup app registration in Azure Portal

### Create an app registration

[Azure Portal](https://portal.azure.com/#view/Microsoft_AAD_RegisteredApps/ApplicationsListBlade)

![Create app registration](../media/powerapps/create-app-registration.png "Azure App Registration")

### Create Client Secret

**Save the client secret in a safe place. You will need it later.**

![Create Client Secret](../media/powerapps/create-secret.png "Create Client Secret")

### Add API Permissions

Add the following API permissions and grant admin consent for organization:

![Add API Permissions](../media/powerapps/add-api-permissions.png "Add API Permissions")

*PowerApps-Advisor is found under "APIs my organization uses"*

## Import solution and setup connections

### Import solution

Import the solution into your environment.

[Power Apps](https://make.powerapps.com/)

![Import solution](../media/powerapps/import-solution.png "Import solution")

Select or create a connection for Office 365

![Create Outlook connection](../media/powerapps/create-outlook-connection.png "Create Outlook connection")

The import may take several minutes, a notification appears automatically when import is finished.

![Import finished](../media/powerapps/import-finished.png "Import finished")

### Setup auth of custom connectors of the solution

Setup auth of custom connector "AzDevops-Advisor API"

Open the custom connector "AzDevops-Automation Core API" of the solution and setup the authentication.

![Solution Custom Connectors](../media/powerapps/solution-custom-connectors.png "Solution Custom Connectors")

Click on the custom connector and select "Edit"

![Edit Custom Connector](../media/powerapps/edit-custom-connector.png "Edit Custom Connector")

Use the following values:

* Select `OAuth 2.0` and `Azure Active Directory`

* Get `client ID` and `tenant ID` it from app registration - use the client secret created earlier.

* `Resource URL`: https://management.core.windows.net/

The setup should look as follows:

![Azure Devops Auth Setup](../media/powerapps/azdevops-auth-setup.png "Azure Devops Auth Setup")

Click on "Update connector"

![Update Connector](../media/powerapps/update-connector.png "Update Connector")

Create connection and test e.g. *GetSwarmUrl* with `entityAdCode` test

![New Connection](../media/powerapps/new-connection.png "New Connection")

![Test Az Devops Connection](../media/powerapps/test-az-devops-connection.png "Test Az Devops Connection")

### Setup auth of custom connector "Azure-AD-Graph Core API"

Use values according to previus custom connector with the following differences:
* `Resource URL`: https://graph.windows.net
* `Tenant` is left to default "common"

The setup should look as follows:

![AD Graph Auth Setup](../media/powerapps/ad-graph-auth-setup.png  "AD Graph Auth Setup")

Update the connector, create a connection and test it:

![Test AD Graph Connection](../media/powerapps/test-ad-graph-connection.png "Test AD Graph Connection")

### Setup auth of custom connector "Microsoft-Graph Core API"

Use values according to previus custom connector with the following differences:
* `Resource URL`: https://graph.microsoft.com

The setup should look as follows:
![Microsoft Graph Auth Setup](../media/powerapps/microsoft-graph-auth-setup.png  "Microsoft Graph Auth Setup")

Update the connector, create a connection and test it:

![Test Microsoft Graph Connection](../media/powerapps/test-microsoft-graph-connection.png "Test Microsoft Graph Connection")

## Start the app

Click on Play in the solution overview to start the app.

![Start App](../media/powerapps/start-app.png "Start App")

Allow permissions:

![Allow permissions](../media/powerapps/allow-permissions.png "Allow permissions")

The app is ready to use.

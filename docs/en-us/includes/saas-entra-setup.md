#### Get a user with the rights to create an app registration

If there's no user in the customer tenant that has the rights to create new App Registrations you might want to create one, else you can skip the following steps:

1. Open URL https://partner.microsoft.com/commerce/customers
1. Find your customer in the list and open it
1. Open "Service Management"
1. Open "Microsoft Entra ID" (ex. "Azure Active Directory")
1. Open "Microsoft Entra ID" (ex. "Azure Active Directory") once more on the left
   * Go to users
   * Click on "New user"
     * Select "Create user"
     * Fill in username (e.g. "bcadmin")
     * Click on "Roles" and select "Global Administrator"
     * Click on "Create"
     * **Important**: Continue the following steps with the newly created user
     * **Please note**: This step might be unnecessary if a "Global Administrator" from within the customer tenant is creating the App Registration. It's only relevant, if you do the steps in Microsoft Entra ID (ex. Azure Active Directy) with credentials from outside the customers tenant (e.g. when doing this via Partner Center). Please also note, that you'll need a user with "Global Administrator"-role later for the ["Register the Microsoft Entra application"](#register-the-microsoft-entra-application-in-business-central)-step

#### Create the app registration

1. Open "App Registrations"
1. Click "Add new registration"
   * Add a custom name, e.g. "COSMO"
   * Select "Accounts in any organizational directory (Any Microsoft Entra ID tenant - Multitenant)"
   * Set the Redirect URI to: https://businesscentral.dynamics.com/OAuthLanding.htm
   * Click on "Register"
1. Click on the newly created app
   * Open "API Permissions"
   * Click on "Add Permission"
   * Select "Dynamics 365 Business Central"
   * Select "Application Permissions"
   * Select "Automation.ReadWrite.All"
   * Click on "Add permissions"
   * Now select your newly created API Permission and click on the button "Grant admin consent for *CustomerName*.onmicrosoft.com"
1. Click on "Certificates & secrets"
   * Click on "New client secret"
   * Add a description
   * Add the expiration date
   * Click on "Add"
   * Important: Copy the "value" of the secret right away! It won't be fully shown later on. This is the **ClientSecret** needed for the next steps
1. Select "Overview"
     * The "Application (client) ID" is the **ClientId** needed for the next steps

#### Register the Microsoft Entra application in Business Central Admin Center

1. Open the Business Central Admin Center
2. Navigate to Microsoft Entra Apps
3. Click on "Authorize Microsoft Entra app"
4. Fill in the ClientId from the previous step
5. Click on the link "Grant"
   * A page with a required Login opens
   * Use the newly created user from the previous step or another user with "Global Administrator"-role and continue
   * Accept the requested permissions and the page should close afterwards
6. The Microsoft Entra application is now authorized for the admin center API

#### Register the Microsoft Entra application in Business Central

1. Open the Business Central Webclient
2. Search for "Microsoft Entra Applications" (ex. "AAD Applications") and open the page
3. Click on "New"
4. Fill in the ClientId from the step "Create the app registration"
5. Fill in a custom description
6. Click on the action "Grant Consent"
   * A page with a required Login opens
   * Use the newly created user from the previous step or another user with "Global Administrator"-role and continue
   * Accept the requested permissions and the page should close afterwards
7. Look at the bottom of the Microsoft Entra application page and add the following
   * "D365 AUTOMATION"
   * "EXTEN. MGT. - ADMIN"
   * *additional permission sets required by partner apps (e.g. "CCS LIC ALL" for COSMO Licensing)*
8. Your Microsoft Entra application is now fully set up!

> [!NOTE]
> This step needs to be done for each Business Central environment you want to deploy to.

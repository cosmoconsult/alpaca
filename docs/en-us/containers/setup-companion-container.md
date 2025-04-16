---
    title: Setup Companion Containers
    description: Setup Companion Containers
---

# Set up companion containers

# [**GitHub (AL-Go)**](#tab/github)
WIP

# [**Azure DevOps**](#tab/azdevops)

A companion container is an additional container which is started with your BC Container. Every action (start/stop/delete) on the BC container also affects the companion.

You can setup companions inside of the cosmo.json

Therfore you can add the key "companionServices" to the [bcArtifacts](containers/setup-artifacts.md)
```json
    "bcArtifacts": {
        "current": {
            //
            "artifacts": [],
            "devopsArtifacts": []    
            //...

            // Defintion of companions, example of creating an IIS Page as companion
            "companionServices" : {
                "iis": { // Key of the companion only internal, needs to be unique in this config
                    "name": "mycompanion",
                    "companionValues": { // Parameters for the companion, see list of parameters below
                        "image": {
                            "repository": "mcr.microsoft.com/windows/servercore/iis",
                            "pullPolicy": "Always",
                            "tag": "latest"
                        },
                        "ingress": { 
                            "enabled": true,
                            "host": "cosmo-alpaca.westeurope.cloudapp.azure.com"
                        }
                    }
                }

        },
        "nextMinor": {
            // ...
            "artifacts": [],
            "devopsArtifacts": []    
        },
        //...
    }
```

|Name|Default|Description|
|-|-|-|
|name||The name of the container, this value will be extended the following during startup {BCContainerID}-{name of companion}-generic-app |
|companionValues.image.repository|nginx|Container image which should be used to create the companion|
|companionValues.image.pullPolicy|ifNotPresent|Defines when the image should be updated, if you use an image tag which might get updatet (like latest) consider using "always" here|
|companionValues.image.tag|ifNotPresent|Tag of the image|
|service.port|80|Port you want to be redirected to the container via it's URL|
|ingress.enabled|false|Enables/Disables the public URL for the container|
|ingress.host||Should be set to "cosmo-alpaca.westeurope.cloudapp.azure.com" or "cosmo-alpaca-enterprise.westeurope.cloudapp.azure.com" depending on which cluster you are running|
|nodeSelector.kubernetes.io/OS|Windows|Setup on which OS you want to run the container|
|env.ENV_NAME1||Environmentvariable which should be available in the container. You can define as much variables as you like|


## Setup default companions for your company

If you want to setup default companions for your company and don't want to define the companionValues in every cosmo.json, there is a possibility to add a specific service which generates the companionValues during startup for you.

For help setting up the service, please contact the COSMO Alpaca Supportteam

---
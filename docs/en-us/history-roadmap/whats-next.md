---
    title: What's next in COSMO Alpaca
    description: What's next in COSMO Alpaca
---

# What's next in COSMO Alpaca

Here you will find what we are currently working on and what is planned for the future.
> [!NOTE]
> This is no guarantee when or if something is happening, just an indication what we plan to do. We are of course fixing any bugs that might come up as soon as possible and we are also accepting improvement ideas on a daily basis, so plans change.

# General

> [!CAUTION]
> Shutdown of Docker Swarm as of **June 30, 2025** ([Announcement](https://engage.cloud.microsoft/main/org/cosmoconsult.com/threads/eyJfdHlwZSI6IlRocmVhZCIsImlkIjoiMzA3OTUwMTk5ODgwOTA4OCJ9?trk_copy_link=V2))\
> This means that COSMO Alpaca will no longer support BC14 and older versions.

- Update documenation and remove outdated information (e.g. Docker Swarm specifics)

# Frontend

## Visual Studio Code Extension

- Reimplement the whole extension and adding support for [AL-Go for GitHub](https://github.com/microsoft/AL-Go) ([Preview](https://marketplace.visualstudio.com/items?itemName=cosmoconsult.cosmo-alpaca))\
  (The new extensions currenly provides mainly GitHub functionality, but we are adding the known Azure DevOps features step by step.)
- Add a new simplified user interface for non-technical people to use the extension on `vscode.dev`
- 1-Click install product package in container ([COSMO Improve](https://improve.cosmoconsult.com/ideas/I-0162))

## Power App

> [!NOTE]
> We will not continue to develop the Power App. We will keep it running until the new solution is fully ready and supports the main features of the Power App (Demo & Pull Request Containers, etc.)
> The new solution will be the new Visual Studio Code Extension, which we are currently working on. It can be used on `vscode.dev` also by non-technical people by providing a simplified user interface.
> By using the new extension as our central frontend for all users, we can completly focus on the development of one solution. This will allow us to provide new features and improvements faster.

# Backend

## Azure DevOps

- Nothing planned in particular

## GitHub

- Add support for [BcNuGet](https://github.com/BusinessCentralApps/GenerateBcNuGet?tab=readme-ov-file#using-github) to Product Packages

## Container

- Add support for external & big databases ([#1107](https://dev.azure.com/cc-ppi/General/_workitems/edit/1107))

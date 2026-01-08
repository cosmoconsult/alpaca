---
    title: Favorite Organizations
    description: Favorite Organizations
---

# Favorite Organizations

In the list of organizations, you may over time see a lot of them and not all are relevant anymore. To help with that, you can set up favorite organizations that will have a special icon and additionally define that only the favorites are visible:

1. Open the extension settings
1. Find the setting "Cc-azdevops: Favorite Organizations" and click on "Edit in settings.json". As the setting is an array, it needs to be configured manually in the settings file.
1. If you e.g. have two organizations called "cc-ppi" and "cc-demo-devops" and you want to define them as favorites, put this in your config file:

```json
    "cc-azdevops.favoriteOrganizations": [
        "cc-ppi",
        "cc-demo-devops"
    ]
```

This will mean that those organizations get a golden globe as icon. If you want to only show those organizations, also activate the "Cc-azdevops: Only Show Favorite Organizations" setting.

If you had the organization list already open before changing the setting, you have to reload once.

<video width="1280px" height="720px" controls>
  <source src="../../media/vsce-favorite-orgs.mp4" type="video/mp4">
  Your browser does not support the video tag.
</video>

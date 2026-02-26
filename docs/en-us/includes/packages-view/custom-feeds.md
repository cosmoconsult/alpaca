You can also add custom NuGet feeds locally using the VS Code extension setting `cosmo-alpaca.customNuGetFeeds`. These custom feeds will then appear under the dedicated "Custom NuGet Feeds" node in the tree.

```json
"cosmo-alpaca.customNuGetFeeds": [
    {
        "feedUrl": "https://...index.json",
        "pat": "",
        "filter": ""
    }
]
```

### Parameters

[!INCLUDE [Packages View Custom Feeds Parameters](custom-feeds-parameters.md)]

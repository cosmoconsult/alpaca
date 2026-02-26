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

|Element|Type||Value|
|-|-|-|-|
|`feedUrl`|string|**mandatory**|URL of the NuGet feed|
|`pat`    |string|optional     |Personal Access Token (PAT) for authentication to the NuGet feed (if required)|
|`filter` |string|optional     |Filter to apply when querying the NuGet feed (optional)|

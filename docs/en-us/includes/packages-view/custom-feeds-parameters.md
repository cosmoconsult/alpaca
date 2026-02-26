|Element|Type||Value|
|-|-|-|-|
|`feedUrl`|string|**mandatory**|URL of the NuGet feed|
|`pat`    |string|optional     |Personal Access Token (PAT) for authentication to the NuGet feed (if required)|
|`filter` |string|optional     |Filter to apply when querying the NuGet feed (optional)|

> [!TIP]
> Use the `filter` to include only packages containing a certain term. This is useful if you have a lot of packages in your custom feeds and only want to include the relevant ones.

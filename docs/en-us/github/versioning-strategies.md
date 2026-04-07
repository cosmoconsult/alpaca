---
    title: Versioning Strategies
    description: AL-Go versioning strategies, recommendations and examples for GitHub repositories
---

# Versioning Strategies

AL-Go calculates app versions based on the setting `versioningStrategy`.

The official AL-Go reference is here:

- [AL-Go `versioningStrategy`](https://aka.ms/algosettings#versioningstrategy)

In COSMO Alpaca GitHub projects, this is configured through the [AL-Go settings](setup-al-go-settings.md).

## Recommendation

For most repositories, use:

```json
{
    "versioningStrategy": 3
}
```

This is also the recommendation in the existing [Setup AL-Go Settings](setup-al-go-settings.md) page.

## How the strategies work

AL app versions have four segments:

`Major.Minor.Build.Revision`

### Strategy 0

- `Major.Minor` come from `app.json`
- `Build` is the GitHub `run_number`
- `Revision` is based on `run_attempt`

This is simple, but the build number grows continuously with workflow runs.

### Strategy 2

- `Major.Minor` come from `app.json`
- `Build` is the current UTC date in `yyyyMMdd`
- `Revision` is the current UTC time in `hhmmss`

This produces timestamp-like versions.

### Strategy 3

- `Major.Minor.Build` come from `app.json`
- `Revision` is the GitHub `run_number`

This is usually the most practical option because the first three segments stay under your control in source code.

## Example for strategy 3

If your `app.json` contains:

```json
{
    "version": "1.4.27.0"
}
```

and the CI/CD run number is `153`, AL-Go will typically produce:

`1.4.27.153`

This makes it easy to:

- maintain semantic intent in source control
- increment the build segment intentionally when you want to
- still get unique artifact versions per workflow run

## When to use which strategy

### Use strategy 3 when you want stable source-controlled versioning

This is the best default for most customer and product repositories.

### Use strategy 0 when you want minimal manual version handling

This can be acceptable for internal or fast-moving repositories, but the version number becomes tightly coupled to GitHub workflow history.

### Use strategy 2 when timestamp-based versions are explicitly wanted

This is less common and mainly useful when date-based traceability is more important than source-controlled build numbering.

## Related settings

Depending on your setup, these settings are often relevant together with `versioningStrategy`:

- [AL-Go `repoVersion`](https://aka.ms/algosettings#basic-project-settings)
- [AL-Go `runNumberOffset`](https://aka.ms/algosettings#expert-settings-rarely-used)
- [AL-Go settings overview](https://aka.ms/algosettings)

## Common recommendation patterns

### PTE repository

```json
{
    "versioningStrategy": 3
}
```

Manage `Major.Minor.Build` in `app.json` and let GitHub runs fill the revision.

### Repository where manual build part management is not wanted

```json
{
    "versioningStrategy": 0
}
```

Use this only if you accept that build numbers follow GitHub run history.

## Important note for workflow-specific files

Do not arbitrarily change `versioningStrategy` in the generated workflow-specific files for Current, Next Minor and Next Major unless you have a concrete reason and understand the effect on generated workflows.

See also:

- [Change BC Version/Country](change-container.md)
- [Setup AL-Go Settings](setup-al-go-settings.md)

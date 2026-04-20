---
    title: Versioning Strategies
    description: AL-Go versioning strategies, recommendations and examples for GitHub repositories
---

# Versioning Strategies

AL-Go calculates app versions based on the setting `versioningStrategy`.

The official AL-Go reference is here:

- [AL-Go `versioningStrategy`](https://aka.ms/algosettings#versioningstrategy)

In COSMO Alpaca GitHub projects, this is configured through the [AL-Go settings](setup-al-go-settings.md).

## Recommended strategies

AL app versions have four segments: `Major.Minor.Build.Revision`

### Strategy 0 — default

- `Major.Minor` from `app.json`, `Build` from GitHub `run_number`, `Revision` from `run_attempt`
- Use this for most repositories — simple and requires no manual version management

### Strategy 2 — date-based build versions

- Produces `Major.Minor.YYYYMMDD.HHMMSS`-style versions
- Useful for validation or pre-release builds where the version should not overlap with release versions

### +16 flag — use `repoVersion` as version base

- `+16` is a **flag**, not an offset. It changes where the version base (`Major.Minor`) comes from
- Without `+16`: version base is taken from each app's `app.json`
- With `+16`: version base is taken from the `repoVersion` setting
- Can be combined with other strategies (e.g. `0 + 16 = 16`)

For all strategies and combinations, see the [AL-Go `versioningStrategy` documentation](https://aka.ms/algosettings#versioningstrategy).

## See also

- [Setup AL-Go Settings](setup-al-go-settings.md)
- [Change BC Version/Country](change-container.md)

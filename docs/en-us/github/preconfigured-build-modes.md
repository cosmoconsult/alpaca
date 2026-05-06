---
    title: Preconfigured Build Modes (COSMO-only)
    description: Preconfigured AL-Go build modes in COSMO repositories and how to combine them
---

# Preconfigured Build Modes (COSMO-only)

This page documents the **preconfigured AL-Go build modes** used in COSMO GitHub repositories.

These settings are implemented through `ConditionalSettings` and allow you to compose build behavior by combining mode tokens in a single build mode name.

> [!IMPORTANT]
> This behavior is **COSMO-only** and intended for repositories/templates that are in COSMO GitHub organizations.

## Supported preconfigured mode tokens

### Behavior tokens

- `nocontainer` -> sets `doNotPublishApps: true`
- `minversion` -> sets `artifact: /onprem/*//first`

### Country tokens

Use one of these as `country:<code>`:

- `at`, `au`, `base`, `be`, `bg`, `br`, `ca`, `ch`, `co`, `cz`, `de`, `dk`, `ee`, `es`, `fi`, `fr`, `gb`, `gr`, `hk`, `hr`, `hu`, `ie`, `in`, `is`, `it`, `jp`, `kr`, `lt`, `lv`, `mx`, `nl`, `no`, `nz`, `pe`, `ph`, `pl`, `pt`, `ro`, `rs`, `se`, `si`, `sk`, `th`, `tr`, `tw`, `ua`, `us`, `vn`, `w1`

## How combinations work

The wildcard patterns allow token matching at the start, middle, or end of the build mode string.

That means you can define combined build modes such as:

- `nocontainer-minversion-country:de`
- `country:us-minversion`
- `featureX-country:at-nocontainer`

If a combined build mode matches multiple conditional blocks, AL-Go applies all matching settings.

## Example

Example in `./**/.AL-Go/settings.json`:

```json
{
  "buildModes": [
    "Default",
    "nocontainer-minversion-country:de",
    "country:us"
  ]
}
```

Result for `nocontainer-minversion-country:de`:

- `doNotPublishApps: true`
- `artifact: /onprem/*//first`
- `country: de`

## Notes

- Keep build mode names token-based and hyphen-separated for readability.
- Use exactly one `country:<code>` token per combined mode to avoid conflicting country assignments.
- For generic AL-Go behavior, see the Microsoft docs for [`buildModes`](https://aka.ms/algosettings#buildModes) and [`ConditionalSettings`](https://aka.ms/algosettings#conditional-settings).

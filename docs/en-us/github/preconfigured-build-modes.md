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
- `minversion` or `minversion:sandbox` -> sets `artifact: /sandbox/*//first` and `nuGetFeedSelectMode: EarliestMatching`
- `minversion:onprem` -> sets `artifact: /onprem/*//first` and `nuGetFeedSelectMode: EarliestMatching`

### Country tokens

Use one of these as `country:<code>`:

- `w1`, `base`, `at`, `au`, `be`, `ca`, `ch`, `cz`, `de`, `dk`, `es`, `fi`, `fr`, `gb`, `in`, `is`, `it`, `mx`, `nl`, `no`, `nz`, `ru`, `se`, `us`

## How combinations work

The wildcard patterns allow token matching at the start, middle, or end of the build mode string.

That means you can define combined build modes such as:

- `nocontainer-minversion-country:de`
- `country:us-minversion:sandbox`
- `country:gb-minversion:onprem`
- `featureX-country:at-nocontainer`

If a combined build mode matches multiple conditional blocks, AL-Go applies all matching settings.

## Example

Example in `./**/.AL-Go/settings.json`:

```json
{
  "buildModes": [
    "Default",
    "nocontainer-minversion-country:de",
    "country:gb-minversion:onprem",
    "country:us"
  ]
}
```

Result for `nocontainer-minversion-country:de`:

- `doNotPublishApps: true`
- `artifact: /sandbox/*//first`
- `nuGetFeedSelectMode: EarliestMatching`
- `country: de`

Result for `country:gb-minversion:onprem`:

- `artifact: /onprem/*//first`
- `nuGetFeedSelectMode: EarliestMatching`
- `country: gb`

## Notes

- Keep build mode names token-based and hyphen-separated for readability.
- Use exactly one `country:<code>` token per combined mode to avoid conflicting country assignments.
- For generic AL-Go behavior, see the Microsoft docs for [`buildModes`](https://aka.ms/algosettings#buildModes) and [`ConditionalSettings`](https://aka.ms/algosettings#conditional-settings).

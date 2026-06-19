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

- `NoContainer` -> sets `doNotPublishApps: true`
- `MinVersion` or `MinVersionSandbox` -> sets `artifact: /sandbox/*//first` and `nuGetFeedSelectMode: EarliestMatching`
- `MinVersionOnPrem` -> sets `artifact: /onprem/*//first` and `nuGetFeedSelectMode: EarliestMatching`
- `CurrentVersion` or `CurrentVersionSandbox` -> sets `artifact: /sandbox///Latest`
- `CurrentVersionOnPrem` -> sets `artifact: /onprem///Latest`
- `NextMinorVersion` or `NextMinorVersionSandbox` -> sets `artifact: /sandbox///NextMinor`
- `NextMajorVersion` or `NextMajorVersionSandbox` -> sets `artifact: /sandbox///NextMajor`

### Country tokens

Use one of these country codes directly:

- `w1`, `base`, `at`, `au`, `be`, `ca`, `ch`, `cz`, `de`, `dk`, `es`, `fi`, `fr`, `gb`, `in`, `is`, `it`, `mx`, `nl`, `no`, `nz`, `ru`, `se`, `us`

## How combinations work

The wildcard patterns allow token matching at the start, middle, or end of the build mode string.

That means you can define combined build modes such as:

- `NoContainer_MinVersion_de`
- `us_MinVersionSandbox`
- `gb_MinVersionOnPrem`
- `featureX_at_NoContainer`

If a combined build mode matches multiple conditional blocks, AL-Go applies all matching settings.

## Example

Example in `./**/.AL-Go/settings.json`:

```json
{
  "buildModes": [
    "Default",
    "NoContainer_MinVersion_de",
    "gb_MinVersionOnPrem",
    "us"
  ]
}
```

Result for `NoContainer_MinVersion_de`:

- `doNotPublishApps: true`
- `artifact: /sandbox/*//first`
- `nuGetFeedSelectMode: EarliestMatching`
- `country: de`

Result for `gb_MinVersionOnPrem`:

- `artifact: /onprem/*//first`
- `nuGetFeedSelectMode: EarliestMatching`
- `country: gb`

## Notes

- Build modes are case insensitive.
- Keep build mode names token-based and underscore-separated for readability.
- Use exactly one country code token per combined mode to avoid conflicting country assignments.
- For generic AL-Go behavior, see the Microsoft docs for [`buildModes`](https://aka.ms/algosettings#buildModes) and [`ConditionalSettings`](https://aka.ms/algosettings#conditional-settings).

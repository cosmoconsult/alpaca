---
    title: Setup Minimum & Other Workflows
    description: Configure Minimum and other GitHub AL-Go workflows using workflow specific settings, build modes and schedules
---

# Setup Minimum & Other Workflows

AL-Go supports workflow-specific settings files. This is the recommended way to configure **Test Current**, **Test Next Minor**, **Test Next Major** and other workflows differently from the normal CI/CD workflow.

> [!NOTE]
> "Minimum" is not a separate workflow in AL-Go. Instead, minimum version validation is integrated into the existing build workflows (CI/CD, Pull Request Build, Test Current, Test Next Minor, Test Next Major) using `buildModes` and conditional settings.

The Microsoft AL-Go documentation for this behavior is here:

- [Workflow specific settings](https://aka.ms/algosettings#workflow-specific-settings)
- [buildModes](https://aka.ms/algosettings#basic-repository-settings)
- [Conditional settings](https://aka.ms/algosettings#conditional-settings)
- [Overwrite settings](https://aka.ms/algosettings#overwrite-settings)

## Where to configure workflow-specific behavior

For repository-wide workflow settings, use files in `.github` named like this:

- `.github/CICD.settings.json`
- `.github/Pull Request Build.settings.json`
- `.github/Test Current.settings.json`
- `.github/Test Next Minor.settings.json`
- `.github/Test Next Major.settings.json`
- `.github/Update AL-Go System Files.settings.json`

AL-Go also supports project-specific workflow settings in `.AL-Go/<workflow>.settings.json` for multi-project repositories.

Recommended split:

- Define repository-wide `conditionalSettings` in `.github/AL-Go-Settings.json`
- Define project-specific `buildModes` in `./**/.AL-Go/settings.json`

## How to configure Minimum workflows using build modes

`buildModes` is a setting that tells AL-Go which build variants should run. Common examples are:

- `Default`
- `MinVersion`

Use one shared configuration model:

1. Define repository-wide rules in `.github/AL-Go-Settings.json`
2. Define project build modes in `./**/.AL-Go/settings.json`

Repository example in `.github/AL-Go-Settings.json`:

```json
{
    "conditionalSettings": [
        {
            "buildModes": ["MinVersion"],
            "settings": {
                "artifact": "//*//first",
                "nuGetFeedSelectMode": "EarliestMatching"
            }
        }
    ]
}
```

> [!NOTE]
> `nuGetFeedSelectMode: EarliestMatching` is used here together with `MinVersion` to resolve NuGet packages to the earliest possible version based on the BC version and the dependencies of the apps.
> Currently this setting is not used by containers and is only used by AL-Go workflows to download the required symbols for compilation.

Project example in `./**/.AL-Go/settings.json`:

```json
{
    "buildModes": ["Default", "MinVersion"]
}
```

> [!NOTE]
> `buildModes` is an array and arrays are merged by default in AL-Go. If you want a workflow to use only its own build modes, add `overwriteSettings` for `buildModes`.

## How to configure multi country validation

Apps often need to be tested not just against one localization, but against several. AL-Go provides the [`additionalCountries`](https://aka.ms/algosettings#additionalCountries) property for this purpose. This is **not supported in COSMO Alpaca**. We can also handle this requirement using [`buildModes`](https://aka.ms/algosettings#buildModes) and [`ConditionalSettings`](https://aka.ms/algosettings#conditional-settings):

In the simplest case, we just add another buildMode called `ValidateDe` (the default must also be added so it isn’t lost) and use `ConditionalSettings` to change the country to be used for this mode. This causes the workflow to start a job for validation against `de` in parallel with the build against `w1`.

Project example in `./**/.AL-Go/settings.json`

```json
{
  "country": "w1",
  "buildModes": [
    "Default",
    "ValidateDe"
  ],
  "ConditionalSettings": [
    {
      "buildModes": [
        "ValidateDe"
      ],
      "settings": {
        "country": "de"
      }
    }
  ]
}
```

If you take this example a step further, even more interesting possibilities emerge.
For example, it’s possible to use country validation only for specific workflows (`CI/CD` and `Pull Request Build`, but not `Test Current`, `Test Next Minor` and `Test Next Major`) or, if a purely technical validation is sufficient, to skip the publishing and testing steps. This results in a significant speed boost when validating a country.

Project example in `./**/.AL-Go/settings.json`

```json
{
  "country": "w1",
  "ConditionalSettings": [
    {
      "workflows": [
        "CICD",
        "Pull Request Build"
      ],
      "settings": {
        "buildModes": [
          "Default",
          "ValidateDe",
          "ValidateUs"
        ]
      }
    },
    {
      "buildModes": [
        "ValidateDe"
      ],
      "settings": {
        "country": "de"
      }
    },
    {
      "buildModes": [
        "ValidateUs"
      ],
      "settings": {
        "country": "us",
        "doNotPublishApps": true
      }
    }
  ]
}
```


## Cron configuration example

All of these workflows are scheduled through the workflow-specific setting `workflowSchedule`.

- **Test Current**, **Test Next Minor** and **Test Next Major** use their corresponding `.github/<workflow>.settings.json` files
- **Update AL-Go System Files** uses `.github/Update AL-Go System Files.settings.json`

Example for a test workflow in `.github/Test Next Minor.settings.json`:

```json
{
    "workflowSchedule": {
        "cron": "0 6 * * 1"
    }
}
```

This runs **Test Next Minor** every Monday at `06:00 UTC`.

You can set up schedules for each of these workflows independently using their respective settings files.

Relevant docs:

- [AL-Go `workflowSchedule`](https://aka.ms/algosettings#workflow-specific-settings)
- [Update AL-Go system files](https://github.com/microsoft/AL-Go/blob/main/Scenarios/UpdateAlGoSystemFiles.md)
- [crontab.guru](https://crontab.guru/)

> [!NOTE]
> After changing `workflowSchedule`, you need to run **Update AL-Go System Files** once so the generated workflow files pick up the new schedule.

> [!NOTE]
> AL-Go currently supports `includeBranches` for multi-branch scheduling only for **Update AL-Go System Files**.

## Prerequisites for Update AL-Go System Files

To run or schedule the update workflow successfully, make sure the repository is prepared for it.

Relevant docs:

- [Initialize Repository](initialize-repository.md)
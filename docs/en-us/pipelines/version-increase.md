---
    title: Increase App Version
    description: Increase App Version
---

# Increase App Version

The CI Build templates **auto-increment** the **`AppVersion`** on each run. In detail, the pipeline uses a counter based on a combination of following variables in your current pipeline *(or `<App-Repo>/.devops/variables.version.yaml` (older templates))*:

```yaml
  # Please increase Major / Minor manually, when you plan a new release with significant changes
  - name:  'Version.Major'
    value: '17'
  - name:  'Version.Minor'
    value: '0'
  # auto-increment based on: [major].[minor] (variable 'Build' can overrule auto-increment)
  - name:  'Version.Build'
    value: $[ coalesce(variables['Build'], counter(format('{0}.{1}', variables['Version.Major'], variables['Version.Minor']), 0)) ]
  # by default 0 (auto-increment based on: [major].[minor].[build])
  - name:  'Version.Revision'
    value: $[ counter(format('{0}.{1}.{2}', variables['Version.Major'], variables['Version.Minor'], variables['Version.Build']), 0) ]
  # App-Version: [Major].[Minor].[Build].[Revision]
  - name:  'AppVersion'
    value: $[ format('{0}.{1}.{2}.{3}', variables['Version.Major'], variables['Version.Minor'], variables['Version.Build'], variables['Version.Revision']) ]
```

* Major Version *(fixed version)*
* Minor Version *(fixed version)*
* Build version ***auto incremented* by counter based on "Major.Minor"**
* Patch Version *also auto incremented by counter, but always 0*

To increment the **Major** or **Minor** version modify the variables in `<App-Repo>/.devops/variables.version.yaml`.

## Example Minor Version Increment

Your current version is `17.0.453` (App-Version `17.0.453.0`) and you want to release a **new minor version**. Therefor change the variables in your current pipeline *(or `<App-Repo>/.devops/variables.version.yaml` (older templates))*:

```yaml
  # Please increase Major / Minor manually, when you plan a new release with significant changes
  - name:  'Version.Major'
    value: '17'
  - name:  'Version.Minor'
    value: '1'
```

Changed variable `Version.Minor` will cause the next build to have the Version `17.1.0` (App-Version `17.1.0.0`).

## Example Major Version Increment

Your current version is `17.0.453` (App-Version `17.0.453.0`) and you want to release a **new major version**. Therefor change the variables in your current pipeline *(or `<App-Repo>/.devops/variables.version.yaml` (older templates))*:

```yaml
  # Please increase Major / Minor manually, when you plan a new release with significant changes
  - name:  'Version.Major'
    value: '18'
  - name:  'Version.Minor'
    value: '0'
```

Changed variable `Version.Major` will cause the next build to have the Version `18.0.0` (App-Version `18.0.0.0`).

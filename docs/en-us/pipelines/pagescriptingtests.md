---
    title: Run Page Scripting Tests
    description: Run Page Scripting Tests
---

# Run Page Scripting Tests

# [**GitHub (AL-Go)**](#tab/github)

Running Page Scripting Tests on Alpaca Containers in AL-Go is **not yet** supported.

# [**Azure DevOps**](#tab/azdevops)

[Page Scripting Tests](https://learn.microsoft.com/dynamics365/business-central/dev-itpro/developer/devenv-page-scripting) in Business Central are automated tests that simulate user interactions with pages to validate UI behavior and business logic. They are useful for ensuring that changes to the application do not introduce errors or break existing functionality in the user interface.

To automatically execute Page Scripting Tests during a build process, it is necessary to store them in a folder within the repository. Subfolders are permitted.

To enable test execution for the CI pipeline, simply specify the directory containing all Page Scripting Tests in the `.devops/azure-pipeline.yml` file using the PageScriptingTestsDirectory variable. For example:
```yaml
  - name:     'PageScriptingTestsDirectory' # Directory for Page Scripting Tests e.g. 'pageScriptingTests'
    value:    'pageScriptingTests'
```

If you want the tests to run during validation against the next minor or major version, you must also make this change in `.devops/azure-pipeline-next-minor.yml` and `.devops/azure-pipeline-next-major.yml`.

> [!NOTE]
> If the repository was created before version [2.43.0](..\history-roadmap\changelogs\backend\azure-devops-pipeline-templates.md#v2430-2025-12-09), it is necessary to additionally pass the new variable to the template in the corresponding YAML files by adding `PageScriptingTestsDirectory: ${{ variables['PageScriptingTestsDirectory'] }}` to the template parameters at the end of the file. This is already the case for repositories created after version 2.43.0.

After a successful pipeline run, the results of the Page Scripting Tests (along with classic tests) can be viewed in the "Tests" tab, where you can also track detailed error information.
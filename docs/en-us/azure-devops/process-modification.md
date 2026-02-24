---
    title: Process Modification
    description: Azure DevOps – Process Modification
---

# Azure DevOps – Process Modification

A **Process Modification Object** defines how to customize an **Azure DevOps process**. It allows you to extend or modify one or more **Work Item Types (WITs)** with custom fields, layouts, states, rules, and more.

Customers, who want to create new process-modifications, should create a ConfigMap (see [alpaca-example](#configmap-process-modification-alpaca-example)) named `process-modification` and add the modifications under the `data` section. This ConfigMap should be placed in the customer configuration repository.

### Main Components:

- **procModProcess**: Root object representing the customized process.
- **workItemTypes**: List of WITs (e.g., Bug, User Story) to modify.
- **pages → sections → groups → controls**: Nested layout structure for UI field placement.
- **rules**: Conditional logic (e.g., required fields, autofill values).
- **states**: New or modified workflow states.
- **extensions**: Optional DevOps Marketplace extensions.
- **ChildTasksTemplate**: Optional Template of Child Tasks, that can be overridden during the customization 
- **name / description / owner**: Metadata for identification and ownership.


---

## Root Object

| Field                | Type   | Description                              | Required |
| ----------------     | ------ | ---------------------------------------- | -------- |
| `name`               | string | Unique name of the configuration         | required |
| `description`        | string | Description of the customization purpose | required |
| `owner`              | string | Responsible team or contact mail         | required |
| `procModProcess`     | object | Main definition of the process           | required |
| `ChildTasksTemplate` | object | Child tasks template                     | optional |

#### Example

```json
{
  "procModProcess": {},
  "ChildTasksTemplate": {},
  "description": "Process modifications description",
  "name": "process-sample",
  "owner": "owner@sample.com"
}
```

---

## Process

| Field           | Type   | Description                    | Required |
| --------------- | ------ | ------------------------------ | -------- |
| `name`          | string | Internal name of the process   | required |
| `workItemTypes` | array  | List of Work Item Types (WITs) | required |

#### Example

```json
"procModProcess": {
  "name": "name-of-process",
  "workItemTypes": []
}
```

---

## Work Item Types

| Field       | Type   | Description                                          | Required |
| ----------- | ------ | ---------------------------------------------------- | -------- |
| `name`      | string | Internal name of the work item type (e.g., Bug)      | required |
| `pages`     | array  | Layout definition (tabs, sections, groups, controls) | optional |
| `rules`     | array  | Business rules (rules for fields/behavior)           | optional |
| `cards`     | object | Card layout and color rules                          | optional |
| `templates` | array  | Predefined item templates                            | optional |
| `states`    | array  | Workflow states                                      | optional |

#### Example

```json
[
  {
    "name": "User Story",
    "pages": [],
    "rules": [],
    "cards": {},
    "templates": [],
    "states": []
  }
]
```

---

## Pages

| Field      | Type   | Description         | Required |
| ---------- | ------ | ------------------- | -------- |
| `label`    | string | Display name        | required |
| `sections` | object | Section definitions | required |

#### Example

```json
"pages": [
    {
      "label": "Documentation",
      "sections": []
    }
  ]
```

---

## Sections

| Field    | Type   | Description                  | Required |
| -------- | ------ | ---------------------------- | -------- |
| `name`   | string | Internal name of the control | required |
| `groups` | object | Groups definitions           | required |

#### Example

```json
"sections": [
  {
    "name": "Section1",
    "groups": []
  }
]
```

---

## Groups

| Field      | Type   | Description         | Required |
| ---------- | ------ | ------------------- | -------- |
| `label`    | string | Label of group      | required |
| `controls` | object | Control definitions | required |

#### Example

```json
"groups": [
  {
    "label": "Documentation Group",
    "controls": []
  }
]
```

---

## Controls

| Field              | Type    | Description                                  | Required |
| ------------------ | ------- | -------------------------------------------- | -------- |
| `name`             | string  | Internal name of the control                 | optional |
| `id`               | string  | Unique control ID                            | optional |
| `label`            | string  | Display name                                 | optional |
| `description`      | string  | Tooltip text                                 | optional |
| `type`             | string  | Field type (e.g., Text_SingleLine, Picklist) | optional |
| `itemsForPicklist` | array   | List of values for dropdowns                 | optional |
| `hideFromLayout`   | boolean | Hides the control in the UI if true          | optional |
| `required`         | boolean | Marks the field as required                  | optional |
| `order`            | integer | Order within the group                       | optional |
| `defaultValue`     | string  | Default value                                | optional |

#### Example

```json

"controls": [
    {
    "order": 0,
    "type": 1,
    "label": "Documentation Title",
    "name": "Documentation Title",
  },
  {
    "type": 1,
    "order": 1,
    "label": "Documentation Status",
    "name": "Documentation Status",
    "itemsForPicklist": [
        "Not necessary",
        "Awaiting feedback",
        "Done"
    ]
  }
]

```

---

## Rules

| Field        | Type    | Description                      | Required |
| ------------ | ------- | -------------------------------- | -------- |
| `name`       | string  | Internal name of the rule        | required |
| `actions`    | array   | List of actions to perform       | required |
| `conditions` | array   | Conditions that trigger the rule | required |
| `isDisabled` | boolean | Rule is disabled if true         | optional |
| `label`      | string  | Display name                     | optional |

#### Example

```json
"rules": [
  {
    "name": "Require Documentation Status on Close",
    "isDisabled": false,
    "actions": [],
    "conditions": []
  }
]
```

---

### Actions

| Field         | Type   | Description                                                                                                                                                                                    | Required |
| ------------- | ------ | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------- |
| `actionType`  | string | Type of action to take when the rule is triggered. [MS Types](https://learn.microsoft.com/en-us/rest/api/azure/devops/processes/rules/add?view=azure-devops-rest-7.1&tabs=HTTP#ruleactiontype) | required |
| `targetField` | string | Field on which the action should be taken.                                                                                                                                                     | required |
| `value`       | string | Value to apply on target field, once the action is taken.                                                                                                                                      | required |

#### Example

```json
"actions": [
  {
    "actionType": "makeRequired",
    "targetField": "Custom.DocumentationStatus",
    "value": ""
  }
]
```

---

## Conditions

| Field           | Type   | Description                                                                                                                                                       | Required |
| --------------- | ------ | ----------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------- |
| `conditionType` | string | Type of condition. [MS Types](https://learn.microsoft.com/en-us/rest/api/azure/devops/processes/rules/add?view=azure-devops-rest-7.1&tabs=HTTP#ruleconditiontype) | required |
| `field`         | string | Field that defines condition.                                                                                                                                     | required |
| `value`         | string | Value of field to define the condition for rule.                                                                                                                  | required |

#### Example

```json
"cards": {
  [
    {
    "conditionType": "when",
    "field": "System.State",
    "value": "Closed"
    }
  ]
}
```

---

## Cards

| Field       | Type  | Description                                  | Required |
| ----------- | ----- | -------------------------------------------- | -------- |
| `fields`    | array | List of fields displayed on the board card   | required |
| `cardRules` | array | Visual customization depending on conditions | optional |

#### Example

```json
"cards": {
  "fields": [
    "Microsoft.VSTS.Scheduling.OriginalEstimate",
    "Custom.DocumentationStatus"
  ],
  "cardRules": [
    {
      "filter": "[System.Tags] CONTAINS 'Blocked'",
      "name": "Highlight blocked",
      "isEnabled": "true",
      "settings": {
        "background-color": "#de5e5e",
        "title-color": "#000000",
        "title-font-weight": "bold"
      }
    }
  ]
}
```

---

## Templates

| Field         | Type   | Description                                                                        | Required |
| ------------- | ------ | ---------------------------------------------------------------------------------- | -------- |
| `name`        | string | Name of the template                                                               | required |
| `description` | string | Purpose of the template                                                            | required |
| `fields`      | object | Default values for the fields, with a rich-text (HTML) description of the workflow | required |

#### Example

```json
{
  "name": "Example Workflow",
  "description": "Simple workflow example",
  "fields": {
    "System.Title": "Workflow: Customer Notification",
    "System.Description": "<div><b>Solution:</b> CRM Notification System<br><b>Entity:</b> Contact<br><b>Run:</b> synchronous<br><b>Scope:</b> Organization<br><b>Trigger:</b> Create<br><b>Logic:</b> Send welcome email to new contact</div>"
  }
}
```

---

## States of the WIT

| Field           | Type    | Description                                | Required |
| --------------- | ------- | ------------------------------------------ | -------- |
| `name`          | string  | Display name of the state                  | required |
| `color`         | string  | State color (hex)                          | optional |
| `stateCategory` | string  | Category (Proposed, InProgress, Completed) | required |
| `order`         | integer | Order in the workflow                      | optional |

#### Example

```json
"states": [
  {
    "name": "Blocked",
    "stateCategory": "Proposed",
    "color": "db552c",
    "order": 2
  },
  {
    "name": "Ready",
    "stateCategory": "Proposed",
    "color": "cccccc",
    "order": 3
  }
]
```

---

## BoardColumns

| Field           | Type    | Description                                | Required |
| --------------- | ------- | ------------------------------------------ | -------- |
| `name`          | string  | Name of the column                         | required |
| `order`         | integer | Position of the column                     | required |
| `updateColumn`  | string  | Update an existing column                  | optional |
| `itemLimit`     | integer | WIP limit                                  | optional |
| `isSplit`       | boolean | Split column into Doing/Done               | optional |
| `stateMappings` | object  | Mapping of work item states to this column | optional |
| `columnType`    | string  | Column behavior                            | optional |

#### Example

```json
"boardColumns": [
  {
    "name": "Evaluation",
    "order": 1,
    "description": "",
    "columnType": "inProgress",
    "isSplit": false,
    "itemLimit": 0,
    "stateMappings": {
      "Bug": "Active",
      "User Story": "Evaluation"
    }
  }
]
```

---

## Extensions

| Field         | Type   | Description                   | Required |
| ------------- | ------ | ----------------------------- | -------- |
| `publisherId` | string | Publisher ID of the extension | required |
| `extensionId` | string | ID of the extension           | required |

#### Example

```json
"extensions": [
  {
    "publisherId": "publisherId",
    "extensionId": "extensionId"
  }
]
```

---

## BoardSwimlanes

| Field            | Type  | Description                   | Required |
| ---------------- | ----- | ----------------------------- | -------- |
| `boardSwimlanes` | array | List of custom swimlane names | optional |

#### Example

```json
"boardSwimlanes": [
  "Waiting"
]
```

## ChildTasksTemplate

### ChildTasksTemplate

| Field      | Type             | Description                                 | Required |
| ---------- | ---------------- | ------------------------------------------- | -------- |
| `Version`  | integer          | Version of the template format              | required |
| `Templates`| array of object  | List of task templates                      | required |

#### Templates

| Field   | Type             | Description                | Required |
| ------- | ---------------- | ---------------------------| -------- |
| `Name`  | string           | Name of the template       | required |
| `Tasks` | array of object  | List of child tasks        | required |

#### Tasks

| Field   | Type             | Description                | Required |
| ------- | ---------------- | ---------------------------| -------- |
| `Name`  | string           | Name of the child task     | required |
| `Fields`| array of object  | Fields for the child task  | required |

#### Field

| Field   | Type    | Description           | Required |
| ------- | ------- | ----------------------| -------- |
| `Name`  | string  | Field name            | required |
| `Value` | string  | Field value           | required |

#### Example

```json
"ChildTasksTemplate": {
  "Version": 1,
  "Templates": [
    {
      "Name": "Default Tasks",
      "Tasks": [
        {
          "Name": "Review Documentation",
          "Fields": [
            { "Name": "System.Title", "Value": "Review Documentation" },
            { "Name": "System.Description", "Value": "Ensure documentation is up to date." }
          ]
        },
        {
          "Name": "Update Wiki",
          "Fields": [
            { "Name": "System.Title", "Value": "Update Wiki" },
            { "Name": "System.Description", "Value": "Update the project wiki with latest changes." }
          ]
        }
      ]
    }
  ]
}
```



---

## ConfigMap Process-modification "alpaca-example"

This example shows a minimal yet functional process modification:

- Adds new fields: **"Documentation Title"** and **"Documentation Status"**.
- Requires "Documentation Status" when the state is `Closed`.
- Introduces two new states: `Blocked` and `Ready`.

#### Example ConfigMap

```yaml
apiVersion: v1
kind: ConfigMap
metadata:
  name: process-modifications
data:
  process-modifications: |-
    {
    "description": "(Alpaca example) Adds documentation fields, a mandatory rule, and new states",
    "name": "alpaca-example-customization",
    "owner": "alpaca@example.com"
        "procModProcess": {
        "name": "ExampleProcess",
        "workItemTypes": [
            {
            "name": "User Story",
            "pages": [
                {
                "label": "Documentation",
                "sections": [
                    {
                    "name": "Section1",
                    "groups": [
                        {
                        "label": "Documentation Group",
                        "controls": [
                            {
                            "order": 0,
                            "type": 1,
                            "label": "Documentation Title",
                            "name": "Documentation Title"
                            },
                            {
                            "type": 1,
                            "order": 1,
                            "label": "Documentation Status",
                            "name": "Documentation Status",
                            "itemsForPicklist": [
                                "Not necessary",
                                "Awaiting feedback",
                                "Done"
                            ]
                            }
                        ]
                        }
                    ]
                    }
                ]
                }
            ],
            "rules": [
                {
                "name": "Require Documentation Status on Close",
                "isDisabled": false,
                "conditions": [
                    {
                    "conditionType": "when",
                    "field": "System.State",
                    "value": "Closed"
                    }
                ],
                "actions": [
                    {
                    "actionType": "makeRequired",
                    "targetField": "Custom.DocumentationStatus",
                    "value": ""
                    }
                ]
                }
            ],
            "states": [
                {
                "name": "Blocked",
                "stateCategory": "Proposed",
                "color": "db552c",
                "order": 2
                },
                {
                "name": "Ready",
                "stateCategory": "Proposed",
                "color": "cccccc",
                "order": 3
                }
            ]
            }
        ]
        },
    }
```

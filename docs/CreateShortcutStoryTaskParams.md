

# CreateShortcutStoryTaskParams


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**taskType** | [**TaskTypeEnum**](#TaskTypeEnum) |  |  [optional] |
|**title** | **String** | The incident title |  |
|**kind** | [**KindEnum**](#KindEnum) |  |  |
|**description** | **String** | The incident description |  [optional] |
|**labels** | **String** | The story labels |  [optional] |
|**dueDate** | **String** | The due date |  [optional] |
|**archivation** | [**Object**](Object.md) | The archivation id and display name |  |
|**group** | [**Object**](Object.md) | The group id and display name |  [optional] |
|**project** | [**Object**](Object.md) | The project id and display name |  [optional] |
|**workflowState** | [**Object**](Object.md) | The workflow state id workflow state name |  [optional] |



## Enum: TaskTypeEnum

| Name | Value |
|---- | -----|
| CREATE_SHORTCUT_STORY | &quot;create_shortcut_story&quot; |



## Enum: KindEnum

| Name | Value |
|---- | -----|
| BUG | &quot;bug&quot; |
| CHORE | &quot;chore&quot; |
| FEATURE | &quot;feature&quot; |




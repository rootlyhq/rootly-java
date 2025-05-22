

# CreateClickupTaskTaskParams


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**taskType** | [**TaskTypeEnum**](#TaskTypeEnum) |  |  [optional] |
|**title** | **String** | The task title |  |
|**description** | **String** | The task description |  [optional] |
|**tags** | **String** | The task tags |  [optional] |
|**priority** | [**CreateJiraIssueTaskParamsPriority**](CreateJiraIssueTaskParamsPriority.md) |  |  [optional] |
|**dueDate** | **String** | The due date |  [optional] |
|**customFieldsMapping** | **String** | Custom field mappings. Can contain liquid markup and need to be valid JSON |  [optional] |
|**taskPayload** | **String** | Additional ClickUp task attributes. Will be merged into whatever was specified in this tasks current parameters. Can contain liquid markup and need to be valid JSON |  [optional] |



## Enum: TaskTypeEnum

| Name | Value |
|---- | -----|
| CREATE_CLICKUP_TASK | &quot;create_clickup_task&quot; |






# UpdateAsanaTaskTaskParams


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**taskType** | [**TaskTypeEnum**](#TaskTypeEnum) |  |  [optional] |
|**taskId** | **String** | The task id |  |
|**title** | **String** | The task title |  [optional] |
|**notes** | **String** |  |  [optional] |
|**assignUserEmail** | **String** | The assigned user&#39;s email |  [optional] |
|**completion** | [**AddActionItemTaskParamsPostToSlackChannelsInner**](AddActionItemTaskParamsPostToSlackChannelsInner.md) |  |  |
|**dueDate** | **String** | The due date |  [optional] |
|**customFieldsMapping** | **String** | Custom field mappings. Can contain liquid markup and need to be valid JSON |  [optional] |
|**dependencyDirection** | [**DependencyDirectionEnum**](#DependencyDirectionEnum) |  |  [optional] |
|**dependentTaskIds** | **List&lt;String&gt;** | Dependent task ids. Supports liquid syntax |  [optional] |



## Enum: TaskTypeEnum

| Name | Value |
|---- | -----|
| UPDATE_ASANA_TASK | &quot;update_asana_task&quot; |



## Enum: DependencyDirectionEnum

| Name | Value |
|---- | -----|
| BLOCKING | &quot;blocking&quot; |
| BLOCKED_BY | &quot;blocked_by&quot; |




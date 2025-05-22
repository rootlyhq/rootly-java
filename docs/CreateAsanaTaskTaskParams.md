

# CreateAsanaTaskTaskParams


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**taskType** | [**TaskTypeEnum**](#TaskTypeEnum) |  |  [optional] |
|**workspace** | [**AddActionItemTaskParamsPostToSlackChannelsInner**](AddActionItemTaskParamsPostToSlackChannelsInner.md) |  |  |
|**projects** | [**List&lt;AddActionItemTaskParamsPostToSlackChannelsInner&gt;**](AddActionItemTaskParamsPostToSlackChannelsInner.md) |  |  |
|**title** | **String** | The task title |  |
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
| CREATE_ASANA_TASK | &quot;create_asana_task&quot; |



## Enum: DependencyDirectionEnum

| Name | Value |
|---- | -----|
| BLOCKING | &quot;blocking&quot; |
| BLOCKED_BY | &quot;blocked_by&quot; |




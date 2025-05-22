

# CreateMotionTaskTaskParams


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**taskType** | [**TaskTypeEnum**](#TaskTypeEnum) |  |  [optional] |
|**workspace** | [**AddActionItemTaskParamsPostToSlackChannelsInner**](AddActionItemTaskParamsPostToSlackChannelsInner.md) |  |  |
|**project** | [**AddActionItemTaskParamsPostToSlackChannelsInner**](AddActionItemTaskParamsPostToSlackChannelsInner.md) |  |  [optional] |
|**status** | [**AddActionItemTaskParamsPostToSlackChannelsInner**](AddActionItemTaskParamsPostToSlackChannelsInner.md) |  |  [optional] |
|**title** | **String** | The task title |  |
|**description** | **String** | The task description |  [optional] |
|**labels** | **List&lt;String&gt;** |  |  [optional] |
|**priority** | [**CreateJiraIssueTaskParamsPriority**](CreateJiraIssueTaskParamsPriority.md) |  |  [optional] |
|**duration** | **String** | The duration. Eg.  \&quot;NONE\&quot;, \&quot;REMINDER\&quot;, or a integer greater than 0. |  [optional] |
|**dueDate** | **String** | The due date |  [optional] |



## Enum: TaskTypeEnum

| Name | Value |
|---- | -----|
| CREATE_MOTION_TASK | &quot;create_motion_task&quot; |




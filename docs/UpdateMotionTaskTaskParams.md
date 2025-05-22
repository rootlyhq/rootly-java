

# UpdateMotionTaskTaskParams


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**taskType** | [**TaskTypeEnum**](#TaskTypeEnum) |  |  [optional] |
|**taskId** | **String** | The task id |  |
|**title** | **String** | The task title |  [optional] |
|**description** | **String** | The task description |  [optional] |
|**labels** | **List&lt;String&gt;** |  |  [optional] |
|**priority** | [**CreateJiraIssueTaskParamsPriority**](CreateJiraIssueTaskParamsPriority.md) |  |  [optional] |
|**duration** | **String** | The duration. Eg.  \&quot;NONE\&quot;, \&quot;REMINDER\&quot;, or a integer greater than 0. |  [optional] |
|**dueDate** | **String** | The due date |  [optional] |



## Enum: TaskTypeEnum

| Name | Value |
|---- | -----|
| UPDATE_MOTION_TASK | &quot;update_motion_task&quot; |




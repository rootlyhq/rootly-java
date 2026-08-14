

# CreateLinearSubtaskIssueTaskParams


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**taskType** | [**TaskTypeEnum**](#TaskTypeEnum) |  |  [optional] |
|**parentIssueId** | **String** | The parent issue |  |
|**title** | **String** | The issue title |  |
|**description** | **String** | The issue description |  [optional] |
|**state** | [**CreateLinearIssueTaskParamsState**](CreateLinearIssueTaskParamsState.md) |  |  |
|**priority** | [**CreateJiraIssueTaskParamsPriority**](CreateJiraIssueTaskParamsPriority.md) |  |  [optional] |
|**labels** | [**List&lt;AddActionItemTaskParamsPostToSlackChannelsInner&gt;**](AddActionItemTaskParamsPostToSlackChannelsInner.md) |  |  [optional] |
|**assignUserEmail** | **String** | The assigned user&#39;s email |  [optional] |
|**customFieldsMapping** | **String** | Custom field mappings. Can contain liquid markup and need to be valid JSON |  [optional] |



## Enum: TaskTypeEnum

| Name | Value |
|---- | -----|
| CREATE_LINEAR_SUBTASK_ISSUE | &quot;create_linear_subtask_issue&quot; |




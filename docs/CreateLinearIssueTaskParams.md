

# CreateLinearIssueTaskParams


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**taskType** | [**TaskTypeEnum**](#TaskTypeEnum) |  |  [optional] |
|**title** | **String** | The issue title |  |
|**description** | **String** | The issue description |  [optional] |
|**team** | [**CreateLinearIssueTaskParamsTeam**](CreateLinearIssueTaskParamsTeam.md) |  |  |
|**state** | [**CreateLinearIssueTaskParamsState**](CreateLinearIssueTaskParamsState.md) |  |  |
|**project** | [**CreateLinearIssueTaskParamsProject**](CreateLinearIssueTaskParamsProject.md) |  |  [optional] |
|**labels** | [**List&lt;AddActionItemTaskParamsPostToSlackChannelsInner&gt;**](AddActionItemTaskParamsPostToSlackChannelsInner.md) |  |  [optional] |
|**priority** | [**CreateJiraIssueTaskParamsPriority**](CreateJiraIssueTaskParamsPriority.md) |  |  [optional] |
|**assignUserEmail** | **String** | The assigned user&#39;s email |  [optional] |



## Enum: TaskTypeEnum

| Name | Value |
|---- | -----|
| CREATE_LINEAR_ISSUE | &quot;create_linear_issue&quot; |




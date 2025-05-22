

# UpdateLinearIssueTaskParams


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**taskType** | [**TaskTypeEnum**](#TaskTypeEnum) |  |  [optional] |
|**issueId** | **String** | The issue id |  |
|**title** | **String** | The issue title |  [optional] |
|**description** | **String** | The issue description |  [optional] |
|**state** | [**CreateLinearIssueTaskParamsState**](CreateLinearIssueTaskParamsState.md) |  |  [optional] |
|**project** | [**CreateLinearIssueTaskParamsProject**](CreateLinearIssueTaskParamsProject.md) |  |  [optional] |
|**labels** | [**List&lt;AddActionItemTaskParamsPostToSlackChannelsInner&gt;**](AddActionItemTaskParamsPostToSlackChannelsInner.md) |  |  [optional] |
|**priority** | [**CreateJiraIssueTaskParamsPriority**](CreateJiraIssueTaskParamsPriority.md) |  |  [optional] |
|**assignUserEmail** | **String** | The assigned user&#39;s email |  [optional] |



## Enum: TaskTypeEnum

| Name | Value |
|---- | -----|
| UPDATE_LINEAR_ISSUE | &quot;update_linear_issue&quot; |




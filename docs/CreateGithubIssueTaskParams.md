

# CreateGithubIssueTaskParams


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**taskType** | [**TaskTypeEnum**](#TaskTypeEnum) |  |  [optional] |
|**title** | **String** | The issue title |  |
|**body** | **String** | The issue body |  [optional] |
|**repository** | [**AddActionItemTaskParamsPostToSlackChannelsInner**](AddActionItemTaskParamsPostToSlackChannelsInner.md) |  |  |
|**labels** | [**List&lt;AddActionItemTaskParamsPostToSlackChannelsInner&gt;**](AddActionItemTaskParamsPostToSlackChannelsInner.md) | The issue labels |  [optional] |
|**issueType** | [**CreateGithubIssueTaskParamsIssueType**](CreateGithubIssueTaskParamsIssueType.md) |  |  [optional] |
|**parentIssueNumber** | **String** | The parent issue number for sub-issue linking |  [optional] |



## Enum: TaskTypeEnum

| Name | Value |
|---- | -----|
| CREATE_GITHUB_ISSUE | &quot;create_github_issue&quot; |




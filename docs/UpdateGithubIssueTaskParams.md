

# UpdateGithubIssueTaskParams


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**taskType** | [**TaskTypeEnum**](#TaskTypeEnum) |  |  [optional] |
|**issueId** | **String** | The issue id |  |
|**repository** | [**UpdateGithubIssueTaskParamsRepository**](UpdateGithubIssueTaskParamsRepository.md) |  |  [optional] |
|**title** | **String** | The issue title |  [optional] |
|**body** | **String** | The issue body |  [optional] |
|**labels** | [**List&lt;AddActionItemTaskParamsPostToSlackChannelsInner&gt;**](AddActionItemTaskParamsPostToSlackChannelsInner.md) | The issue labels |  [optional] |
|**labelsMode** | [**LabelsModeEnum**](#LabelsModeEnum) | How to apply labels. &#39;replace&#39; (default) overwrites all existing labels. &#39;append&#39; adds to existing labels without removing them. |  [optional] |
|**issueType** | [**CreateGithubIssueTaskParamsIssueType**](CreateGithubIssueTaskParamsIssueType.md) |  |  [optional] |
|**completion** | [**AddActionItemTaskParamsPostToSlackChannelsInner**](AddActionItemTaskParamsPostToSlackChannelsInner.md) |  |  |



## Enum: TaskTypeEnum

| Name | Value |
|---- | -----|
| UPDATE_GITHUB_ISSUE | &quot;update_github_issue&quot; |



## Enum: LabelsModeEnum

| Name | Value |
|---- | -----|
| REPLACE | &quot;replace&quot; |
| APPEND | &quot;append&quot; |




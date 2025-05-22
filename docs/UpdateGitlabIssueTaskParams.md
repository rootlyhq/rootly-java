

# UpdateGitlabIssueTaskParams


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**taskType** | [**TaskTypeEnum**](#TaskTypeEnum) |  |  [optional] |
|**issueId** | **String** | The issue id |  |
|**issueType** | [**IssueTypeEnum**](#IssueTypeEnum) | The issue type |  [optional] |
|**title** | **String** | The issue title |  [optional] |
|**description** | **String** | The issue description |  [optional] |
|**labels** | **String** | The issue labels |  [optional] |
|**dueDate** | **String** | The due date |  [optional] |
|**completion** | [**AddActionItemTaskParamsPostToSlackChannelsInner**](AddActionItemTaskParamsPostToSlackChannelsInner.md) |  |  |



## Enum: TaskTypeEnum

| Name | Value |
|---- | -----|
| UPDATE_GITLAB_ISSUE | &quot;update_gitlab_issue&quot; |



## Enum: IssueTypeEnum

| Name | Value |
|---- | -----|
| ISSUE | &quot;issue&quot; |
| INCIDENT | &quot;incident&quot; |
| TEST_CASE | &quot;test_case&quot; |
| TASK | &quot;task&quot; |






# CreateGitlabIssueTaskParams


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**taskType** | [**TaskTypeEnum**](#TaskTypeEnum) |  |  [optional] |
|**issueType** | [**IssueTypeEnum**](#IssueTypeEnum) | The issue type |  [optional] |
|**title** | **String** | The issue title |  |
|**description** | **String** | The issue description |  [optional] |
|**repository** | [**AddActionItemTaskParamsPostToSlackChannelsInner**](AddActionItemTaskParamsPostToSlackChannelsInner.md) |  |  |
|**labels** | **String** | The issue labels |  [optional] |
|**dueDate** | **String** | The due date |  [optional] |



## Enum: TaskTypeEnum

| Name | Value |
|---- | -----|
| CREATE_GITLAB_ISSUE | &quot;create_gitlab_issue&quot; |



## Enum: IssueTypeEnum

| Name | Value |
|---- | -----|
| ISSUE | &quot;issue&quot; |
| INCIDENT | &quot;incident&quot; |
| TEST_CASE | &quot;test_case&quot; |
| TASK | &quot;task&quot; |






# UpdateJiraIssueTaskParams


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**taskType** | [**TaskTypeEnum**](#TaskTypeEnum) |  |  [optional] |
|**issueId** | **String** | The issue id |  |
|**title** | **String** | The issue title |  [optional] |
|**description** | **String** | The issue description |  [optional] |
|**labels** | **String** | The issue labels |  [optional] |
|**assignUserEmail** | **String** | The assigned user&#39;s email |  [optional] |
|**reporterUserEmail** | **String** | The reporter user&#39;s email |  [optional] |
|**projectKey** | **String** | The project key |  |
|**dueDate** | **String** | The due date |  [optional] |
|**priority** | [**CreateJiraIssueTaskParamsPriority**](CreateJiraIssueTaskParamsPriority.md) |  |  [optional] |
|**status** | [**CreateJiraIssueTaskParamsStatus**](CreateJiraIssueTaskParamsStatus.md) |  |  [optional] |
|**customFieldsMapping** | **String** | Custom field mappings. Can contain liquid markup and need to be valid JSON |  [optional] |
|**updatePayload** | **String** | Update payload. Can contain liquid markup and need to be valid JSON |  [optional] |



## Enum: TaskTypeEnum

| Name | Value |
|---- | -----|
| UPDATE_JIRA_ISSUE | &quot;update_jira_issue&quot; |




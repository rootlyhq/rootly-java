

# CreateJiraIssueTaskParams


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**taskType** | [**TaskTypeEnum**](#TaskTypeEnum) |  |  [optional] |
|**integration** | [**CreateJiraIssueTaskParamsIntegration**](CreateJiraIssueTaskParamsIntegration.md) |  |  [optional] |
|**title** | **String** | The issue title |  |
|**description** | **String** | The issue description |  [optional] |
|**labels** | **String** | The issue labels |  [optional] |
|**assignUserEmail** | **String** | The assigned user&#39;s email |  [optional] |
|**reporterUserEmail** | **String** | The reporter user&#39;s email |  [optional] |
|**projectKey** | **String** | The project key |  |
|**dueDate** | **String** | The due date |  [optional] |
|**issueType** | [**CreateJiraIssueTaskParamsIssueType**](CreateJiraIssueTaskParamsIssueType.md) |  |  |
|**priority** | [**CreateJiraIssueTaskParamsPriority**](CreateJiraIssueTaskParamsPriority.md) |  |  [optional] |
|**status** | [**CreateJiraIssueTaskParamsStatus**](CreateJiraIssueTaskParamsStatus.md) |  |  [optional] |
|**customFieldsMapping** | **String** | Custom field mappings. Can contain liquid markup and need to be valid JSON |  [optional] |
|**updatePayload** | **String** | Update payload. Can contain liquid markup and need to be valid JSON |  [optional] |



## Enum: TaskTypeEnum

| Name | Value |
|---- | -----|
| CREATE_JIRA_ISSUE | &quot;create_jira_issue&quot; |




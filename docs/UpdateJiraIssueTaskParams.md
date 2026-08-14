

# UpdateJiraIssueTaskParams


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**taskType** | [**TaskTypeEnum**](#TaskTypeEnum) |  |  [optional] |
|**integration** | [**CreateJiraIssueTaskParamsIntegration**](CreateJiraIssueTaskParamsIntegration.md) |  |  [optional] |
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
|**retryCount** | **Integer** | Number of times to retry on rate-limit (HTTP 429) responses (0-4). 0 disables retry. |  [optional] |
|**retryWaitTime** | **Integer** | Seconds to wait before each retry (1-15). Retry-After header is honored when present and &lt;&#x3D; 90s, taking the larger of retry_wait_time and the header value. |  [optional] |



## Enum: TaskTypeEnum

| Name | Value |
|---- | -----|
| UPDATE_JIRA_ISSUE | &quot;update_jira_issue&quot; |




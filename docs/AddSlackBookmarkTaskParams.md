

# AddSlackBookmarkTaskParams


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**taskType** | [**TaskTypeEnum**](#TaskTypeEnum) |  |  [optional] |
|**playbookId** | **String** | The playbook id if bookmark is of an incident playbook |  [optional] |
|**channel** | [**Object**](Object.md) |  |  |
|**title** | **String** | The bookmark title. Required if not a playbook bookmark |  [optional] |
|**link** | **String** | The bookmark link. Required if not a playbook bookmark |  [optional] |
|**emoji** | **String** | The bookmark emoji |  [optional] |
|**retryCount** | **Integer** | Number of times to retry on rate-limit (HTTP 429) responses (0-4). 0 disables retry. |  [optional] |
|**retryWaitTime** | **Integer** | Seconds to wait before each retry (1-15). Retry-After header is honored when present and &lt;&#x3D; 90s, taking the larger of retry_wait_time and the header value. |  [optional] |



## Enum: TaskTypeEnum

| Name | Value |
|---- | -----|
| ADD_SLACK_BOOKMARK | &quot;add_slack_bookmark&quot; |






# RenameSlackChannelTaskParams


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**taskType** | [**TaskTypeEnum**](#TaskTypeEnum) |  |  [optional] |
|**channel** | [**AddActionItemTaskParamsPostToSlackChannelsInner**](AddActionItemTaskParamsPostToSlackChannelsInner.md) |  |  |
|**title** | **String** |  |  |
|**retryCount** | **Integer** | Number of times to retry on rate-limit (HTTP 429) responses (0-4). 0 disables retry. |  [optional] |
|**retryWaitTime** | **Integer** | Seconds to wait before each retry (1-15). Retry-After header is honored when present and &lt;&#x3D; 90s, taking the larger of retry_wait_time and the header value. |  [optional] |



## Enum: TaskTypeEnum

| Name | Value |
|---- | -----|
| RENAME_SLACK_CHANNEL | &quot;rename_slack_channel&quot; |




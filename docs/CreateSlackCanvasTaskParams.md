

# CreateSlackCanvasTaskParams

Create a canvas in a Slack channel, preserving an existing canvas. The connected Slack app must have Canvas permissions.

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**taskType** | [**TaskTypeEnum**](#TaskTypeEnum) |  |  [optional] |
|**channel** | [**CreateSlackCanvasTaskParamsChannel**](CreateSlackCanvasTaskParamsChannel.md) |  |  |
|**title** | **String** | The canvas title. Supports Liquid variables. |  |
|**content** | **String** | The initial canvas content in Markdown. Supports Liquid variables. An existing channel canvas is preserved. |  |
|**retryCount** | **Integer** | Number of times to retry on rate-limit (HTTP 429) responses (0-4). 0 disables retry. |  [optional] |
|**retryWaitTime** | **Integer** | Seconds to wait before each retry (1-15). Retry-After header is honored when present and &lt;&#x3D; 90s, taking the larger of retry_wait_time and the header value. |  [optional] |



## Enum: TaskTypeEnum

| Name | Value |
|---- | -----|
| CREATE_SLACK_CANVAS | &quot;create_slack_canvas&quot; |




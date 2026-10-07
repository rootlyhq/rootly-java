

# UpdateSlackCanvasTaskParams

Update the selected channel canvas using Markdown. The connected Slack app must have Canvas permissions.

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**taskType** | [**TaskTypeEnum**](#TaskTypeEnum) |  |  [optional] |
|**channel** | [**CreateSlackCanvasTaskParamsChannel**](CreateSlackCanvasTaskParamsChannel.md) |  |  |
|**content** | **String** | The canvas content in Markdown. Supports Liquid variables. |  |
|**operation** | [**OperationEnum**](#OperationEnum) | Append content or replace the selected table or entire canvas. |  [optional] |
|**sectionName** | **String** | With replace, target the single table containing this label. Include the label in the replacement table. Blank replaces the entire canvas. Supports Liquid. |  [optional] |
|**retryCount** | **Integer** | Number of times to retry on rate-limit (HTTP 429) responses (0-4). 0 disables retry. |  [optional] |
|**retryWaitTime** | **Integer** | Seconds to wait before each retry (1-15). Retry-After header is honored when present and &lt;&#x3D; 90s, taking the larger of retry_wait_time and the header value. |  [optional] |



## Enum: TaskTypeEnum

| Name | Value |
|---- | -----|
| UPDATE_SLACK_CANVAS | &quot;update_slack_canvas&quot; |



## Enum: OperationEnum

| Name | Value |
|---- | -----|
| INSERT_AT_END | &quot;insert_at_end&quot; |
| REPLACE | &quot;replace&quot; |




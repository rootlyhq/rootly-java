

# SendSlackBlocksTaskParams


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**taskType** | [**TaskTypeEnum**](#TaskTypeEnum) |  |  [optional] |
|**message** | **String** |  |  [optional] |
|**blocks** | **String** | Support liquid markup. Needs to be a valid JSON string after liquid is parsed |  |
|**attachments** | **String** | Support liquid markup. Needs to be a valid JSON string after liquid is parsed |  [optional] |
|**channels** | [**List&lt;Object&gt;**](Object.md) |  |  [optional] |
|**slackUsers** | [**List&lt;Object&gt;**](Object.md) |  |  [optional] |
|**slackUserGroups** | [**List&lt;Object&gt;**](Object.md) |  |  [optional] |
|**broadcastThreadReplyToChannel** | **Boolean** |  |  [optional] |
|**sendAsEphemeral** | **Boolean** |  |  [optional] |
|**pinToChannel** | **Boolean** |  |  [optional] |
|**threadTs** | **String** | The thread to send the message into |  [optional] |
|**updateParentMessage** | **Boolean** |  |  [optional] |
|**parentMessageThreadTask** | [**Object**](Object.md) | A hash where [id] is the task id of the parent task that sent a message, and [name] is the name of the parent task |  [optional] |
|**sendOnlyAsThreadedMessage** | **Boolean** | When set to true, if the parent for this threaded message cannot be found the message will be skipped. |  [optional] |
|**allowCrossWorkflowThreading** | **Boolean** | When set to true, allows workflows from different sources (e.g. different incidents or alerts) to thread together on the same parent message. |  [optional] |
|**retryCount** | **Integer** | Number of times to retry on rate-limit (HTTP 429) responses (0-4). 0 disables retry. |  [optional] |
|**retryWaitTime** | **Integer** | Seconds to wait before each retry (1-15). Retry-After header is honored when present and &lt;&#x3D; 90s, taking the larger of retry_wait_time and the header value. |  [optional] |



## Enum: TaskTypeEnum

| Name | Value |
|---- | -----|
| SEND_SLACK_BLOCKS | &quot;send_slack_blocks&quot; |




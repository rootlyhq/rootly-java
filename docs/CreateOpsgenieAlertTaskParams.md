

# CreateOpsgenieAlertTaskParams


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**taskType** | [**TaskTypeEnum**](#TaskTypeEnum) |  |  [optional] |
|**message** | **String** | Message of the alert |  |
|**description** | **String** | Description field of the alert that is generally used to provide a detailed information about the alert |  [optional] |
|**teams** | [**List&lt;AddActionItemTaskParamsPostToSlackChannelsInner&gt;**](AddActionItemTaskParamsPostToSlackChannelsInner.md) |  |  [optional] |
|**users** | [**List&lt;AddActionItemTaskParamsPostToSlackChannelsInner&gt;**](AddActionItemTaskParamsPostToSlackChannelsInner.md) |  |  [optional] |
|**schedules** | [**List&lt;AddActionItemTaskParamsPostToSlackChannelsInner&gt;**](AddActionItemTaskParamsPostToSlackChannelsInner.md) |  |  [optional] |
|**escalations** | [**List&lt;AddActionItemTaskParamsPostToSlackChannelsInner&gt;**](AddActionItemTaskParamsPostToSlackChannelsInner.md) |  |  [optional] |
|**priority** | [**PriorityEnum**](#PriorityEnum) |  |  [optional] |
|**details** | **String** | Details payload. Can contain liquid markup and need to be valid JSON |  [optional] |



## Enum: TaskTypeEnum

| Name | Value |
|---- | -----|
| CREATE_OPSGENIE_ALERT | &quot;create_opsgenie_alert&quot; |



## Enum: PriorityEnum

| Name | Value |
|---- | -----|
| P1 | &quot;P1&quot; |
| P2 | &quot;P2&quot; |
| P3 | &quot;P3&quot; |
| P4 | &quot;P4&quot; |
| P5 | &quot;P5&quot; |
| AUTO | &quot;auto&quot; |




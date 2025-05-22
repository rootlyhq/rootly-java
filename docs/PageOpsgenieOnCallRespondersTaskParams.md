

# PageOpsgenieOnCallRespondersTaskParams


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**taskType** | [**TaskTypeEnum**](#TaskTypeEnum) |  |  [optional] |
|**title** | **String** | Incident title. |  [optional] |
|**message** | **String** | Message of the incident |  [optional] |
|**description** | **String** | Description field of the incident that is generally used to provide a detailed information about the incident |  [optional] |
|**teams** | [**List&lt;AddActionItemTaskParamsPostToSlackChannelsInner&gt;**](AddActionItemTaskParamsPostToSlackChannelsInner.md) |  |  [optional] |
|**users** | [**List&lt;AddActionItemTaskParamsPostToSlackChannelsInner&gt;**](AddActionItemTaskParamsPostToSlackChannelsInner.md) |  |  [optional] |
|**priority** | [**PriorityEnum**](#PriorityEnum) |  |  [optional] |



## Enum: TaskTypeEnum

| Name | Value |
|---- | -----|
| PAGE_OPSGENIE_ON_CALL_RESPONDERS | &quot;page_opsgenie_on_call_responders&quot; |



## Enum: PriorityEnum

| Name | Value |
|---- | -----|
| P1 | &quot;P1&quot; |
| P2 | &quot;P2&quot; |
| P3 | &quot;P3&quot; |
| P4 | &quot;P4&quot; |
| P5 | &quot;P5&quot; |
| AUTO | &quot;auto&quot; |




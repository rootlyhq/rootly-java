

# UpdateOpsgenieAlertTaskParams


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**alertId** | **String** | Opsgenie Alert ID |  |
|**taskType** | [**TaskTypeEnum**](#TaskTypeEnum) |  |  [optional] |
|**message** | **String** | Message of the alert |  [optional] |
|**description** | **String** | Description field of the alert that is generally used to provide a detailed information about the alert |  [optional] |
|**priority** | [**PriorityEnum**](#PriorityEnum) |  |  |
|**completion** | [**AddActionItemTaskParamsPostToSlackChannelsInner**](AddActionItemTaskParamsPostToSlackChannelsInner.md) |  |  |



## Enum: TaskTypeEnum

| Name | Value |
|---- | -----|
| UPDATE_OPSGENIE_ALERT | &quot;update_opsgenie_alert&quot; |



## Enum: PriorityEnum

| Name | Value |
|---- | -----|
| P1 | &quot;P1&quot; |
| P2 | &quot;P2&quot; |
| P3 | &quot;P3&quot; |
| P4 | &quot;P4&quot; |
| P5 | &quot;P5&quot; |
| AUTO | &quot;auto&quot; |




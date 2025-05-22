

# UpdateEscalationPolicyLevelDataAttributes


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**delay** | **Integer** | Delay before notification targets will be alerted. |  [optional] |
|**position** | **Integer** | Position of the escalation policy level |  [optional] |
|**escalationPolicyPathId** | **String** | The ID of the dynamic escalation policy path the level will belong to. If nothing is specified it will add the level to your default path. |  [optional] |
|**pagingStrategyConfigurationStrategy** | [**PagingStrategyConfigurationStrategyEnum**](#PagingStrategyConfigurationStrategyEnum) |  |  [optional] |
|**pagingStrategyConfigurationScheduleStrategy** | [**PagingStrategyConfigurationScheduleStrategyEnum**](#PagingStrategyConfigurationScheduleStrategyEnum) |  |  [optional] |
|**notificationTargetParams** | [**List&lt;UpdateEscalationPolicyLevelDataAttributesNotificationTargetParamsInner&gt;**](UpdateEscalationPolicyLevelDataAttributesNotificationTargetParamsInner.md) | Escalation level&#39;s notification targets |  [optional] |



## Enum: PagingStrategyConfigurationStrategyEnum

| Name | Value |
|---- | -----|
| DEFAULT | &quot;default&quot; |
| RANDOM | &quot;random&quot; |
| CYCLE | &quot;cycle&quot; |
| ALERT | &quot;alert&quot; |



## Enum: PagingStrategyConfigurationScheduleStrategyEnum

| Name | Value |
|---- | -----|
| ON_CALL_ONLY | &quot;on_call_only&quot; |
| EVERYONE | &quot;everyone&quot; |




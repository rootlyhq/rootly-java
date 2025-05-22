

# EscalationPolicyLevel


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**escalationPolicyId** | **String** | The ID of the escalation policy |  |
|**escalationPolicyPathId** | **String** | The ID of the dynamic escalation policy path the level will belong to. If nothing is specified it will add the level to your default path. |  [optional] |
|**pagingStrategyConfigurationStrategy** | [**PagingStrategyConfigurationStrategyEnum**](#PagingStrategyConfigurationStrategyEnum) |  |  [optional] |
|**pagingStrategyConfigurationScheduleStrategy** | [**PagingStrategyConfigurationScheduleStrategyEnum**](#PagingStrategyConfigurationScheduleStrategyEnum) |  |  [optional] |
|**delay** | **Integer** | Delay before notification targets will be alerted. |  |
|**position** | **Integer** | Position of the escalation policy level |  |
|**createdAt** | **String** | Date of creation |  [optional] |
|**updatedAt** | **String** | Date of last update |  [optional] |
|**notificationTargetParams** | [**List&lt;UpdateEscalationPolicyLevelDataAttributesNotificationTargetParamsInner&gt;**](UpdateEscalationPolicyLevelDataAttributesNotificationTargetParamsInner.md) | Escalation level&#39;s notification targets |  |



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




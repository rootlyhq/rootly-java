

# UpdateEscalationPolicyLevelDataAttributes


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**delay** | **Integer** | Delay before notifying targets in the next Escalation Level. |  [optional] |
|**position** | **Integer** | Position of the escalation policy level |  [optional] |
|**escalationPolicyPathId** | **String** | The ID of the dynamic escalation policy path the level will belong to. If nothing is specified it will add the level to your default path. |  [optional] |
|**pagingStrategyConfigurationStrategy** | [**PagingStrategyConfigurationStrategyEnum**](#PagingStrategyConfigurationStrategyEnum) |  |  [optional] |
|**pagingStrategyConfigurationScheduleStrategy** | [**PagingStrategyConfigurationScheduleStrategyEnum**](#PagingStrategyConfigurationScheduleStrategyEnum) |  |  [optional] |
|**pagingStrategyConfigurationRepeats** | **Integer** | Number of times to rotate through the roster (cycle-based round robin). |  [optional] |
|**pagingStrategyConfigurationRepeatsMode** | [**PagingStrategyConfigurationRepeatsModeEnum**](#PagingStrategyConfigurationRepeatsModeEnum) | Controls how repeats are interpreted: &#39;users&#39; pages exactly N users, &#39;all&#39; pages everyone once. |  [optional] |
|**pagingStrategyConfigurationRotationScope** | [**PagingStrategyConfigurationRotationScopeEnum**](#PagingStrategyConfigurationRotationScopeEnum) | Scope of rotation ordering: active rotation members only, or entire schedule. |  [optional] |
|**pagingStrategyConfigurationPageUsersCount** | **Integer** | Number of users to page at a time (cycle-based round robin). |  [optional] |
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



## Enum: PagingStrategyConfigurationRepeatsModeEnum

| Name | Value |
|---- | -----|
| USERS | &quot;users&quot; |
| ALL | &quot;all&quot; |



## Enum: PagingStrategyConfigurationRotationScopeEnum

| Name | Value |
|---- | -----|
| ACTIVE_ROTATION | &quot;active_rotation&quot; |
| ENTIRE_SCHEDULE | &quot;entire_schedule&quot; |




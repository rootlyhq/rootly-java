

# NewEscalationPolicyPathDataAttributesNotificationTypeRulesInner


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**notificationType** | [**NotificationTypeEnum**](#NotificationTypeEnum) | Outcome when this rule matches |  [optional] |
|**matchMode** | [**MatchModeEnum**](#MatchModeEnum) | Whether all or any of the rule&#39;s conditions must match |  [optional] |
|**conditions** | [**List&lt;NewEscalationPolicyPathDataAttributesRulesInner&gt;**](NewEscalationPolicyPathDataAttributesRulesInner.md) | Conditions combined per match_mode, at least one per rule. A deferral_window condition matches when the alert falls inside its time blocks. |  |



## Enum: NotificationTypeEnum

| Name | Value |
|---- | -----|
| AUDIBLE | &quot;audible&quot; |
| QUIET | &quot;quiet&quot; |



## Enum: MatchModeEnum

| Name | Value |
|---- | -----|
| MATCH_ALL_RULES | &quot;match-all-rules&quot; |
| MATCH_ANY_RULE | &quot;match-any-rule&quot; |




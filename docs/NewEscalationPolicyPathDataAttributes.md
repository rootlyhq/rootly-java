

# NewEscalationPolicyPathDataAttributes


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**name** | **String** | The name of the escalation path |  |
|**notificationType** | [**NotificationTypeEnum**](#NotificationTypeEnum) | Notification rule type to be used |  [optional] |
|**_default** | **Boolean** | Whether this escalation path is the default path |  [optional] |
|**matchMode** | [**MatchModeEnum**](#MatchModeEnum) | How path rules are matched. |  [optional] |
|**position** | **Integer** | The position of this path in the paths for this EP. |  [optional] |
|**repeat** | **Boolean** | Whether this path should be repeated until someone acknowledges the alert |  [optional] |
|**repeatCount** | **Integer** | The number of times this path will be executed until someone acknowledges the alert |  [optional] |
|**initialDelay** | **Integer** | Initial delay for escalation path in minutes. Maximum 1 week (10080). |  [optional] |
|**rules** | [**List&lt;NewEscalationPolicyPathDataAttributesRulesInner&gt;**](NewEscalationPolicyPathDataAttributesRulesInner.md) | Escalation path conditions |  [optional] |



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




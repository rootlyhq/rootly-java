

# EscalationPolicyPath


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**name** | **String** | The name of the escalation path |  |
|**_default** | **Boolean** | Whether this escalation path is the default path |  |
|**notificationType** | **String** | Notification rule type |  |
|**escalationPolicyId** | **String** | The ID of the escalation policy |  |
|**matchMode** | [**MatchModeEnum**](#MatchModeEnum) | How path rules are matched. |  [optional] |
|**position** | **Integer** | The position of this path in the paths for this EP. |  [optional] |
|**repeat** | **Boolean** | Whether this path should be repeated until someone acknowledges the alert |  |
|**repeatCount** | **Integer** | The number of times this path will be executed until someone acknowledges the alert |  |
|**initialDelay** | **Integer** | Initial delay for escalation path in minutes. Maximum 1 week (10080). |  [optional] |
|**createdAt** | **String** | Date of creation |  [optional] |
|**updatedAt** | **String** | Date of last update |  [optional] |
|**rules** | [**List&lt;EscalationPolicyPathRulesInner&gt;**](EscalationPolicyPathRulesInner.md) | Escalation path rules |  [optional] |



## Enum: MatchModeEnum

| Name | Value |
|---- | -----|
| MATCH_ALL_RULES | &quot;match-all-rules&quot; |
| MATCH_ANY_RULE | &quot;match-any-rule&quot; |




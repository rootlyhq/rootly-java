

# AlertRetriggerRule


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**name** | **String** | A human-readable name for the rule |  [optional] |
|**matchMode** | [**MatchModeEnum**](#MatchModeEnum) | Whether all or any of the conditions must match |  [optional] |
|**timeoutMinutes** | **Integer** | Minutes after acknowledgment to re-trigger. Null means never re-trigger. |  [optional] |
|**position** | **Integer** | The position of the rule for ordering evaluation |  [optional] |
|**conditions** | [**List&lt;AlertRetriggerRuleConditionsInner&gt;**](AlertRetriggerRuleConditionsInner.md) | The conditions for the rule |  [optional] |
|**createdAt** | **OffsetDateTime** |  |  [optional] |
|**updatedAt** | **OffsetDateTime** |  |  [optional] |



## Enum: MatchModeEnum

| Name | Value |
|---- | -----|
| MATCH_ALL_RULES | &quot;match-all-rules&quot; |
| MATCH_ANY_RULE | &quot;match-any-rule&quot; |




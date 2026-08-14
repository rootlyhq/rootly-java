

# NewAlertRetriggerRuleDataAttributes


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**name** | **String** | A human-readable name for the rule |  |
|**matchMode** | [**MatchModeEnum**](#MatchModeEnum) | Whether all or any of the conditions must match |  [optional] |
|**timeoutMinutes** | [**TimeoutMinutesEnum**](#TimeoutMinutesEnum) | Re-trigger the alert this many minutes after acknowledgment. Null means never re-trigger. |  [optional] |
|**position** | **Integer** | The position of the rule; the first matching rule (by position) decides the outcome |  [optional] |
|**conditions** | [**List&lt;NewAlertRetriggerRuleDataAttributesConditionsInner&gt;**](NewAlertRetriggerRuleDataAttributesConditionsInner.md) | The conditions that determine which alerts this rule applies to. An empty array applies to every alert. |  [optional] |



## Enum: MatchModeEnum

| Name | Value |
|---- | -----|
| MATCH_ALL_RULES | &quot;match-all-rules&quot; |
| MATCH_ANY_RULE | &quot;match-any-rule&quot; |



## Enum: TimeoutMinutesEnum

| Name | Value |
|---- | -----|
| NUMBER_10 | 10 |
| NUMBER_20 | 20 |
| NUMBER_30 | 30 |
| NUMBER_40 | 40 |
| NUMBER_50 | 50 |
| NUMBER_60 | 60 |
| NUMBER_90 | 90 |
| NUMBER_120 | 120 |
| NUMBER_180 | 180 |
| NUMBER_240 | 240 |
| NUMBER_300 | 300 |
| NUMBER_360 | 360 |
| NUMBER_720 | 720 |
| NUMBER_1440 | 1440 |




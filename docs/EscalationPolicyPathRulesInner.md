

# EscalationPolicyPathRulesInner


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**ruleType** | [**RuleTypeEnum**](#RuleTypeEnum) | The type of the escalation path rule |  |
|**urgencyIds** | **List&lt;String&gt;** | Alert urgency ids for which this escalation path should be used |  |
|**withinWorkingHour** | **Boolean** | Whether the escalation path should be used within working hours |  |
|**jsonPath** | **String** | JSON path to extract value from payload |  |
|**operator** | [**OperatorEnum**](#OperatorEnum) | How JSON path value should be matched |  |
|**value** | **String** | Value with which JSON path value should be matched |  |



## Enum: RuleTypeEnum

| Name | Value |
|---- | -----|
| JSON_PATH | &quot;json_path&quot; |



## Enum: OperatorEnum

| Name | Value |
|---- | -----|
| IS | &quot;is&quot; |
| IS_NOT | &quot;is_not&quot; |
| CONTAINS | &quot;contains&quot; |
| DOES_NOT_CONTAIN | &quot;does_not_contain&quot; |




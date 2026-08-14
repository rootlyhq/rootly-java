

# NewEscalationPolicyPathDataAttributesRulesInnerOneOf6


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**ruleType** | [**RuleTypeEnum**](#RuleTypeEnum) | The type of the escalation path rule |  |
|**operator** | [**OperatorEnum**](#OperatorEnum) | How the alert source should be matched |  |
|**values** | **List&lt;String&gt;** | Alert source values to match against (e.g., manual, datadog) |  |



## Enum: RuleTypeEnum

| Name | Value |
|---- | -----|
| SOURCE | &quot;source&quot; |



## Enum: OperatorEnum

| Name | Value |
|---- | -----|
| IS | &quot;is&quot; |
| IS_NOT | &quot;is_not&quot; |
| IS_ONE_OF | &quot;is_one_of&quot; |
| IS_NOT_ONE_OF | &quot;is_not_one_of&quot; |




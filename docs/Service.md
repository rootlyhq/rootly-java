

# Service


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**ruleType** | [**RuleTypeEnum**](#RuleTypeEnum) | The type of the escalation path rule |  |
|**serviceIds** | **List&lt;String&gt;** | Service ids for which this escalation path should be used |  |
|**operator** | [**OperatorEnum**](#OperatorEnum) | How the alert&#39;s services should be matched. is and is_not take exactly one id |  [optional] |



## Enum: RuleTypeEnum

| Name | Value |
|---- | -----|
| SERVICE | &quot;service&quot; |



## Enum: OperatorEnum

| Name | Value |
|---- | -----|
| IS | &quot;is&quot; |
| IS_NOT | &quot;is_not&quot; |
| IS_ONE_OF | &quot;is_one_of&quot; |
| IS_NOT_ONE_OF | &quot;is_not_one_of&quot; |




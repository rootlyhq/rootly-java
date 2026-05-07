

# NewEscalationPolicyPathDataAttributesRulesInnerOneOf3


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**ruleType** | [**RuleTypeEnum**](#RuleTypeEnum) | The type of the escalation path rule |  |
|**fieldableType** | **String** | The type of the fieldable (e.g., AlertField) |  |
|**fieldableId** | **String** | The ID of the alert field |  |
|**operator** | [**OperatorEnum**](#OperatorEnum) | How the alert field value should be matched |  |
|**values** | **List&lt;String&gt;** | Values to match against |  [optional] |



## Enum: RuleTypeEnum

| Name | Value |
|---- | -----|
| FIELD | &quot;field&quot; |



## Enum: OperatorEnum

| Name | Value |
|---- | -----|
| IS | &quot;is&quot; |
| IS_NOT | &quot;is_not&quot; |
| IS_ONE_OF | &quot;is_one_of&quot; |
| IS_NOT_ONE_OF | &quot;is_not_one_of&quot; |
| CONTAINS | &quot;contains&quot; |
| DOES_NOT_CONTAIN | &quot;does_not_contain&quot; |
| IS_EMPTY | &quot;is_empty&quot; |
| IS_NOT_EMPTY | &quot;is_not_empty&quot; |
| CONTAINS_KEY | &quot;contains_key&quot; |
| DOES_NOT_CONTAIN_KEY | &quot;does_not_contain_key&quot; |
| STARTS_WITH | &quot;starts_with&quot; |
| DOES_NOT_START_WITH | &quot;does_not_start_with&quot; |
| MATCHES | &quot;matches&quot; |
| DOES_NOT_MATCH | &quot;does_not_match&quot; |




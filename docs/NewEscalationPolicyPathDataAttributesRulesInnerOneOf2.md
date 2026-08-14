

# NewEscalationPolicyPathDataAttributesRulesInnerOneOf2


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**ruleType** | [**RuleTypeEnum**](#RuleTypeEnum) | The type of the escalation path rule |  |
|**jsonPath** | **String** | JSON path to extract value from payload |  |
|**operator** | [**OperatorEnum**](#OperatorEnum) | How JSON path value should be matched |  |
|**value** | **String** | Value with which JSON path value should be matched |  [optional] |
|**values** | **List&lt;String&gt;** | Values to match against (for is_one_of / is_not_one_of operators) |  [optional] |



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
| CONTAINS_KEY | &quot;contains_key&quot; |
| DOES_NOT_CONTAIN_KEY | &quot;does_not_contain_key&quot; |
| STARTS_WITH | &quot;starts_with&quot; |
| DOES_NOT_START_WITH | &quot;does_not_start_with&quot; |
| MATCHES | &quot;matches&quot; |
| DOES_NOT_MATCH | &quot;does_not_match&quot; |
| IS_ONE_OF | &quot;is_one_of&quot; |
| IS_NOT_ONE_OF | &quot;is_not_one_of&quot; |
| IS_SET | &quot;is_set&quot; |
| IS_NOT_SET | &quot;is_not_set&quot; |




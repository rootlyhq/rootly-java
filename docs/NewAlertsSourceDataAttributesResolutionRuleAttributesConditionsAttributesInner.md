

# NewAlertsSourceDataAttributesResolutionRuleAttributesConditionsAttributesInner


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**field** | **String** | JSON path expression to extract a specific value from the alert&#39;s payload for evaluation |  [optional] |
|**operator** | [**OperatorEnum**](#OperatorEnum) | Comparison operator used to evaluate the extracted value against the specified condition |  [optional] |
|**value** | **String** | Value that the extracted payload data is compared to using the specified operator to determine a match |  [optional] |
|**conditionableType** | [**ConditionableTypeEnum**](#ConditionableTypeEnum) | The type of the conditionable |  [optional] |
|**conditionableId** | **String** | The ID of the conditionable. If conditionable_type is AlertField, this is the ID of the alert field. |  [optional] |
|**kind** | [**KindEnum**](#KindEnum) | The kind of the conditionable |  [optional] |



## Enum: OperatorEnum

| Name | Value |
|---- | -----|
| IS | &quot;is&quot; |
| IS_NOT | &quot;is_not&quot; |
| CONTAINS | &quot;contains&quot; |
| DOES_NOT_CONTAIN | &quot;does_not_contain&quot; |
| STARTS_WITH | &quot;starts_with&quot; |
| ENDS_WITH | &quot;ends_with&quot; |



## Enum: ConditionableTypeEnum

| Name | Value |
|---- | -----|
| ALERT_FIELD | &quot;AlertField&quot; |



## Enum: KindEnum

| Name | Value |
|---- | -----|
| PAYLOAD | &quot;payload&quot; |
| ALERT_FIELD | &quot;alert_field&quot; |




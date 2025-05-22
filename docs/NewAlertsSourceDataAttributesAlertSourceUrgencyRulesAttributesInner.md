

# NewAlertsSourceDataAttributesAlertSourceUrgencyRulesAttributesInner


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**jsonPath** | **String** | JSON path expression to extract a specific value from the alert&#39;s payload for evaluation |  [optional] |
|**operator** | [**OperatorEnum**](#OperatorEnum) | Comparison operator used to evaluate the extracted value against the specified condition |  [optional] |
|**value** | **String** | Value that the extracted payload data is compared to using the specified operator to determine a match |  [optional] |



## Enum: OperatorEnum

| Name | Value |
|---- | -----|
| IS | &quot;is&quot; |
| IS_NOT | &quot;is_not&quot; |
| CONTAINS | &quot;contains&quot; |
| DOES_NOT_CONTAIN | &quot;does_not_contain&quot; |




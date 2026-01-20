

# UpdateAlertRouteDataAttributesRulesInnerConditionGroupsInnerConditionsInner


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**id** | **UUID** | The ID of the condition (for updates) |  [optional] |
|**propertyFieldConditionType** | [**PropertyFieldConditionTypeEnum**](#PropertyFieldConditionTypeEnum) |  |  |
|**propertyFieldName** | **String** | The name of the property field |  [optional] |
|**propertyFieldType** | [**PropertyFieldTypeEnum**](#PropertyFieldTypeEnum) |  |  |
|**propertyFieldValue** | **String** | The value of the property field |  [optional] |
|**propertyFieldValues** | **List&lt;String&gt;** |  |  [optional] |
|**alertUrgencyIds** | **List&lt;String&gt;** | The Alert Urgency IDs to check in the condition |  [optional] |
|**conditionableType** | [**ConditionableTypeEnum**](#ConditionableTypeEnum) | The type of the conditionable |  [optional] |
|**conditionableId** | **UUID** | The ID of the conditionable |  [optional] |



## Enum: PropertyFieldConditionTypeEnum

| Name | Value |
|---- | -----|
| IS_ONE_OF | &quot;is_one_of&quot; |
| IS_NOT_ONE_OF | &quot;is_not_one_of&quot; |
| CONTAINS | &quot;contains&quot; |
| DOES_NOT_CONTAIN | &quot;does_not_contain&quot; |
| STARTS_WITH | &quot;starts_with&quot; |
| ENDS_WITH | &quot;ends_with&quot; |
| MATCHES_REGEX | &quot;matches_regex&quot; |
| IS_EMPTY | &quot;is_empty&quot; |



## Enum: PropertyFieldTypeEnum

| Name | Value |
|---- | -----|
| ATTRIBUTE | &quot;attribute&quot; |
| PAYLOAD | &quot;payload&quot; |
| ALERT_FIELD | &quot;alert_field&quot; |



## Enum: ConditionableTypeEnum

| Name | Value |
|---- | -----|
| ALERT_FIELD | &quot;AlertField&quot; |




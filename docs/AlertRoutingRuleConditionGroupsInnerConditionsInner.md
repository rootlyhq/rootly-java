

# AlertRoutingRuleConditionGroupsInnerConditionsInner


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**id** | **UUID** | Unique ID of the condition |  [optional] |
|**propertyFieldType** | [**PropertyFieldTypeEnum**](#PropertyFieldTypeEnum) | The type of the property field |  |
|**propertyFieldName** | **String** | The name of the property field |  |
|**propertyFieldConditionType** | [**PropertyFieldConditionTypeEnum**](#PropertyFieldConditionTypeEnum) | The condition type of the property field |  |
|**propertyFieldValue** | **String** | The value of the property field |  [optional] |
|**propertyFieldValues** | **List&lt;String&gt;** | The values of the property field |  [optional] |
|**conditionableId** | **UUID** | The ID of the conditionable object |  [optional] |
|**conditionableType** | **String** | The type of the conditionable object |  [optional] |
|**createdAt** | **String** | Date of creation |  [optional] |
|**updatedAt** | **String** | Date of last update |  [optional] |



## Enum: PropertyFieldTypeEnum

| Name | Value |
|---- | -----|
| ATTRIBUTE | &quot;attribute&quot; |
| PAYLOAD | &quot;payload&quot; |



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




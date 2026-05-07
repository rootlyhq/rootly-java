

# SlaConditionsInner


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**id** | **UUID** | Unique ID of the condition |  [optional] |
|**position** | **Integer** | The position of the condition |  [optional] |
|**conditionableType** | [**ConditionableTypeEnum**](#ConditionableTypeEnum) | The type of condition |  [optional] |
|**property** | **String** | The property to evaluate (for built-in field conditions) |  [optional] |
|**operator** | **String** | The comparison operator |  [optional] |
|**values** | **List&lt;String&gt;** | The values to compare against |  [optional] |
|**formFieldId** | **UUID** | The ID of the form field (for custom field conditions) |  [optional] |



## Enum: ConditionableTypeEnum

| Name | Value |
|---- | -----|
| SLAS_BUILT_IN_FIELD_CONDITION | &quot;SLAs::BuiltInFieldCondition&quot; |
| SLAS_CUSTOM_FIELD_CONDITION | &quot;SLAs::CustomFieldCondition&quot; |




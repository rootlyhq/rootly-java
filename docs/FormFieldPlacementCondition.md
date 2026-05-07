

# FormFieldPlacementCondition


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**formFieldPlacementId** | **String** | The form field placement this condition applies. |  |
|**conditioned** | [**ConditionedEnum**](#ConditionedEnum) | The resource or attribute the condition applies. |  |
|**position** | **Integer** | The condition position. |  |
|**formFieldId** | **String** | The condition field. |  |
|**comparison** | [**ComparisonEnum**](#ComparisonEnum) | The condition comparison. |  |
|**values** | **List&lt;String&gt;** | The values for comparison. |  |



## Enum: ConditionedEnum

| Name | Value |
|---- | -----|
| PLACEMENT | &quot;placement&quot; |
| REQUIRED | &quot;required&quot; |



## Enum: ComparisonEnum

| Name | Value |
|---- | -----|
| EQUAL | &quot;equal&quot; |
| NOT_EQUAL | &quot;not_equal&quot; |
| IS_SET | &quot;is_set&quot; |
| IS_NOT_SET | &quot;is_not_set&quot; |






# NewSlaDataAttributesConditionsInner


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**conditionableType** | [**ConditionableTypeEnum**](#ConditionableTypeEnum) | The type of condition |  |
|**property** | [**PropertyEnum**](#PropertyEnum) | The property to evaluate (for built-in field conditions). When the team has custom lifecycle statuses enabled, use &#39;sub_status&#39; (with sub-status IDs as values); otherwise use &#39;status&#39; (with parent status names). Sending the wrong one will return a validation error. |  [optional] |
|**operator** | **String** | The comparison operator |  |
|**values** | **List&lt;String&gt;** | The values to compare against |  [optional] |
|**formFieldId** | **UUID** | The ID of the form field (for custom field conditions) |  [optional] |
|**position** | **Integer** | The position of the condition for ordering |  [optional] |



## Enum: ConditionableTypeEnum

| Name | Value |
|---- | -----|
| SLAS_BUILT_IN_FIELD_CONDITION | &quot;SLAs::BuiltInFieldCondition&quot; |
| SLAS_CUSTOM_FIELD_CONDITION | &quot;SLAs::CustomFieldCondition&quot; |



## Enum: PropertyEnum

| Name | Value |
|---- | -----|
| SEVERITY | &quot;severity&quot; |
| ENVIRONMENT | &quot;environment&quot; |
| SERVICE | &quot;service&quot; |
| FUNCTIONALITY | &quot;functionality&quot; |
| INCIDENT_TYPE | &quot;incident_type&quot; |
| GROUP | &quot;group&quot; |
| CAUSE | &quot;cause&quot; |
| SUB_STATUS | &quot;sub_status&quot; |
| INCIDENT_ROLE | &quot;incident_role&quot; |
| STATUS | &quot;status&quot; |
| KIND | &quot;kind&quot; |
| VISIBILITY | &quot;visibility&quot; |
| SUMMARY | &quot;summary&quot; |
| STARTED_AT | &quot;started_at&quot; |
| DETECTED_AT | &quot;detected_at&quot; |
| ACKNOWLEDGED_AT | &quot;acknowledged_at&quot; |
| MITIGATED_AT | &quot;mitigated_at&quot; |
| RESOLVED_AT | &quot;resolved_at&quot; |






# WorkflowCustomFieldSelection


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**workflowId** | **String** | The workflow for this selection |  |
|**customFieldId** | **Integer** | The custom field for this selection |  |
|**incidentCondition** | [**IncidentConditionEnum**](#IncidentConditionEnum) | The trigger condition |  |
|**values** | **List&lt;String&gt;** |  |  [optional] |
|**selectedOptionIds** | **List&lt;Integer&gt;** |  |  |



## Enum: IncidentConditionEnum

| Name | Value |
|---- | -----|
| IS | &quot;IS&quot; |
| IS_NOT | &quot;IS NOT&quot; |
| ANY | &quot;ANY&quot; |
| CONTAINS | &quot;CONTAINS&quot; |
| CONTAINS_ALL | &quot;CONTAINS_ALL&quot; |
| CONTAINS_NONE | &quot;CONTAINS_NONE&quot; |
| NONE | &quot;NONE&quot; |
| SET | &quot;SET&quot; |
| UNSET | &quot;UNSET&quot; |




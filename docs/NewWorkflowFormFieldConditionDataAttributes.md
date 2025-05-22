

# NewWorkflowFormFieldConditionDataAttributes


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**workflowId** | **String** | The workflow for this condition |  [optional] |
|**formFieldId** | **String** | The custom field for this condition |  |
|**incidentCondition** | [**IncidentConditionEnum**](#IncidentConditionEnum) | The trigger condition |  |
|**values** | **List&lt;String&gt;** |  |  [optional] |
|**selectedCatalogEntityIds** | **List&lt;String&gt;** |  |  [optional] |
|**selectedFunctionalityIds** | **List&lt;String&gt;** |  |  [optional] |
|**selectedGroupIds** | **List&lt;String&gt;** |  |  [optional] |
|**selectedOptionIds** | **List&lt;String&gt;** |  |  [optional] |
|**selectedServiceIds** | **List&lt;String&gt;** |  |  [optional] |
|**selectedUserIds** | **List&lt;Integer&gt;** |  |  [optional] |



## Enum: IncidentConditionEnum

| Name | Value |
|---- | -----|
| IS | &quot;IS&quot; |
| ANY | &quot;ANY&quot; |
| CONTAINS | &quot;CONTAINS&quot; |
| CONTAINS_ALL | &quot;CONTAINS_ALL&quot; |
| CONTAINS_NONE | &quot;CONTAINS_NONE&quot; |
| NONE | &quot;NONE&quot; |
| SET | &quot;SET&quot; |
| UNSET | &quot;UNSET&quot; |




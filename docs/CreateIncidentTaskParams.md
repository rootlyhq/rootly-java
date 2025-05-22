

# CreateIncidentTaskParams


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**taskType** | [**TaskTypeEnum**](#TaskTypeEnum) |  |  [optional] |
|**title** | **String** | The incident title |  |
|**summary** | **String** | The incident summary |  [optional] |
|**severityId** | **String** |  |  [optional] |
|**incidentTypeIds** | **List&lt;String&gt;** |  |  [optional] |
|**serviceIds** | **List&lt;String&gt;** |  |  [optional] |
|**functionalityIds** | **List&lt;String&gt;** |  |  [optional] |
|**environmentIds** | **List&lt;String&gt;** |  |  [optional] |
|**groupIds** | **List&lt;String&gt;** |  |  [optional] |
|**_private** | **Boolean** |  |  [optional] |
|**customFieldsMapping** | **String** | Custom field mappings. Can contain liquid markup and need to be valid JSON |  [optional] |



## Enum: TaskTypeEnum

| Name | Value |
|---- | -----|
| CREATE_INCIDENT | &quot;create_incident&quot; |




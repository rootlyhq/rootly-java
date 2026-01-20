

# CreateIncidentTaskParams


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**taskType** | [**TaskTypeEnum**](#TaskTypeEnum) |  |  [optional] |
|**title** | **String** | The incident title |  |
|**summary** | **String** | The incident summary |  [optional] |
|**severityId** | **String** |  |  [optional] |
|**incidentTypeIds** | **List&lt;String&gt;** |  |  [optional] |
|**serviceIds** | **List&lt;String&gt;** | Array of service UUIDs |  [optional] |
|**functionalityIds** | **List&lt;String&gt;** | Array of functionality UUIDs |  [optional] |
|**environmentIds** | **List&lt;String&gt;** |  |  [optional] |
|**groupIds** | **List&lt;String&gt;** | Array of group/team UUIDs |  [optional] |
|**_private** | **Boolean** |  |  [optional] |
|**customFieldsMapping** | **String** | Custom field mappings. Can contain liquid markup and need to be valid JSON. Use &#39;services&#39;, &#39;functionalities&#39;, or &#39;groups&#39; keys with arrays of names/slugs for name/slug lookup |  [optional] |



## Enum: TaskTypeEnum

| Name | Value |
|---- | -----|
| CREATE_INCIDENT | &quot;create_incident&quot; |




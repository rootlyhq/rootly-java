

# CreateIncidentPostmortemTaskParams


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**taskType** | [**TaskTypeEnum**](#TaskTypeEnum) |  |  [optional] |
|**incidentId** | **String** | UUID of the incident that needs a retrospective |  |
|**title** | **String** | The retrospective title |  |
|**status** | **String** |  |  [optional] |
|**template** | [**CreateIncidentPostmortemTaskParamsTemplate**](CreateIncidentPostmortemTaskParamsTemplate.md) |  |  [optional] |



## Enum: TaskTypeEnum

| Name | Value |
|---- | -----|
| CREATE_INCIDENT_POSTMORTEM | &quot;create_incident_postmortem&quot; |






# NewIncidentEventServiceDataAttributes


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**incidentEventId** | **String** | The ID of the incident event. |  |
|**serviceId** | **String** | The ID of the service. |  |
|**status** | [**StatusEnum**](#StatusEnum) | The status of the affected service |  |



## Enum: StatusEnum

| Name | Value |
|---- | -----|
| OPERATIONAL | &quot;operational&quot; |
| PARTIAL_OUTAGE | &quot;partial_outage&quot; |
| MAJOR_OUTAGE | &quot;major_outage&quot; |




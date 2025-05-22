

# UpdateVictorOpsIncidentTaskParams


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**taskType** | [**TaskTypeEnum**](#TaskTypeEnum) |  |  [optional] |
|**victorOpsIncidentId** | **String** | The victor_ops incident ID, this can also be a Rootly incident variable ex. {{ incident.victor_ops_incident_id }} |  |
|**status** | [**StatusEnum**](#StatusEnum) |  |  |
|**resolutionMessage** | **String** | Resolution message |  [optional] |



## Enum: TaskTypeEnum

| Name | Value |
|---- | -----|
| UPDATE_VICTOR_OPS_INCIDENT | &quot;update_victor_ops_incident&quot; |



## Enum: StatusEnum

| Name | Value |
|---- | -----|
| RESOLVE | &quot;resolve&quot; |
| ACK | &quot;ack&quot; |
| AUTO | &quot;auto&quot; |




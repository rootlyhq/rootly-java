

# UpdateOpsgenieIncidentTaskParams


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**taskType** | [**TaskTypeEnum**](#TaskTypeEnum) |  |  [optional] |
|**opsgenieIncidentId** | **String** | The Opsgenie incident ID, this can also be a Rootly incident variable ex. {{ incident.opsgenie_incident_id }} |  |
|**message** | **String** | Message of the alert |  [optional] |
|**description** | **String** | Description field of the alert that is generally used to provide a detailed information about the alert |  [optional] |
|**status** | [**StatusEnum**](#StatusEnum) |  |  [optional] |
|**priority** | [**PriorityEnum**](#PriorityEnum) |  |  [optional] |



## Enum: TaskTypeEnum

| Name | Value |
|---- | -----|
| UPDATE_OPSGENIE_INCIDENT | &quot;update_opsgenie_incident&quot; |



## Enum: StatusEnum

| Name | Value |
|---- | -----|
| RESOLVE | &quot;resolve&quot; |
| OPEN | &quot;open&quot; |
| CLOSE | &quot;close&quot; |
| AUTO | &quot;auto&quot; |



## Enum: PriorityEnum

| Name | Value |
|---- | -----|
| P1 | &quot;P1&quot; |
| P2 | &quot;P2&quot; |
| P3 | &quot;P3&quot; |
| P4 | &quot;P4&quot; |
| P5 | &quot;P5&quot; |
| AUTO | &quot;auto&quot; |






# WorkflowRun


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**workflowId** | **String** |  |  |
|**status** | [**StatusEnum**](#StatusEnum) |  |  |
|**statusMessage** | **String** |  |  [optional] |
|**triggeredBy** | [**TriggeredByEnum**](#TriggeredByEnum) |  |  |
|**startedAt** | **String** |  |  [optional] |
|**completedAt** | **String** |  |  [optional] |
|**failedAt** | **String** |  |  [optional] |
|**canceledAt** | **String** |  |  [optional] |
|**incidentId** | **String** |  |  [optional] |
|**postMortemId** | **String** |  |  [optional] |
|**actionItemId** | **String** |  |  [optional] |
|**alertId** | **String** |  |  [optional] |
|**pulseId** | **String** |  |  [optional] |
|**context** | **Map&lt;String, Object&gt;** |  |  [optional] |



## Enum: StatusEnum

| Name | Value |
|---- | -----|
| QUEUED | &quot;queued&quot; |
| STARTED | &quot;started&quot; |
| COMPLETED | &quot;completed&quot; |
| COMPLETED_WITH_ERRORS | &quot;completed_with_errors&quot; |
| FAILED | &quot;failed&quot; |
| CANCELED | &quot;canceled&quot; |



## Enum: TriggeredByEnum

| Name | Value |
|---- | -----|
| SYSTEM | &quot;system&quot; |
| USER | &quot;user&quot; |
| WORKFLOW | &quot;workflow&quot; |




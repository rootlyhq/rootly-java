

# NewProblemDataAttributes


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**title** | **String** | The title of the problem |  |
|**description** | **String** | The description of the problem |  [optional] |
|**ownerUserId** | **Integer** | ID of the user who owns the problem |  [optional] |
|**ownerGroupId** | **String** | ID of the group (team) that owns the problem |  [optional] |
|**priority** | [**PriorityEnum**](#PriorityEnum) | The priority of the problem |  [optional] |
|**dueDate** | **LocalDate** | The due date of the problem |  [optional] |
|**scope** | **String** | The scope of the problem |  [optional] |
|**exitCriteria** | **String** | The exit criteria of the problem |  [optional] |
|**impactSoFar** | **String** | The impact observed so far |  [optional] |
|**rootCause** | **String** | The root cause of the problem |  [optional] |
|**resolution** | **String** | The resolution of the problem |  [optional] |
|**deferralReason** | **String** | The reason and accepted risk for deferring the problem |  [optional] |
|**cancellationReason** | **String** | The reason for cancelling the problem |  [optional] |
|**nextReviewAt** | **String** | The next review date for a deferred problem |  [optional] |
|**reReviewCadence** | **Integer** | Days between reviews for a deferred problem |  [optional] |
|**incidentIds** | **List&lt;String&gt;** | IDs of incidents to link to the problem |  [optional] |
|**formFieldSelections** | **List&lt;Object&gt;** | Custom (form) field selections for the problem |  [optional] |



## Enum: PriorityEnum

| Name | Value |
|---- | -----|
| P0 | &quot;P0&quot; |
| P1 | &quot;P1&quot; |
| P2 | &quot;P2&quot; |
| P3 | &quot;P3&quot; |




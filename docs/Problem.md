

# Problem


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**sequentialId** | **Integer** | Team-scoped sequential number of the problem |  [optional] |
|**displayId** | **String** | Human-readable identifier of the problem (e.g. PROB-12) |  [optional] [readonly] |
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
|**status** | [**StatusEnum**](#StatusEnum) | The status of the problem |  [readonly] |
|**createdByUserId** | **Integer** | ID of the user who created the problem |  [optional] [readonly] |
|**inProgressByUserId** | **Integer** | ID of the user who moved the problem to in progress |  [optional] [readonly] |
|**completedByUserId** | **Integer** | ID of the user who completed the problem |  [optional] [readonly] |
|**deferredByUserId** | **Integer** | ID of the user who approved deferring the problem |  [optional] [readonly] |
|**cancelledByUserId** | **Integer** | ID of the user who cancelled the problem |  [optional] [readonly] |
|**inProgressAt** | **String** | When the problem moved to in progress |  [optional] [readonly] |
|**completedAt** | **String** | When the problem was completed |  [optional] [readonly] |
|**deferredAt** | **String** | When the problem was deferred |  [optional] [readonly] |
|**cancelledAt** | **String** | When the problem was cancelled |  [optional] [readonly] |
|**incidentIds** | **List&lt;String&gt;** | IDs of incidents linked to the problem |  [optional] [readonly] |
|**incidentsCount** | **Integer** | Number of incidents linked to the problem |  [optional] [readonly] |
|**actionItemsCount** | **Integer** | Number of action items on the problem |  [optional] [readonly] |
|**subscribersCount** | **Integer** | Number of users following the problem |  [optional] [readonly] |
|**usersAssignedCount** | **Integer** | Number of problem role assignees |  [optional] [readonly] |
|**url** | **String** | URL of the problem in the Rootly web app |  [optional] [readonly] |
|**createdAt** | **String** | Date of creation |  |
|**updatedAt** | **String** | Date of last update |  |



## Enum: PriorityEnum

| Name | Value |
|---- | -----|
| P0 | &quot;P0&quot; |
| P1 | &quot;P1&quot; |
| P2 | &quot;P2&quot; |
| P3 | &quot;P3&quot; |



## Enum: StatusEnum

| Name | Value |
|---- | -----|
| CREATED | &quot;created&quot; |
| IN_PROGRESS | &quot;in_progress&quot; |
| COMPLETED | &quot;completed&quot; |
| DEFERRED | &quot;deferred&quot; |
| CANCELLED | &quot;cancelled&quot; |




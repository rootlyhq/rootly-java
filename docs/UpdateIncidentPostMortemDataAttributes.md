

# UpdateIncidentPostMortemDataAttributes


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**title** | **String** | The title of the incident retrospective |  [optional] |
|**status** | [**StatusEnum**](#StatusEnum) | The status of the incident retrospective |  [optional] |
|**startedAt** | **String** | Date of started at |  [optional] |
|**mitigatedAt** | **String** | Date of mitigation |  [optional] |
|**resolvedAt** | **String** | Date of resolution |  [optional] |
|**showTimeline** | **Boolean** | Show events timeline of the incident retrospective |  [optional] |
|**showTimelineTrail** | **Boolean** | Show trail events in the timeline of the incident retrospective |  [optional] |
|**showTimelineGenius** | **Boolean** | Show workflow events in the timeline of the incident retrospective |  [optional] |
|**showTimelineTasks** | **Boolean** | Show tasks in the timeline of the incident retrospective |  [optional] |
|**showTimelineActionItems** | **Boolean** | Show action items in the timeline of the incident retrospective |  [optional] |
|**showServicesImpacted** | **Boolean** | Show functionalities impacted of the incident retrospective |  [optional] |
|**showFunctionalitiesImpacted** | **Boolean** | Show services impacted of the incident retrospective |  [optional] |
|**showGroupsImpacted** | **Boolean** | Show groups impacted of the incident retrospective |  [optional] |
|**showAlertsAttached** | **Boolean** | Show alerts attached to the incident |  [optional] |
|**showActionItems** | **Boolean** | Show action items (follow-ups) in the incident retrospective |  [optional] |
|**causeIds** | **List&lt;String&gt;** | The Cause IDs to attach to the incident retrospective |  [optional] |



## Enum: StatusEnum

| Name | Value |
|---- | -----|
| DRAFT | &quot;draft&quot; |
| PUBLISHED | &quot;published&quot; |




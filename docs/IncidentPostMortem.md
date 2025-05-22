

# IncidentPostMortem


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**title** | **String** | The title of the incident retrospective |  |
|**content** | **String** | The content of the incident retrospective (Only if internal) |  [optional] |
|**status** | [**StatusEnum**](#StatusEnum) | The status of the incident retrospective |  [optional] |
|**startedAt** | **String** | Date of started at |  [optional] |
|**mitigatedAt** | **String** | Date of mitigation |  [optional] |
|**resolvedAt** | **String** | Date of resolution |  [optional] |
|**showTimeline** | **Boolean** | Show events timeline of the incident retrospective |  [optional] |
|**showTimelineTrail** | **Boolean** | Show trail events in the timeline of the incident retrospective |  [optional] |
|**showTimelineGenius** | **Boolean** | Show workflow events in the timeline of the incident retrospective |  [optional] |
|**showTimelineTasks** | **Boolean** | Show tasks in the timeline of the incident retrospective |  [optional] |
|**showTimelineActionItems** | **Boolean** | Show action items in the timeline of the incident retrospective |  [optional] |
|**showTimelineOrder** | [**ShowTimelineOrderEnum**](#ShowTimelineOrderEnum) | The order of the incident retrospective timeline |  [optional] |
|**showServicesImpacted** | **Boolean** | Show functionalities impacted of the incident retrospective |  [optional] |
|**showFunctionalitiesImpacted** | **Boolean** | Show services impacted of the incident retrospective |  [optional] |
|**showGroupsImpacted** | **Boolean** | Show groups impacted of the incident retrospective |  [optional] |
|**showAlertsAttached** | **Boolean** | Show alerts attached to the incident |  [optional] |
|**url** | **String** | The url to the incident retrospective |  [optional] |
|**createdAt** | **String** | Date of creation |  |
|**updatedAt** | **String** | Date of last update |  |



## Enum: StatusEnum

| Name | Value |
|---- | -----|
| DRAFT | &quot;draft&quot; |
| PUBLISHED | &quot;published&quot; |



## Enum: ShowTimelineOrderEnum

| Name | Value |
|---- | -----|
| ASC | &quot;asc&quot; |
| DESC | &quot;desc&quot; |






# GetAlertsTaskParams


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**taskType** | [**TaskTypeEnum**](#TaskTypeEnum) |  |  [optional] |
|**serviceIds** | **List&lt;String&gt;** |  |  [optional] |
|**environmentIds** | **List&lt;String&gt;** |  |  [optional] |
|**labels** | **List&lt;String&gt;** |  |  [optional] |
|**sources** | **List&lt;String&gt;** |  |  [optional] |
|**pastDuration** | **String** | How far back to fetch commits (in format &#39;1 minute&#39;, &#39;30 days&#39;, &#39;3 months&#39;, etc.) |  |
|**servicesImpactedByIncident** | **Boolean** |  |  [optional] |
|**environmentsImpactedByIncident** | **Boolean** |  |  [optional] |
|**postToIncidentTimeline** | **Boolean** |  |  [optional] |
|**postToSlackChannels** | [**List&lt;AddActionItemTaskParamsPostToSlackChannelsInner&gt;**](AddActionItemTaskParamsPostToSlackChannelsInner.md) |  |  [optional] |
|**parentMessageThreadTask** | [**GetPulsesTaskParamsParentMessageThreadTask**](GetPulsesTaskParamsParentMessageThreadTask.md) |  |  [optional] |



## Enum: TaskTypeEnum

| Name | Value |
|---- | -----|
| GET_ALERTS | &quot;get_alerts&quot; |




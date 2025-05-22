

# SnapshotDatadogGraphTaskParams


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**taskType** | [**TaskTypeEnum**](#TaskTypeEnum) |  |  [optional] |
|**dashboards** | [**List&lt;AddActionItemTaskParamsPostToSlackChannelsInner&gt;**](AddActionItemTaskParamsPostToSlackChannelsInner.md) |  |  [optional] |
|**pastDuration** | **String** | in format &#39;1 minute&#39;, &#39;30 days&#39;, &#39;3 months&#39;, etc |  |
|**metricQueries** | **List&lt;String&gt;** |  |  [optional] |
|**postToIncidentTimeline** | **Boolean** |  |  [optional] |
|**postToSlackChannels** | [**List&lt;AddActionItemTaskParamsPostToSlackChannelsInner&gt;**](AddActionItemTaskParamsPostToSlackChannelsInner.md) |  |  [optional] |



## Enum: TaskTypeEnum

| Name | Value |
|---- | -----|
| SNAPSHOT_DATADOG_GRAPH | &quot;snapshot_datadog_graph&quot; |




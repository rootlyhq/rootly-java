

# SnapshotNewRelicGraphTaskParams


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**taskType** | [**TaskTypeEnum**](#TaskTypeEnum) |  |  [optional] |
|**metricQuery** | **String** |  |  |
|**metricType** | [**MetricTypeEnum**](#MetricTypeEnum) |  |  |
|**postToIncidentTimeline** | **Boolean** |  |  [optional] |
|**postToSlackChannels** | [**List&lt;AddActionItemTaskParamsPostToSlackChannelsInner&gt;**](AddActionItemTaskParamsPostToSlackChannelsInner.md) |  |  [optional] |



## Enum: TaskTypeEnum

| Name | Value |
|---- | -----|
| SNAPSHOT_LOOKER_GRAPH | &quot;snapshot_looker_graph&quot; |



## Enum: MetricTypeEnum

| Name | Value |
|---- | -----|
| APDEX | &quot;APDEX&quot; |
| AREA | &quot;AREA&quot; |
| BAR | &quot;BAR&quot; |
| BASELINE | &quot;BASELINE&quot; |
| BILLBOARD | &quot;BILLBOARD&quot; |
| BULLET | &quot;BULLET&quot; |
| EVENT_FEED | &quot;EVENT_FEED&quot; |
| FUNNEL | &quot;FUNNEL&quot; |
| HEATMAP | &quot;HEATMAP&quot; |
| HISTOGRAM | &quot;HISTOGRAM&quot; |
| LINE | &quot;LINE&quot; |
| PIE | &quot;PIE&quot; |
| SCATTER | &quot;SCATTER&quot; |
| STACKED_HORIZONTAL_BAR | &quot;STACKED_HORIZONTAL_BAR&quot; |
| TABLE | &quot;TABLE&quot; |
| VERTICAL_BAR | &quot;VERTICAL_BAR&quot; |






# PublishIncidentTaskParams


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**taskType** | [**TaskTypeEnum**](#TaskTypeEnum) |  |  [optional] |
|**incident** | [**AddActionItemTaskParamsPostToSlackChannelsInner**](AddActionItemTaskParamsPostToSlackChannelsInner.md) |  |  |
|**publicTitle** | **String** |  |  |
|**event** | **String** | Incident event description |  [optional] |
|**status** | [**StatusEnum**](#StatusEnum) |  |  |
|**notifySubscribers** | **Boolean** | When true notifies subscribers of the status page by email/text |  [optional] |
|**shouldTweet** | **Boolean** | For Statuspage.io integrated pages auto publishes a tweet for your update |  [optional] |
|**statusPageTemplate** | [**AddActionItemTaskParamsPostToSlackChannelsInner**](AddActionItemTaskParamsPostToSlackChannelsInner.md) |  |  [optional] |
|**statusPageId** | **String** |  |  |
|**statusPageIds** | **List&lt;String&gt;** | Publishes the update to every listed status page. This field is in limited Early Access; contact Rootly Support to request access. When set, it takes precedence over status_page_id and the first entry becomes status_page_id. |  [optional] |
|**selectedComponentKeys** | **List&lt;String&gt;** | Composite \&quot;SourceType:&lt;id&gt;\&quot; keys of the status page components affected by the publish. This field is in Early Access and is not generally available; contact Rootly Support to request access. |  [optional] |
|**selectedComponentStatuses** | [**Map&lt;String, InnerEnum&gt;**](#Map&lt;String, InnerEnum&gt;) | Impact status to publish for each selected component key. Keys must match selected_component_keys entries. |  [optional] |
|**syncIncidentComponents** | **Boolean** | When true, every run also publishes the incident&#39;s tagged services and functionalities that are components on the target page. Defaults to true when selected_component_keys is empty. This field is in Early Access and is not generally available; contact Rootly Support to request access. |  [optional] |
|**syncedComponentStatus** | [**SyncedComponentStatusEnum**](#SyncedComponentStatusEnum) | Impact status published for components synced from the incident. Defaults to degraded_performance. A component also listed in selected_component_keys keeps its selected_component_statuses entry. |  [optional] |
|**integrationPayload** | **String** | Additional API Payload you can pass to statuspage.io for example. Can contain liquid markup and need to be valid JSON |  [optional] |



## Enum: TaskTypeEnum

| Name | Value |
|---- | -----|
| PUBLISH_INCIDENT | &quot;publish_incident&quot; |



## Enum: StatusEnum

| Name | Value |
|---- | -----|
| INVESTIGATING | &quot;investigating&quot; |
| IDENTIFIED | &quot;identified&quot; |
| MONITORING | &quot;monitoring&quot; |
| RESOLVED | &quot;resolved&quot; |
| SCHEDULED | &quot;scheduled&quot; |
| IN_PROGRESS | &quot;in_progress&quot; |
| COMPLETED | &quot;completed&quot; |



## Enum: Map&lt;String, InnerEnum&gt;

| Name | Value |
|---- | -----|
| OPERATIONAL | &quot;operational&quot; |
| DEGRADED_PERFORMANCE | &quot;degraded_performance&quot; |
| PARTIAL_OUTAGE | &quot;partial_outage&quot; |
| MAJOR_OUTAGE | &quot;major_outage&quot; |



## Enum: SyncedComponentStatusEnum

| Name | Value |
|---- | -----|
| OPERATIONAL | &quot;operational&quot; |
| DEGRADED_PERFORMANCE | &quot;degraded_performance&quot; |
| PARTIAL_OUTAGE | &quot;partial_outage&quot; |
| MAJOR_OUTAGE | &quot;major_outage&quot; |




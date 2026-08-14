

# NewIncidentStatusPageEventDataAttributes


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**event** | **String** | The summary of the incident event |  |
|**statusPageId** | **String** | Unique ID of the status page you wish to post the event to |  [optional] |
|**status** | [**StatusEnum**](#StatusEnum) | The status of the incident event |  [optional] |
|**notifySubscribers** | **Boolean** | Notify all status pages subscribers |  [optional] |
|**shouldTweet** | **Boolean** | For Statuspage.io integrated pages auto publishes a tweet for your update |  [optional] |
|**startedAt** | **OffsetDateTime** | When the event started. Defaults to the time of creation. |  [optional] |
|**statusPageComponents** | [**List&lt;NewIncidentStatusPageEventDataAttributesStatusPageComponentsInner&gt;**](NewIncidentStatusPageEventDataAttributesStatusPageComponentsInner.md) | Affected status page components and their statuses. Requires the status-page-v3-phase-1 feature. Ignored for terminal event statuses (resolved, completed), which clear component impact. A status is required per component except for scheduled maintenance incidents. |  [optional] |



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




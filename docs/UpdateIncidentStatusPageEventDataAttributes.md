

# UpdateIncidentStatusPageEventDataAttributes


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**event** | **String** | The summary of the incident event |  [optional] |
|**statusPageId** | **String** | Unique ID of the status page you wish to post the event to |  [optional] |
|**status** | [**StatusEnum**](#StatusEnum) | The status of the incident event |  [optional] |
|**notifySubscribers** | **Boolean** | Notify all status pages subscribers |  [optional] |
|**shouldTweet** | **Boolean** | For Statuspage.io integrated pages auto publishes a tweet for your update |  [optional] |



## Enum: StatusEnum

| Name | Value |
|---- | -----|
| INVESTIGATING | &quot;investigating&quot; |
| IDENTIFIED | &quot;identified&quot; |
| MONITORING | &quot;monitoring&quot; |
| RESOLVED | &quot;resolved&quot; |
| SCHEDULED | &quot;scheduled&quot; |
| IN_PROGRESS | &quot;in_progress&quot; |
| VERIFYING | &quot;verifying&quot; |
| COMPLETED | &quot;completed&quot; |




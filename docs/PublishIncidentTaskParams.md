

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
| VERIFYING | &quot;verifying&quot; |
| COMPLETED | &quot;completed&quot; |




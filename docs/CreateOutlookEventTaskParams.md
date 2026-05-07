

# CreateOutlookEventTaskParams


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**taskType** | [**TaskTypeEnum**](#TaskTypeEnum) |  |  [optional] |
|**calendar** | [**AddActionItemTaskParamsPostToSlackChannelsInner**](AddActionItemTaskParamsPostToSlackChannelsInner.md) |  |  |
|**attendees** | **List&lt;String&gt;** | Emails of attendees |  [optional] |
|**timeZone** | **String** | A valid IANA time zone name. |  [optional] |
|**daysUntilMeeting** | **Integer** | The days until meeting |  |
|**timeOfMeeting** | **String** | Time of meeting in format HH:MM |  |
|**meetingDuration** | **String** | Meeting duration in format like &#39;1 hour&#39;, &#39;30 minutes&#39; |  |
|**summary** | **String** | The event summary |  |
|**description** | **String** | The event description |  |
|**excludeWeekends** | **Boolean** |  |  [optional] |
|**enableOnlineMeeting** | **Boolean** | Enable Microsoft Teams online meeting |  [optional] |
|**postToIncidentTimeline** | **Boolean** |  |  [optional] |
|**postToSlackChannels** | [**List&lt;AddActionItemTaskParamsPostToSlackChannelsInner&gt;**](AddActionItemTaskParamsPostToSlackChannelsInner.md) |  |  [optional] |



## Enum: TaskTypeEnum

| Name | Value |
|---- | -----|
| CREATE_OUTLOOK_EVENT | &quot;create_outlook_event&quot; |




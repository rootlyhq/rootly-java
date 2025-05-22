

# CreateWebexMeetingTaskParams


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**taskType** | [**TaskTypeEnum**](#TaskTypeEnum) |  |  [optional] |
|**topic** | **String** | The meeting topic |  |
|**password** | **String** | The meeting password |  [optional] |
|**recordMeeting** | **Boolean** | Rootly AI will record the meeting and automatically generate a transcript and summary from your meeting |  [optional] |
|**postToIncidentTimeline** | **Boolean** |  |  [optional] |
|**postToSlackChannels** | [**List&lt;AddActionItemTaskParamsPostToSlackChannelsInner&gt;**](AddActionItemTaskParamsPostToSlackChannelsInner.md) |  |  [optional] |



## Enum: TaskTypeEnum

| Name | Value |
|---- | -----|
| CREATE_WEBEX_MEETING | &quot;create_webex_meeting&quot; |




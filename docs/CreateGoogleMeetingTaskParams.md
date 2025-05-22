

# CreateGoogleMeetingTaskParams


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**taskType** | [**TaskTypeEnum**](#TaskTypeEnum) |  |  [optional] |
|**summary** | **String** | [DEPRECATED] The meeting summary |  |
|**description** | **String** | [DEPRECATED] The meeting description |  |
|**conferenceSolutionKey** | [**ConferenceSolutionKeyEnum**](#ConferenceSolutionKeyEnum) | [DEPRECATED] Sets the video conference type attached to the meeting |  [optional] |
|**recordMeeting** | **Boolean** | Rootly AI will record the meeting and automatically generate a transcript and summary from your meeting |  [optional] |
|**postToIncidentTimeline** | **Boolean** |  |  [optional] |
|**postToSlackChannels** | [**List&lt;AddActionItemTaskParamsPostToSlackChannelsInner&gt;**](AddActionItemTaskParamsPostToSlackChannelsInner.md) |  |  [optional] |



## Enum: TaskTypeEnum

| Name | Value |
|---- | -----|
| CREATE_GOOGLE_MEETING | &quot;create_google_meeting&quot; |



## Enum: ConferenceSolutionKeyEnum

| Name | Value |
|---- | -----|
| EVENT_HANGOUT | &quot;eventHangout&quot; |
| EVENT_NAMED_HANGOUT | &quot;eventNamedHangout&quot; |
| HANGOUTS_MEET | &quot;hangoutsMeet&quot; |
| ADD_ON | &quot;addOn&quot; |




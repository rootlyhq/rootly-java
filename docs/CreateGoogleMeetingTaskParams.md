

# CreateGoogleMeetingTaskParams


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**taskType** | [**TaskTypeEnum**](#TaskTypeEnum) |  |  [optional] |
|**summary** | **String** | [DEPRECATED] The meeting summary |  |
|**description** | **String** | [DEPRECATED] The meeting description |  |
|**conferenceSolutionKey** | [**ConferenceSolutionKeyEnum**](#ConferenceSolutionKeyEnum) | [DEPRECATED] Sets the video conference type attached to the meeting |  [optional] |
|**recordMeeting** | **Boolean** | Rootly AI will record the meeting and automatically generate a transcript and summary from your meeting |  [optional] |
|**recordingMode** | [**RecordingModeEnum**](#RecordingModeEnum) | The video layout for the bot&#39;s recording (e.g. speaker_view, gallery_view, gallery_view_v2, audio_only) |  [optional] |
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



## Enum: RecordingModeEnum

| Name | Value |
|---- | -----|
| SPEAKER_VIEW | &quot;speaker_view&quot; |
| GALLERY_VIEW | &quot;gallery_view&quot; |
| GALLERY_VIEW_V2 | &quot;gallery_view_v2&quot; |
| AUDIO_ONLY | &quot;audio_only&quot; |




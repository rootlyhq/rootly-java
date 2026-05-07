

# CreateZoomMeetingTaskParams


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**taskType** | [**TaskTypeEnum**](#TaskTypeEnum) |  |  [optional] |
|**topic** | **String** | The meeting topic |  |
|**password** | **String** | The meeting password |  [optional] |
|**createAsEmail** | **String** | The email to use if creating as email |  [optional] |
|**alternativeHosts** | **List&lt;String&gt;** |  |  [optional] |
|**autoRecording** | [**AutoRecordingEnum**](#AutoRecordingEnum) |  |  [optional] |
|**recordMeeting** | **Boolean** | Rootly AI will record the meeting and automatically generate a transcript and summary from your meeting |  [optional] |
|**recordingMode** | [**RecordingModeEnum**](#RecordingModeEnum) | The video layout for the bot&#39;s recording (e.g. speaker_view, gallery_view, gallery_view_v2, audio_only) |  [optional] |
|**postToIncidentTimeline** | **Boolean** |  |  [optional] |
|**postToSlackChannels** | [**List&lt;AddActionItemTaskParamsPostToSlackChannelsInner&gt;**](AddActionItemTaskParamsPostToSlackChannelsInner.md) |  |  [optional] |



## Enum: TaskTypeEnum

| Name | Value |
|---- | -----|
| CREATE_ZOOM_MEETING | &quot;create_zoom_meeting&quot; |



## Enum: AutoRecordingEnum

| Name | Value |
|---- | -----|
| NONE | &quot;none&quot; |
| LOCAL | &quot;local&quot; |
| CLOUD | &quot;cloud&quot; |



## Enum: RecordingModeEnum

| Name | Value |
|---- | -----|
| SPEAKER_VIEW | &quot;speaker_view&quot; |
| GALLERY_VIEW | &quot;gallery_view&quot; |
| GALLERY_VIEW_V2 | &quot;gallery_view_v2&quot; |
| AUDIO_ONLY | &quot;audio_only&quot; |




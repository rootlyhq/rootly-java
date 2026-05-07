

# MeetingRecording


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**platform** | [**PlatformEnum**](#PlatformEnum) | Meeting platform |  |
|**sessionNumber** | **Integer** | Session number within the incident for this platform (starts at 1, increments on re-invite) |  |
|**status** | [**StatusEnum**](#StatusEnum) | Current recording lifecycle status |  |
|**startedAt** | **OffsetDateTime** | When the bot started recording (null if bot never joined) |  [optional] |
|**endedAt** | **OffsetDateTime** | When the recording ended |  [optional] |
|**durationMinutes** | **BigDecimal** | Recording duration in minutes (null if not started) |  [optional] |
|**speakerCount** | **Integer** | Number of unique speakers detected in the transcript |  [optional] |
|**wordCount** | **Integer** | Total word count across all transcript segments |  [optional] |
|**transcriptSummary** | **String** | AI-generated summary of the meeting transcript (null if no transcript or not yet analyzed) |  [optional] |
|**hasVideo** | **Boolean** | Whether a video recording file is attached |  [optional] |
|**createdAt** | **OffsetDateTime** | When the recording session was created |  |
|**updatedAt** | **OffsetDateTime** | When the recording session was last updated |  |



## Enum: PlatformEnum

| Name | Value |
|---- | -----|
| ZOOM | &quot;zoom&quot; |
| GOOGLE_MEET | &quot;google_meet&quot; |
| MICROSOFT_TEAMS | &quot;microsoft_teams&quot; |
| WEBEX | &quot;webex&quot; |



## Enum: StatusEnum

| Name | Value |
|---- | -----|
| PENDING | &quot;pending&quot; |
| RECORDING | &quot;recording&quot; |
| PAUSED | &quot;paused&quot; |
| CALL_ENDED | &quot;call_ended&quot; |
| ANALYZING | &quot;analyzing&quot; |
| COMPLETED | &quot;completed&quot; |
| FAILED | &quot;failed&quot; |




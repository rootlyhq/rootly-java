

# ImportMeetingRecording


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**source** | [**SourceEnum**](#SourceEnum) | Import source (currently only \&quot;recall_desktop_sdk\&quot;) |  |
|**recallRecordingId** | **UUID** | External recording UUID (required when source is recall_desktop_sdk) |  |
|**platform** | [**PlatformEnum**](#PlatformEnum) | Meeting platform |  |
|**startedAt** | **OffsetDateTime** | When the recording started |  [optional] |
|**endedAt** | **OffsetDateTime** | When the recording ended |  [optional] |
|**meetingUrl** | **String** | Original meeting URL |  [optional] |



## Enum: SourceEnum

| Name | Value |
|---- | -----|
| RECALL_DESKTOP_SDK | &quot;recall_desktop_sdk&quot; |



## Enum: PlatformEnum

| Name | Value |
|---- | -----|
| ZOOM | &quot;zoom&quot; |
| GOOGLE_MEET | &quot;google_meet&quot; |
| MICROSOFT_TEAMS | &quot;microsoft_teams&quot; |
| WEBEX | &quot;webex&quot; |






# CreateMicrosoftTeamsMeetingTaskParams


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**taskType** | [**TaskTypeEnum**](#TaskTypeEnum) |  |  [optional] |
|**name** | **String** | The meeting name |  |
|**subject** | **String** | The meeting subject |  |
|**recordMeeting** | **Boolean** | Rootly AI will record the meeting and automatically generate a transcript and summary from your meeting |  [optional] |
|**postToIncidentTimeline** | **Boolean** |  |  [optional] |
|**postToSlackChannels** | [**List&lt;AddActionItemTaskParamsPostToSlackChannelsInner&gt;**](AddActionItemTaskParamsPostToSlackChannelsInner.md) |  |  [optional] |



## Enum: TaskTypeEnum

| Name | Value |
|---- | -----|
| CREATE_MICROSOFT_TEAMS_MEETING | &quot;create_microsoft_teams_meeting&quot; |




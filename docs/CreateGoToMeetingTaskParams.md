

# CreateGoToMeetingTaskParams


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**taskType** | [**TaskTypeEnum**](#TaskTypeEnum) |  |  [optional] |
|**subject** | **String** | The meeting subject |  |
|**conferenceCallInfo** | [**ConferenceCallInfoEnum**](#ConferenceCallInfoEnum) |  |  [optional] |
|**passwordRequired** | **Boolean** |  |  [optional] |
|**postToIncidentTimeline** | **Boolean** |  |  [optional] |
|**postToSlackChannels** | [**List&lt;AddActionItemTaskParamsPostToSlackChannelsInner&gt;**](AddActionItemTaskParamsPostToSlackChannelsInner.md) |  |  [optional] |



## Enum: TaskTypeEnum

| Name | Value |
|---- | -----|
| CREATE_GO_TO_MEETING_TASK | &quot;create_go_to_meeting_task&quot; |



## Enum: ConferenceCallInfoEnum

| Name | Value |
|---- | -----|
| PTSN | &quot;ptsn&quot; |
| FREE | &quot;free&quot; |
| HYRID | &quot;hyrid&quot; |
| VOIP | &quot;voip&quot; |




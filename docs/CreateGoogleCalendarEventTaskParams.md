

# CreateGoogleCalendarEventTaskParams


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**taskType** | [**TaskTypeEnum**](#TaskTypeEnum) |  |  [optional] |
|**attendees** | **List&lt;String&gt;** | Emails of attendees |  [optional] |
|**timeZone** | **String** | A valid IANA time zone name. |  [optional] |
|**calendarId** | **String** |  |  [optional] |
|**daysUntilMeeting** | **Integer** | The days until meeting |  |
|**timeOfMeeting** | **String** | Time of meeting in format HH:MM |  |
|**meetingDuration** | **String** | Meeting duration in format like &#39;1 hour&#39;, &#39;30 minutes&#39; |  |
|**sendUpdates** | **Boolean** | Send an email to the attendees notifying them of the event |  [optional] |
|**canGuestsModifyEvent** | **Boolean** |  |  [optional] |
|**canGuestsSeeOtherGuests** | **Boolean** |  |  [optional] |
|**canGuestsInviteOthers** | **Boolean** |  |  [optional] |
|**summary** | **String** | The event summary |  |
|**description** | **String** | The event description |  |
|**excludeWeekends** | **Boolean** |  |  [optional] |
|**conferenceSolutionKey** | [**ConferenceSolutionKeyEnum**](#ConferenceSolutionKeyEnum) | Sets the video conference type attached to the meeting |  [optional] |
|**postToIncidentTimeline** | **Boolean** |  |  [optional] |
|**postToSlackChannels** | [**List&lt;AddActionItemTaskParamsPostToSlackChannelsInner&gt;**](AddActionItemTaskParamsPostToSlackChannelsInner.md) |  |  [optional] |



## Enum: TaskTypeEnum

| Name | Value |
|---- | -----|
| CREATE_GOOGLE_CALENDAR_EVENT | &quot;create_google_calendar_event&quot; |



## Enum: ConferenceSolutionKeyEnum

| Name | Value |
|---- | -----|
| EVENT_HANGOUT | &quot;eventHangout&quot; |
| EVENT_NAMED_HANGOUT | &quot;eventNamedHangout&quot; |
| HANGOUTS_MEET | &quot;hangoutsMeet&quot; |
| ADD_ON | &quot;addOn&quot; |




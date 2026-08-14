

# Schedule


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**name** | **String** | The name of the schedule |  |
|**description** | **String** | The description of the schedule |  [optional] |
|**allTimeCoverage** | **Boolean** | 24/7 coverage of the schedule |  [optional] |
|**slackUserGroup** | [**ScheduleSlackUserGroup**](ScheduleSlackUserGroup.md) |  |  [optional] |
|**slackChannel** | [**ScheduleSlackChannel**](ScheduleSlackChannel.md) |  |  [optional] |
|**ownerGroupIds** | **List&lt;String&gt;** | Owning teams. |  [optional] |
|**ownerUserId** | **Integer** | ID of user assigned as owner of the schedule |  |
|**syncLinearEnabled** | **Boolean** | Whether the schedule is synced with Linear |  [optional] |
|**includeShadowsInSlackNotifications** | **Boolean** | Whether shadow users are included in Slack notifications and user group syncing. Requires &#x60;slack_channel&#x60; to be set; otherwise this value is forced to false on save. |  [optional] |
|**shiftStartNotificationsEnabled** | **Boolean** | Whether shift-start notifications are enabled. Requires &#x60;slack_channel&#x60; to be set; otherwise this value is forced to false on save. |  [optional] |
|**shiftUpdateNotificationsEnabled** | **Boolean** | Whether shift-update notifications are enabled. Requires &#x60;slack_channel&#x60; to be set; otherwise this value is forced to false on save. |  [optional] |
|**shiftReportEnabled** | **Boolean** | Whether the weekly shift summary report is enabled. Requires &#x60;slack_channel&#x60; to be set; otherwise this value is forced to false on save. |  [optional] |
|**shiftReportDayOfWeek** | [**ShiftReportDayOfWeekEnum**](#ShiftReportDayOfWeekEnum) | Day of week the weekly shift summary is sent |  [optional] |
|**shiftReportTimeOfDay** | **String** | Time of day the weekly shift summary is sent, in HH:MM 24-hour format |  [optional] |
|**shiftReportTimeZone** | **String** | IANA time zone used for the weekly shift summary |  [optional] |
|**createdAt** | **String** | Date of creation |  |
|**updatedAt** | **String** | Date of last update |  |



## Enum: ShiftReportDayOfWeekEnum

| Name | Value |
|---- | -----|
| MONDAY | &quot;monday&quot; |
| TUESDAY | &quot;tuesday&quot; |
| WEDNESDAY | &quot;wednesday&quot; |
| THURSDAY | &quot;thursday&quot; |
| FRIDAY | &quot;friday&quot; |
| SATURDAY | &quot;saturday&quot; |
| SUNDAY | &quot;sunday&quot; |




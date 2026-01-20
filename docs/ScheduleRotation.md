

# ScheduleRotation


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**scheduleId** | **String** | The ID of parent schedule |  |
|**name** | **String** | The name of the schedule rotation |  |
|**position** | **Integer** | Position of the schedule rotation |  [optional] |
|**scheduleRotationableType** | [**ScheduleRotationableTypeEnum**](#ScheduleRotationableTypeEnum) | Schedule rotation type |  |
|**activeAllWeek** | **Boolean** | Schedule rotation active all week? |  [optional] |
|**activeDays** | [**List&lt;ActiveDaysEnum&gt;**](#List&lt;ActiveDaysEnum&gt;) |  |  [optional] |
|**activeTimeType** | [**List&lt;ActiveTimeTypeEnum&gt;**](#List&lt;ActiveTimeTypeEnum&gt;) |  |  [optional] |
|**activeTimeAttributes** | [**List&lt;NewScheduleRotationDataAttributesActiveTimeAttributesInner&gt;**](NewScheduleRotationDataAttributesActiveTimeAttributesInner.md) | Schedule rotation&#39;s active times |  [optional] |
|**timeZone** | **String** | A valid IANA time zone name. |  [optional] |
|**scheduleRotationableAttributes** | [**NewScheduleRotationDataAttributesScheduleRotationableAttributes**](NewScheduleRotationDataAttributesScheduleRotationableAttributes.md) |  |  |
|**startTime** | **LocalDate** | ISO8601 date and time when rotation starts. Shifts will only be created after this time. |  [optional] |
|**endTime** | **LocalDate** | ISO8601 date and time when rotation ends. Shifts will only be created before this time. |  [optional] |



## Enum: ScheduleRotationableTypeEnum

| Name | Value |
|---- | -----|
| SCHEDULE_DAILY_ROTATION | &quot;ScheduleDailyRotation&quot; |
| SCHEDULE_WEEKLY_ROTATION | &quot;ScheduleWeeklyRotation&quot; |
| SCHEDULE_BIWEEKLY_ROTATION | &quot;ScheduleBiweeklyRotation&quot; |
| SCHEDULE_MONTHLY_ROTATION | &quot;ScheduleMonthlyRotation&quot; |
| SCHEDULE_CUSTOM_ROTATION | &quot;ScheduleCustomRotation&quot; |



## Enum: List&lt;ActiveDaysEnum&gt;

| Name | Value |
|---- | -----|
| S | &quot;S&quot; |
| M | &quot;M&quot; |
| T | &quot;T&quot; |
| W | &quot;W&quot; |
| R | &quot;R&quot; |
| F | &quot;F&quot; |
| U | &quot;U&quot; |



## Enum: List&lt;ActiveTimeTypeEnum&gt;

| Name | Value |
|---- | -----|
| ALL_DAY | &quot;all_day&quot; |
| SAME_TIME | &quot;same_time&quot; |
| CUSTOM | &quot;custom&quot; |




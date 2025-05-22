

# NewScheduleRotationDataAttributesScheduleRotationableAttributes


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**handoffTime** | **String** | Hand off time for custom rotation. Use minutes for hourly rotation. |  |
|**handoffDay** | [**HandoffDayEnum**](#HandoffDayEnum) | Hand off day for monthly rotation |  |
|**shiftLength** | **Integer** | Shift length for custom rotation |  |
|**shiftLengthUnit** | [**ShiftLengthUnitEnum**](#ShiftLengthUnitEnum) | Shift length unit for custom rotation |  |



## Enum: HandoffDayEnum

| Name | Value |
|---- | -----|
| FIRST_DAY_OF_MONTH | &quot;first_day_of_month&quot; |
| LAST_DAY_OF_MONTH | &quot;last_day_of_month&quot; |



## Enum: ShiftLengthUnitEnum

| Name | Value |
|---- | -----|
| HOURS | &quot;hours&quot; |
| DAYS | &quot;days&quot; |
| WEEKS | &quot;weeks&quot; |




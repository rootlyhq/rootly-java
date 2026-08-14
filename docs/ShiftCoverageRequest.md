

# ShiftCoverageRequest


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**scheduleId** | **String** | ID of schedule |  |
|**shiftId** | **String** | ID of the shift being covered |  |
|**originalShiftUserId** | **Integer** | ID of the user whose shift is being covered |  |
|**createdByUserId** | **Integer** | ID of the user who created the coverage request |  |
|**startsAt** | **String** | Start datetime of the coverage request |  |
|**endsAt** | **String** | End datetime of the coverage request |  |
|**createdAt** | **String** | Date of creation |  [optional] |
|**updatedAt** | **String** | Date of last update |  [optional] |
|**schedule** | [**ScheduleResponse**](ScheduleResponse.md) | Schedule metadata |  [optional] |
|**shift** | [**Shift**](Shift.md) | Shift metadata |  [optional] |
|**originalShiftUser** | [**UserResponse**](UserResponse.md) | User whose shift is being covered |  [optional] |
|**createdByUser** | [**UserResponse**](UserResponse.md) | User who created the coverage request |  [optional] |




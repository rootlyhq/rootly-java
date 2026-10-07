

# Shift


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**scheduleId** | **String** | ID of schedule |  |
|**rotationId** | **String** | ID of rotation |  |
|**startsAt** | **String** | Start datetime of shift |  |
|**endsAt** | **String** | End datetime of shift |  |
|**isOverride** | **Boolean** | Denotes shift is an override shift |  |
|**isShadow** | **Boolean** | Denotes shift is a shadow shift |  |
|**userId** | **Integer** | ID of user on shift |  [optional] |
|**overriddenShifts** | [**List&lt;OverriddenShift&gt;**](OverriddenShift.md) | For override shifts, the portions of the regular shifts this override replaces, clipped to the override window. Null for non-override shifts. Available when overridden shifts are enabled for the organization. |  [optional] |




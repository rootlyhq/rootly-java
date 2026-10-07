

# NewShiftCoverageRequestDataAttributes


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**startsAt** | **OffsetDateTime** | Start datetime of the time range to request coverage for |  |
|**endsAt** | **OffsetDateTime** | End datetime of the time range to request coverage for |  |
|**userId** | **Integer** | Optional. Restrict coverage to shifts assigned to this user. When omitted, every shift overlapping the time range is covered. |  [optional] |
|**recipientUserIds** | **List&lt;Integer&gt;** | Optional. Notify selected active schedule members for every covered shift when targeted-shift-coverage is enabled. Recipients must be eligible for each shift. Omitted, empty, or flag-disabled selections broadcast. |  [optional] |




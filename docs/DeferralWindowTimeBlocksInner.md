

# DeferralWindowTimeBlocksInner


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**id** | **String** | Unique ID of the time block |  [optional] [readonly] |
|**monday** | **Boolean** |  |  [optional] |
|**tuesday** | **Boolean** |  |  [optional] |
|**wednesday** | **Boolean** |  |  [optional] |
|**thursday** | **Boolean** |  |  [optional] |
|**friday** | **Boolean** |  |  [optional] |
|**saturday** | **Boolean** |  |  [optional] |
|**sunday** | **Boolean** |  |  [optional] |
|**startTime** | **String** | Formatted as HH:MM |  [optional] |
|**endTime** | **String** | Formatted as HH:MM |  [optional] |
|**allDay** | **Boolean** |  |  [optional] |
|**position** | **Integer** | Order of this time block, starting at 1. Defaults to the block&#39;s 1-based position in time_blocks when omitted. |  [optional] |
|**endsNextDay** | **Boolean** | Whether the window crosses midnight. Derived from start_time and end_time; accepted and ignored on write. |  [optional] [readonly] |






# SlaNotificationConfigurationsInner


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**id** | **UUID** | Unique ID of the notification configuration |  [optional] |
|**offsetType** | [**OffsetTypeEnum**](#OffsetTypeEnum) | When to send the notification relative to the deadline |  [optional] |
|**offsetDays** | **Integer** | Number of days offset from the deadline |  [optional] |
|**createdAt** | **String** | Date of creation |  [optional] |
|**updatedAt** | **String** | Date of last update |  [optional] |



## Enum: OffsetTypeEnum

| Name | Value |
|---- | -----|
| BEFORE_DUE | &quot;before_due&quot; |
| WHEN_DUE | &quot;when_due&quot; |
| AFTER_DUE | &quot;after_due&quot; |




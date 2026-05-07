

# NewSlaDataAttributesNotificationConfigurationsInner


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**offsetType** | [**OffsetTypeEnum**](#OffsetTypeEnum) | When to send the notification relative to the deadline |  |
|**offsetDays** | **Integer** | Number of days before or after the deadline. Must be 0 for when_due. |  |



## Enum: OffsetTypeEnum

| Name | Value |
|---- | -----|
| BEFORE_DUE | &quot;before_due&quot; |
| WHEN_DUE | &quot;when_due&quot; |
| AFTER_DUE | &quot;after_due&quot; |




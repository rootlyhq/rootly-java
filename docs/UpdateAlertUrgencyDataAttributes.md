

# UpdateAlertUrgencyDataAttributes


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**name** | **String** | The name of the alert urgency |  [optional] |
|**description** | **String** | The description of the alert urgency |  [optional] |
|**position** | **Integer** | Position of the alert urgency |  [optional] |
|**retriggerTimeoutMinutes** | [**RetriggerTimeoutMinutesEnum**](#RetriggerTimeoutMinutesEnum) | Re-trigger acknowledged alerts of this urgency after N minutes; null inherits the workspace default, -1 &#x3D; never. |  [optional] |



## Enum: RetriggerTimeoutMinutesEnum

| Name | Value |
|---- | -----|
| NUMBER_MINUS_1 | -1 |
| NUMBER_10 | 10 |
| NUMBER_20 | 20 |
| NUMBER_30 | 30 |
| NUMBER_40 | 40 |
| NUMBER_50 | 50 |
| NUMBER_60 | 60 |
| NUMBER_90 | 90 |
| NUMBER_120 | 120 |
| NUMBER_180 | 180 |
| NUMBER_240 | 240 |
| NUMBER_300 | 300 |
| NUMBER_360 | 360 |
| NUMBER_720 | 720 |
| NUMBER_1440 | 1440 |




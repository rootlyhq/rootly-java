

# UpdateAlertConfigurationDataAttributesAlertAcknowledgment

Re-trigger behaviour for acknowledged alerts. Replaces the stored object as a whole.

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**timeoutEnabled** | **Boolean** | Re-trigger an acknowledged alert after the timeout. |  [optional] |
|**timeoutMinutes** | [**TimeoutMinutesEnum**](#TimeoutMinutesEnum) | Minutes before an acknowledged alert re-triggers. |  [optional] |
|**retriggerManualAlerts** | **Boolean** | Whether alerts created from a manual page also re-trigger. Changing it is rejected with 422 until the manual page re-trigger opt-out is enabled for the team. |  [optional] |



## Enum: TimeoutMinutesEnum

| Name | Value |
|---- | -----|
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




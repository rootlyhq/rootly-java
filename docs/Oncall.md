

# Oncall


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**escalationPolicyId** | **String** | ID of the escalation policy |  |
|**escalationPolicyName** | **String** | Name of the escalation policy |  |
|**escalationPolicyPathId** | **String** | ID of the escalation policy path |  [optional] |
|**escalationPolicyPathName** | **String** | Name of the escalation policy path |  [optional] |
|**notificationType** | [**NotificationTypeEnum**](#NotificationTypeEnum) | Notification type of the escalation path (audible or quiet) |  [optional] |
|**isDefaultPath** | **Boolean** | Whether this is the default escalation path |  [optional] |
|**escalationLevel** | **Integer** | Level within the escalation policy |  [optional] |
|**scheduleId** | **String** | ID of the schedule |  [optional] |
|**scheduleName** | **String** | Name of the schedule |  [optional] |
|**userId** | **Integer** | ID of the on-call user |  |
|**startsAt** | **OffsetDateTime** | Start datetime of the on-call shift |  |
|**endsAt** | **OffsetDateTime** | End datetime of the on-call shift |  |



## Enum: NotificationTypeEnum

| Name | Value |
|---- | -----|
| AUDIBLE | &quot;audible&quot; |
| QUIET | &quot;quiet&quot; |




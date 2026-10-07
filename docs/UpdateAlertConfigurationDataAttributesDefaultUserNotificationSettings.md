

# UpdateAlertConfigurationDataAttributesDefaultUserNotificationSettings

Channel defaults for new users, per urgency level. Omitted levels keep the built-in defaults; existing users are never changed. Present and accepted only while org-default-notification-settings is on for the team.

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**audibleContactTypes** | [**Set&lt;AudibleContactTypesEnum&gt;**](#Set&lt;AudibleContactTypesEnum&gt;) | Channels enabled on a newly created user&#39;s audible notification rule. At least one channel is required. |  [optional] |
|**quietContactTypes** | [**Set&lt;QuietContactTypesEnum&gt;**](#Set&lt;QuietContactTypesEnum&gt;) | Channels enabled on a newly created user&#39;s quiet notification rule. At least one channel is required. |  [optional] |



## Enum: Set&lt;AudibleContactTypesEnum&gt;

| Name | Value |
|---- | -----|
| EMAIL | &quot;email&quot; |
| DEVICE | &quot;device&quot; |
| SMS | &quot;sms&quot; |
| CALL | &quot;call&quot; |



## Enum: Set&lt;QuietContactTypesEnum&gt;

| Name | Value |
|---- | -----|
| EMAIL | &quot;email&quot; |
| NON_CRITICAL_DEVICE | &quot;non_critical_device&quot; |
| SMS | &quot;sms&quot; |
| CALL | &quot;call&quot; |




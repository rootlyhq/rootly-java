

# UpdateUserNotificationRuleDataAttributes


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**delay** | **Integer** | Delay after which rule gets triggered |  [optional] |
|**position** | **Integer** | Position of the rule |  [optional] |
|**userEmailAddressId** | **String** | User email address to which notification to be sent |  [optional] |
|**userCallNumberId** | **String** | User phone number to which notification to be sent |  [optional] |
|**userSmsNumberId** | **String** | User sms number to which notification to be sent |  [optional] |
|**userDeviceId** | **String** | User device to which notification to be sent |  [optional] |
|**enabledContactTypes** | [**List&lt;EnabledContactTypesEnum&gt;**](#List&lt;EnabledContactTypesEnum&gt;) | Contact types for which notification needs to be enabled |  [optional] |



## Enum: List&lt;EnabledContactTypesEnum&gt;

| Name | Value |
|---- | -----|
| EMAIL | &quot;email&quot; |
| SMS | &quot;sms&quot; |
| CALL | &quot;call&quot; |
| DEVICE | &quot;device&quot; |
| NON_CRITICAL_DEVICE | &quot;non_critical_device&quot; |
| SLACK | &quot;slack&quot; |




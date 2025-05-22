

# NewEscalationPolicyDataAttributes


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**name** | **String** | The name of the escalation policy |  |
|**description** | **String** | The description of the escalation policy |  [optional] |
|**repeatCount** | **Integer** | The number of times this policy will be executed until someone acknowledges the alert |  [optional] |
|**groupIds** | **List&lt;String&gt;** | Associated groups (alerting the group will trigger escalation policy) |  [optional] |
|**serviceIds** | **List&lt;String&gt;** | Associated services (alerting the service will trigger escalation policy) |  [optional] |
|**businessHours** | [**NewEscalationPolicyDataAttributesBusinessHours**](NewEscalationPolicyDataAttributesBusinessHours.md) |  |  [optional] |






# EscalateAlertDataAttributes


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**escalationPolicyId** | **String** | The ID of the escalation policy to escalate to. If omitted, uses the alert&#39;s current escalation policy from metadata. Required for resolved alerts whose metadata may have been cleared. |  [optional] |
|**escalationPolicyLevel** | **Integer** | The escalation policy level to escalate to. If omitted, defaults to the next level (same EP) or level 1 (different EP). |  [optional] |




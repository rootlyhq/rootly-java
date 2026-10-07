

# AlertConfiguration


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**alertAcknowledgment** | [**UpdateAlertConfigurationDataAttributesAlertAcknowledgment**](UpdateAlertConfigurationDataAttributesAlertAcknowledgment.md) |  |  [optional] |
|**manualPagingFormSettings** | [**List&lt;ManualPagingFormSettingsEnum&gt;**](#List&lt;ManualPagingFormSettingsEnum&gt;) | Stored entity types for the manual paging form, as configured; at least one is required. The form itself may hide a type the team cannot use yet, such as functionality. |  [optional] |
|**manualPagingUrgencyIds** | **List&lt;UUID&gt;** | Alert urgency ids allowed when manually paging. Empty means all; deleted urgencies are left out. Present and accepted only while the manual-page-urgency-allowlist feature is on for the team. |  [optional] |
|**defaultUserNotificationSettings** | [**UpdateAlertConfigurationDataAttributesDefaultUserNotificationSettings**](UpdateAlertConfigurationDataAttributesDefaultUserNotificationSettings.md) |  |  [optional] |
|**createdAt** | **OffsetDateTime** |  |  [optional] |
|**updatedAt** | **OffsetDateTime** |  |  [optional] |



## Enum: List&lt;ManualPagingFormSettingsEnum&gt;

| Name | Value |
|---- | -----|
| USER | &quot;user&quot; |
| TEAM | &quot;team&quot; |
| SERVICE | &quot;service&quot; |
| FUNCTIONALITY | &quot;functionality&quot; |
| ESCALATION_POLICY | &quot;escalation_policy&quot; |




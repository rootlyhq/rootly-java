

# NewAlertsSourceDataAttributesSourceableAttributes

Provide additional attributes for the underlying source. `auto_resolve`, `resolve_state` and `field_mappings_attributes` apply to generic_webhook sources; `accept_threaded_emails`, `notification_target_type` and `notification_target_id` apply to email sources.

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**autoResolve** | **Boolean** | Set this to true to auto-resolve alerts based on field_mappings_attributes conditions |  [optional] |
|**resolveState** | **String** | This value is matched with the value extracted from alerts payload using JSON path in field_mappings_attributes |  [optional] |
|**acceptThreadedEmails** | **Boolean** | Set this to false to reject threaded emails |  [optional] |
|**notificationTargetType** | [**NotificationTargetTypeEnum**](#NotificationTargetTypeEnum) | Email sources only. The type of the notification target every alert from this source pages directly; While it points to an active, pageable target, Alert Routes are not evaluated. Only used when the &#x60;email-alert-source-notification-target&#x60; feature flag is on for the team. |  [optional] |
|**notificationTargetId** | **String** | Email sources only. The ID of the notification target. Set to null to clear it; this also clears &#x60;notification_target_type&#x60;. Only used when the &#x60;email-alert-source-notification-target&#x60; feature flag is on for the team. |  [optional] |
|**fieldMappingsAttributes** | [**List&lt;NewAlertsSourceDataAttributesSourceableAttributesFieldMappingsAttributesInner&gt;**](NewAlertsSourceDataAttributesSourceableAttributesFieldMappingsAttributesInner.md) | Specify rules to auto resolve alerts |  [optional] |



## Enum: NotificationTargetTypeEnum

| Name | Value |
|---- | -----|
| ESCALATION_POLICY | &quot;EscalationPolicy&quot; |
| GROUP | &quot;Group&quot; |
| SERVICE | &quot;Service&quot; |
| FUNCTIONALITY | &quot;Functionality&quot; |
| USER | &quot;User&quot; |




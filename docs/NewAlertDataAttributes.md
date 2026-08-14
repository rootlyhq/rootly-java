

# NewAlertDataAttributes


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**noise** | [**NoiseEnum**](#NoiseEnum) | Whether the alert is marked as noise |  [optional] |
|**source** | **String** | Deprecated. Accepted for backwards compatibility; new clients should omit. Defaults to &#x60;api&#x60;. |  [optional] |
|**status** | [**StatusEnum**](#StatusEnum) | Only available for organizations with Rootly On-Call enabled. Can be one of open, triggered. |  [optional] |
|**summary** | **String** | The summary of the alert |  |
|**description** | **String** | The description of the alert |  [optional] |
|**serviceIds** | **List&lt;String&gt;** | The Service IDs to attach to the alert. If your organization has On-Call enabled and your notification target is a Service. This field will be automatically set for you. |  [optional] |
|**groupIds** | **List&lt;String&gt;** | The Group IDs to attach to the alert. If your organization has On-Call enabled and your notification target is a Group. This field will be automatically set for you. |  [optional] |
|**functionalityIds** | **List&lt;String&gt;** | The Functionality IDs to attach to the alert |  [optional] |
|**environmentIds** | **List&lt;String&gt;** | The Environment IDs to attach to the alert |  [optional] |
|**startedAt** | **OffsetDateTime** | Alert start datetime |  [optional] |
|**endedAt** | **OffsetDateTime** | Alert end datetime |  [optional] |
|**externalId** | **String** | External ID |  [optional] |
|**externalUrl** | **String** | External Url |  [optional] |
|**alertUrgencyId** | **String** | The ID of the alert urgency |  [optional] |
|**notificationTargetType** | [**NotificationTargetTypeEnum**](#NotificationTargetTypeEnum) | Only available for organizations with Rootly On-Call enabled. Can be one of Group, Service, EscalationPolicy, Functionality, User. Please contact support if you encounter issues using &#x60;Functionality&#x60; as a notification target type. |  [optional] |
|**notificationTargetId** | **String** | Only available for organizations with Rootly On-Call enabled. The _identifier_ of the notification target object. |  [optional] |
|**notificationTargets** | [**List&lt;NewAlertDataAttributesNotificationTargetsInner&gt;**](NewAlertDataAttributesNotificationTargetsInner.md) | Only available for organizations with Rootly On-Call enabled. Page multiple destinations (any combination of Group, Service, EscalationPolicy, Functionality, or User) in a single request. &#x60;Functionality&#x60; targets require the &#x60;enable_paging_functionalities&#x60; feature; a request that includes one while it is disabled is rejected. Applies to alert creation only. When provided, this takes precedence over the singular &#x60;notification_target_type&#x60; / &#x60;notification_target_id&#x60; fields. |  [optional] |
|**labels** | [**List&lt;NewAlertDataAttributesLabelsInner&gt;**](NewAlertDataAttributesLabelsInner.md) |  |  [optional] |
|**data** | **Object** | Additional data |  [optional] |
|**deduplicationKey** | **String** | Alerts sharing the same deduplication key are treated as a single alert. |  [optional] |
|**alertFieldValuesAttributes** | [**List&lt;NewAlertDataAttributesAlertFieldValuesAttributesInner&gt;**](NewAlertDataAttributesAlertFieldValuesAttributesInner.md) | Custom alert field values to create with the alert |  [optional] |



## Enum: NoiseEnum

| Name | Value |
|---- | -----|
| NOISE | &quot;noise&quot; |
| NOT_NOISE | &quot;not_noise&quot; |



## Enum: StatusEnum

| Name | Value |
|---- | -----|
| OPEN | &quot;open&quot; |
| TRIGGERED | &quot;triggered&quot; |



## Enum: NotificationTargetTypeEnum

| Name | Value |
|---- | -----|
| USER | &quot;User&quot; |
| GROUP | &quot;Group&quot; |
| ESCALATION_POLICY | &quot;EscalationPolicy&quot; |
| SERVICE | &quot;Service&quot; |
| FUNCTIONALITY | &quot;Functionality&quot; |




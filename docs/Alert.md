

# Alert


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**shortId** | **String** | Human-readable short identifier for the alert |  |
|**noise** | [**NoiseEnum**](#NoiseEnum) | Whether the alert is marked as noise |  [optional] |
|**source** | **String** | The source of the alert |  |
|**status** | [**StatusEnum**](#StatusEnum) | The status of the alert |  [optional] |
|**summary** | **String** | The summary of the alert |  |
|**description** | **String** | The description of the alert |  [optional] |
|**services** | [**List&lt;Service&gt;**](Service.md) | Services attached to the alert |  [optional] |
|**groups** | [**List&lt;Team&gt;**](Team.md) | Groups attached to the alert |  [optional] |
|**functionalities** | [**List&lt;Functionality&gt;**](Functionality.md) | Functionalities attached to the alert |  [optional] |
|**environments** | [**List&lt;Environment&gt;**](Environment.md) | Environments attached to the alert |  [optional] |
|**serviceIds** | **List&lt;String&gt;** | The Service IDs to attach to the alert. If your organization has On-Call enabled and your notification target is a Service. This field will be automatically set for you. |  [optional] |
|**groupIds** | **List&lt;String&gt;** | The Group IDs to attach to the alert. If your organization has On-Call enabled and your notification target is a Group. This field will be automatically set for you. |  [optional] |
|**functionalityIds** | **List&lt;String&gt;** | The Functionality IDs to attach to the alert |  [optional] |
|**environmentIds** | **List&lt;String&gt;** | The Environment IDs to attach to the alert |  [optional] |
|**externalId** | **String** | External ID |  [optional] |
|**externalUrl** | **String** | External Url |  [optional] |
|**alertUrgencyId** | **String** | The ID of the alert urgency |  [optional] |
|**alertUrgency** | [**AlertUrgency**](AlertUrgency.md) |  |  [optional] |
|**groupLeaderAlertId** | **String** | The ID of the group leader alert |  [optional] |
|**isGroupLeaderAlert** | **Boolean** | Whether the alert is a group leader alert |  [optional] |
|**labels** | [**List&lt;NewAlertDataAttributesLabelsInner&gt;**](NewAlertDataAttributesLabelsInner.md) |  |  [optional] |
|**data** | **Object** | Additional data |  [optional] |
|**notificationTargetType** | [**NotificationTargetTypeEnum**](#NotificationTargetTypeEnum) | Only available for organizations with Rootly On-Call enabled. Can be one of Group, Service, EscalationPolicy, Functionality, User. |  [optional] |
|**notificationTargetId** | **String** | Only available for organizations with Rootly On-Call enabled. The identifier of the notification target object. |  [optional] |
|**deduplicationKey** | **String** | Alerts sharing the same deduplication key are treated as a single alert. |  [optional] |
|**alertFieldValues** | [**List&lt;AlertAlertFieldValuesInner&gt;**](AlertAlertFieldValuesInner.md) | Custom alert field values associated with the alert. Only present when the enable_alert_fields feature flag is enabled for the team. |  [optional] |
|**responders** | [**List&lt;UserFlatResponse&gt;**](UserFlatResponse.md) | Users who responded to the alert. Included on all non-list responses (show, create, update, resolve, etc.); on list responses only when &#x60;include&#x3D;responders&#x60; is requested. |  [optional] |
|**notifiedUsers** | [**List&lt;User&gt;**](User.md) | Users who were notified about the alert. Included on all non-list responses (show, create, update, resolve, etc.); on list responses only when &#x60;include&#x3D;notified_users&#x60; is requested. |  [optional] |
|**alertingTargets** | [**List&lt;AlertAlertingTargetsInner&gt;**](AlertAlertingTargetsInner.md) | Alerting targets associated with the alert. Only present when advanced routing is enabled for the team. |  [optional] |
|**url** | **URI** | The Rootly dashboard URL for the alert |  [optional] |
|**startedAt** | **OffsetDateTime** | When the alert started |  [optional] |
|**endedAt** | **OffsetDateTime** | When the alert ended |  [optional] |
|**createdAt** | **String** | Date of creation |  |
|**updatedAt** | **String** | Date of last update |  |



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
| ACKNOWLEDGED | &quot;acknowledged&quot; |
| RESOLVED | &quot;resolved&quot; |
| DEFERRED | &quot;deferred&quot; |



## Enum: NotificationTargetTypeEnum

| Name | Value |
|---- | -----|
| USER | &quot;User&quot; |
| GROUP | &quot;Group&quot; |
| ESCALATION_POLICY | &quot;EscalationPolicy&quot; |
| SERVICE | &quot;Service&quot; |
| FUNCTIONALITY | &quot;Functionality&quot; |




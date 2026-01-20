

# Alert


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**shortId** | **String** | Human-readable short identifier for the alert |  |
|**noise** | [**NoiseEnum**](#NoiseEnum) | Whether the alert is marked as noise |  [optional] |
|**source** | [**SourceEnum**](#SourceEnum) | The source of the alert |  |
|**status** | [**StatusEnum**](#StatusEnum) | The status of the alert |  [optional] |
|**summary** | **String** | The summary of the alert |  |
|**description** | **String** | The description of the alert |  [optional] |
|**services** | [**List&lt;Service&gt;**](Service.md) | Services attached to the alert |  [optional] |
|**groups** | [**List&lt;Team&gt;**](Team.md) | Groups attached to the alert |  [optional] |
|**environments** | [**List&lt;Environment&gt;**](Environment.md) | Environments attached to the alert |  [optional] |
|**serviceIds** | **List&lt;String&gt;** | The Service IDs to attach to the alert. If your organization has On-Call enabled and your notification target is a Service. This field will be automatically set for you. |  [optional] |
|**groupIds** | **List&lt;String&gt;** | The Group IDs to attach to the alert. If your organization has On-Call enabled and your notification target is a Group. This field will be automatically set for you. |  [optional] |
|**environmentIds** | **List&lt;String&gt;** | The Environment IDs to attach to the alert |  [optional] |
|**externalId** | **String** | External ID |  [optional] |
|**externalUrl** | **String** | External Url |  [optional] |
|**alertUrgencyId** | **String** | The ID of the alert urgency |  [optional] |
|**groupLeaderAlertId** | **String** | The ID of the group leader alert |  [optional] |
|**isGroupLeaderAlert** | **Boolean** | Whether the alert is a group leader alert |  [optional] |
|**labels** | [**List&lt;NewAlertDataAttributesLabelsInner&gt;**](NewAlertDataAttributesLabelsInner.md) |  |  [optional] |
|**data** | **Object** | Additional data |  [optional] |
|**deduplicationKey** | **String** | Alerts sharing the same deduplication key are treated as a single alert. |  [optional] |
|**alertFieldValuesAttributes** | [**List&lt;NewAlertDataAttributesAlertFieldValuesAttributesInner&gt;**](NewAlertDataAttributesAlertFieldValuesAttributesInner.md) | Custom alert field values to create with the alert |  [optional] |
|**startedAt** | **OffsetDateTime** | When the alert started |  [optional] |
|**endedAt** | **OffsetDateTime** | When the alert ended |  [optional] |
|**createdAt** | **String** | Date of creation |  |
|**updatedAt** | **String** | Date of last update |  |



## Enum: NoiseEnum

| Name | Value |
|---- | -----|
| NOISE | &quot;noise&quot; |
| NOT_NOISE | &quot;not_noise&quot; |



## Enum: SourceEnum

| Name | Value |
|---- | -----|
| ROOTLY | &quot;rootly&quot; |
| MANUAL | &quot;manual&quot; |
| API | &quot;api&quot; |
| HEARTBEAT | &quot;heartbeat&quot; |
| WEB | &quot;web&quot; |
| SLACK | &quot;slack&quot; |
| EMAIL | &quot;email&quot; |
| WORKFLOW | &quot;workflow&quot; |
| LIVE_CALL_ROUTING | &quot;live_call_routing&quot; |
| MOBILE | &quot;mobile&quot; |
| PAGERDUTY | &quot;pagerduty&quot; |
| OPSGENIE | &quot;opsgenie&quot; |
| VICTOROPS | &quot;victorops&quot; |
| PAGERTREE | &quot;pagertree&quot; |
| DATADOG | &quot;datadog&quot; |
| NOBL9 | &quot;nobl9&quot; |
| ZENDESK | &quot;zendesk&quot; |
| ASANA | &quot;asana&quot; |
| CLICKUP | &quot;clickup&quot; |
| SENTRY | &quot;sentry&quot; |
| ROLLBAR | &quot;rollbar&quot; |
| JIRA | &quot;jira&quot; |
| HONEYCOMB | &quot;honeycomb&quot; |
| SERVICE_NOW | &quot;service_now&quot; |
| LINEAR | &quot;linear&quot; |
| GRAFANA | &quot;grafana&quot; |
| ALERTMANAGER | &quot;alertmanager&quot; |
| GOOGLE_CLOUD | &quot;google_cloud&quot; |
| GENERIC_WEBHOOK | &quot;generic_webhook&quot; |
| CLOUD_WATCH | &quot;cloud_watch&quot; |
| AZURE | &quot;azure&quot; |
| SPLUNK | &quot;splunk&quot; |
| CHRONOSPHERE | &quot;chronosphere&quot; |
| APP_OPTICS | &quot;app_optics&quot; |
| BUG_SNAG | &quot;bug_snag&quot; |
| MONTE_CARLO | &quot;monte_carlo&quot; |
| NAGIOS | &quot;nagios&quot; |
| PRTG | &quot;prtg&quot; |
| CATCHPOINT | &quot;catchpoint&quot; |
| APP_DYNAMICS | &quot;app_dynamics&quot; |
| CHECKLY | &quot;checkly&quot; |
| NEW_RELIC | &quot;new_relic&quot; |
| GITLAB | &quot;gitlab&quot; |



## Enum: StatusEnum

| Name | Value |
|---- | -----|
| OPEN | &quot;open&quot; |
| TRIGGERED | &quot;triggered&quot; |
| ACKNOWLEDGED | &quot;acknowledged&quot; |
| RESOLVED | &quot;resolved&quot; |




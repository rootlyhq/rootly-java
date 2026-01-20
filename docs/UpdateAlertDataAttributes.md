

# UpdateAlertDataAttributes


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**noise** | [**NoiseEnum**](#NoiseEnum) | Whether the alert is marked as noise |  [optional] |
|**source** | [**SourceEnum**](#SourceEnum) | The source of the alert |  [optional] |
|**summary** | **String** | The summary of the alert |  [optional] |
|**description** | **String** | The description of the alert |  [optional] |
|**serviceIds** | **List&lt;String&gt;** | The Service IDs to attach to the alert |  [optional] |
|**groupIds** | **List&lt;String&gt;** | The Group IDs to attach to the alert |  [optional] |
|**environmentIds** | **List&lt;String&gt;** | The Environment IDs to attach to the alert |  [optional] |
|**startedAt** | **OffsetDateTime** | Alert start datetime |  [optional] |
|**endedAt** | **OffsetDateTime** | Alert end datetime |  [optional] |
|**externalId** | **String** | External ID |  [optional] |
|**externalUrl** | **String** | External Url |  [optional] |
|**alertUrgencyId** | **String** | The ID of the alert urgency |  [optional] |
|**labels** | [**List&lt;NewAlertDataAttributesLabelsInner&gt;**](NewAlertDataAttributesLabelsInner.md) |  |  [optional] |
|**data** | **Object** | Additional data |  [optional] |
|**deduplicationKey** | **String** | Alerts sharing the same deduplication key are treated as a single alert. |  [optional] |
|**alertFieldValuesAttributes** | [**List&lt;NewAlertDataAttributesAlertFieldValuesAttributesInner&gt;**](NewAlertDataAttributesAlertFieldValuesAttributesInner.md) | Custom alert field values to create with the alert |  [optional] |



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




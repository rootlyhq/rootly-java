

# AlertResponseData


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**id** | **String** | Unique ID of the alert |  |
|**source** | [**SourceEnum**](#SourceEnum) | The source of the alert |  [optional] |
|**type** | [**TypeEnum**](#TypeEnum) |  |  |
|**attributes** | [**Alert**](Alert.md) |  |  |



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



## Enum: TypeEnum

| Name | Value |
|---- | -----|
| ALERTS | &quot;alerts&quot; |




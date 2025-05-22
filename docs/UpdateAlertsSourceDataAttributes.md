

# UpdateAlertsSourceDataAttributes


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**name** | **String** | The name of the alert source |  [optional] |
|**sourceType** | [**SourceTypeEnum**](#SourceTypeEnum) | The alert source type |  [optional] |
|**alertUrgencyId** | **String** | ID for the default alert urgency assigned to this alert source |  [optional] |
|**ownerGroupIds** | **List&lt;String&gt;** | List of team IDs that will own the alert source |  [optional] |
|**alertTemplateAttributes** | [**NewAlertsSourceDataAttributesAlertTemplateAttributes**](NewAlertsSourceDataAttributesAlertTemplateAttributes.md) |  |  [optional] |
|**alertSourceUrgencyRulesAttributes** | [**List&lt;NewAlertsSourceDataAttributesAlertSourceUrgencyRulesAttributesInner&gt;**](NewAlertsSourceDataAttributesAlertSourceUrgencyRulesAttributesInner.md) | List of rules that define the conditions under which the alert urgency will be set automatically based on the alert payload |  [optional] |
|**sourceableAttributes** | [**NewAlertsSourceDataAttributesSourceableAttributes**](NewAlertsSourceDataAttributesSourceableAttributes.md) |  |  [optional] |
|**resolutionRuleAttributes** | [**NewAlertsSourceDataAttributesResolutionRuleAttributes**](NewAlertsSourceDataAttributesResolutionRuleAttributes.md) |  |  [optional] |



## Enum: SourceTypeEnum

| Name | Value |
|---- | -----|
| EMAIL | &quot;email&quot; |
| APP_DYNAMICS | &quot;app_dynamics&quot; |
| CATCHPOINT | &quot;catchpoint&quot; |
| DATADOG | &quot;datadog&quot; |
| ALERTMANAGER | &quot;alertmanager&quot; |
| GOOGLE_CLOUD | &quot;google_cloud&quot; |
| GRAFANA | &quot;grafana&quot; |
| SENTRY | &quot;sentry&quot; |
| GENERIC_WEBHOOK | &quot;generic_webhook&quot; |
| CLOUD_WATCH | &quot;cloud_watch&quot; |
| CHECKLY | &quot;checkly&quot; |
| AZURE | &quot;azure&quot; |
| NEW_RELIC | &quot;new_relic&quot; |
| SPLUNK | &quot;splunk&quot; |
| CHRONOSPHERE | &quot;chronosphere&quot; |
| APP_OPTICS | &quot;app_optics&quot; |
| BUG_SNAG | &quot;bug_snag&quot; |
| HONEYCOMB | &quot;honeycomb&quot; |
| MONTE_CARLO | &quot;monte_carlo&quot; |
| NAGIOS | &quot;nagios&quot; |
| PRTG | &quot;prtg&quot; |




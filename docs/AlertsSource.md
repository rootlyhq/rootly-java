

# AlertsSource


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**name** | **String** | The name of the alert source |  |
|**sourceType** | [**SourceTypeEnum**](#SourceTypeEnum) | The alert source type |  [optional] |
|**alertUrgencyId** | **String** | ID for the default alert urgency assigned to this alert source |  [optional] |
|**deduplicateAlertsByKey** | **Boolean** | Toggle alert deduplication using deduplication key. If enabled, deduplication_key_kind and deduplication_key_path are required. |  [optional] |
|**deduplicationKeyKind** | [**DeduplicationKeyKindEnum**](#DeduplicationKeyKindEnum) | Kind of deduplication key. |  [optional] |
|**deduplicationKeyPath** | **String** | Path to deduplication key. This is a JSON Path to extract the deduplication key from the request body. |  [optional] |
|**deduplicationKeyRegexp** | **String** | Regular expression to extract key from value found at key path. |  [optional] |
|**ownerGroupIds** | **List&lt;String&gt;** | List of team IDs that will own the alert source |  [optional] |
|**alertTemplateAttributes** | [**NewAlertsSourceDataAttributesAlertTemplateAttributes**](NewAlertsSourceDataAttributesAlertTemplateAttributes.md) |  |  [optional] |
|**alertSourceUrgencyRulesAttributes** | [**List&lt;NewAlertsSourceDataAttributesAlertSourceUrgencyRulesAttributesInner&gt;**](NewAlertsSourceDataAttributesAlertSourceUrgencyRulesAttributesInner.md) | List of rules that define the conditions under which the alert urgency will be set automatically based on the alert payload |  [optional] |
|**sourceableAttributes** | [**NewAlertsSourceDataAttributesSourceableAttributes**](NewAlertsSourceDataAttributesSourceableAttributes.md) |  |  [optional] |
|**resolutionRuleAttributes** | [**NewAlertsSourceDataAttributesResolutionRuleAttributes**](NewAlertsSourceDataAttributesResolutionRuleAttributes.md) |  |  [optional] |
|**alertSourceFieldsAttributes** | [**List&lt;NewAlertsSourceDataAttributesAlertSourceFieldsAttributesInner&gt;**](NewAlertsSourceDataAttributesAlertSourceFieldsAttributesInner.md) | List of alert fields to be added to the alert source. Note: This attribute requires the alert field feature to be enabled on your account. Contact Rootly customer support if you need assistance with this feature. |  [optional] |
|**status** | [**StatusEnum**](#StatusEnum) | The status of the alert source |  |
|**secret** | **String** | The secret used to authenticate non-email alert sources |  |
|**email** | **String** | The email generated for email alert sources |  [optional] |
|**webhookEndpoint** | **String** | The webhook URL generated for non-email alert sources |  [optional] |
|**createdAt** | **String** | Date of creation |  |
|**updatedAt** | **String** | Date of last update |  |



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



## Enum: DeduplicationKeyKindEnum

| Name | Value |
|---- | -----|
| PAYLOAD | &quot;payload&quot; |



## Enum: StatusEnum

| Name | Value |
|---- | -----|
| CONNECTED | &quot;connected&quot; |
| SETUP_COMPLETE | &quot;setup_complete&quot; |
| SETUP_INCOMPLETE | &quot;setup_incomplete&quot; |




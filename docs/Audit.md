

# Audit


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**event** | **String** | Describes the action that was taken. |  |
|**itemType** | [**ItemTypeEnum**](#ItemTypeEnum) | Describes the object in which the action was taken on |  [optional] |
|**itemTypeDisplay** | **String** | Human-friendly display name for the item type |  [optional] |
|**_object** | **Object** | The object in which the action was taken on |  [optional] |
|**objectChanges** | **Object** | The changes that occurred on the object |  [optional] |
|**userId** | **Integer** | The ID of who took action on the object. Together with whodunnit_type can be used to find the user |  [optional] |
|**createdAt** | **String** | Date of creation |  |
|**itemId** | **String** | ID of the affected object |  [optional] |
|**id** | **Integer** | ID of audit |  [optional] |



## Enum: ItemTypeEnum

| Name | Value |
|---- | -----|
| ALERT_ROUTE | &quot;AlertRoute&quot; |
| ALERT_ROUTING_RULE | &quot;AlertRoutingRule&quot; |
| ALERTS_SOURCE | &quot;Alerts::Source&quot; |
| API_KEY | &quot;ApiKey&quot; |
| CATALOG | &quot;Catalog&quot; |
| CATALOG_ENTITY | &quot;CatalogEntity&quot; |
| CATALOG_ENTITY_PROPERTY | &quot;CatalogEntityProperty&quot; |
| CATALOG_FIELD | &quot;CatalogField&quot; |
| CAUSE | &quot;Cause&quot; |
| CUSTOM_FIELD | &quot;CustomField&quot; |
| CUSTOM_FIELD_OPTION | &quot;CustomFieldOption&quot; |
| CUSTOM_FORM | &quot;CustomForm&quot; |
| DASHBOARD | &quot;Dashboard&quot; |
| EDGE_CONNECTOR | &quot;EdgeConnector&quot; |
| EDGE_CONNECTOR_ACTION | &quot;EdgeConnector::Action&quot; |
| ENVIRONMENT | &quot;Environment&quot; |
| ESCALATION_POLICY | &quot;EscalationPolicy&quot; |
| ESCALATION_POLICY_PATH | &quot;EscalationPolicyPath&quot; |
| EXPORT_JOB | &quot;ExportJob&quot; |
| FORM_FIELD | &quot;FormField&quot; |
| FUNCTIONALITY | &quot;Functionality&quot; |
| GENIUS_WORKFLOW | &quot;GeniusWorkflow&quot; |
| GENIUS_WORKFLOW_GROUP | &quot;GeniusWorkflowGroup&quot; |
| GENIUS_WORKFLOW_RUN | &quot;GeniusWorkflowRun&quot; |
| GROUP | &quot;Group&quot; |
| GROUP_USER | &quot;GroupUser&quot; |
| HEARTBEAT | &quot;Heartbeat&quot; |
| INCIDENT | &quot;Incident&quot; |
| LOGIN_ACTIVITY | &quot;LoginActivity&quot; |
| INCIDENT_ACTION_ITEM | &quot;IncidentActionItem&quot; |
| INCIDENT_EVENT | &quot;IncidentEvent&quot; |
| INCIDENT_FORM_FIELD_SELECTION | &quot;IncidentFormFieldSelection&quot; |
| INCIDENT_FORM_FIELD_SELECTION_USER | &quot;IncidentFormFieldSelectionUser&quot; |
| INCIDENT_PERMISSION_SET | &quot;IncidentPermissionSet&quot; |
| INCIDENT_POST_MORTEM | &quot;IncidentPostMortem&quot; |
| INCIDENT_ROLE_ASSIGNMENT | &quot;IncidentRoleAssignment&quot; |
| INCIDENT_ROLE_TASK | &quot;IncidentRoleTask&quot; |
| INCIDENT_STATUS_PAGE_EVENT | &quot;IncidentStatusPageEvent&quot; |
| INCIDENT_TASK | &quot;IncidentTask&quot; |
| INCIDENT_TYPE | &quot;IncidentType&quot; |
| INTEGRATIONS_DATADOG_ACCOUNT | &quot;Integrations::DatadogAccount&quot; |
| INTEGRATIONS_GITHUB_ACCOUNT | &quot;Integrations::GithubAccount&quot; |
| INTEGRATIONS_GOOGLE_MEET_ACCOUNT | &quot;Integrations::GoogleMeetAccount&quot; |
| INTEGRATIONS_JIRA_ACCOUNT | &quot;Integrations::JiraAccount&quot; |
| INTEGRATIONS_MICROSOFT_TEAMS_ACCOUNT | &quot;Integrations::MicrosoftTeamsAccount&quot; |
| INTEGRATIONS_OPSGENIE_ACCOUNT | &quot;Integrations::OpsgenieAccount&quot; |
| INTEGRATIONS_PAGERDUTY_ACCOUNT | &quot;Integrations::PagerdutyAccount&quot; |
| INTEGRATIONS_SERVICE_NOW_ACCOUNT | &quot;Integrations::ServiceNowAccount&quot; |
| INTEGRATIONS_SLACK_ACCOUNT | &quot;Integrations::SlackAccount&quot; |
| INTEGRATIONS_STATUS_PAGE_IO_ACCOUNT | &quot;Integrations::StatusPageIoAccount&quot; |
| INTEGRATIONS_ZENDESK_ACCOUNT | &quot;Integrations::ZendeskAccount&quot; |
| INTEGRATIONS_ZOOM_ACCOUNT | &quot;Integrations::ZoomAccount&quot; |
| LIVE_CALL_ROUTER | &quot;LiveCallRouter&quot; |
| MEMBERSHIP | &quot;Membership&quot; |
| ON_CALL_ROLE | &quot;OnCallRole&quot; |
| PLAYBOOK | &quot;Playbook&quot; |
| PLAYBOOK_TASK | &quot;PlaybookTask&quot; |
| ROLE | &quot;Role&quot; |
| SCHEDULE | &quot;Schedule&quot; |
| SECRET | &quot;Secret&quot; |
| SERVICE | &quot;Service&quot; |
| SEVERITY | &quot;Severity&quot; |
| STATUS_PAGE | &quot;StatusPage&quot; |




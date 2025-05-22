

# NewWebhooksEndpointDataAttributes


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**name** | **String** | The name of the endpoint |  |
|**url** | **String** | The URL of the endpoint. |  |
|**secret** | **String** | The webhook signing secret used to verify webhook requests. |  [optional] |
|**eventTypes** | [**List&lt;EventTypesEnum&gt;**](#List&lt;EventTypesEnum&gt;) |  |  [optional] |
|**enabled** | **Boolean** |  |  [optional] |



## Enum: List&lt;EventTypesEnum&gt;

| Name | Value |
|---- | -----|
| INCIDENT_CREATED | &quot;incident.created&quot; |
| INCIDENT_UPDATED | &quot;incident.updated&quot; |
| INCIDENT_IN_TRIAGE | &quot;incident.in_triage&quot; |
| INCIDENT_MITIGATED | &quot;incident.mitigated&quot; |
| INCIDENT_RESOLVED | &quot;incident.resolved&quot; |
| INCIDENT_CANCELLED | &quot;incident.cancelled&quot; |
| INCIDENT_DELETED | &quot;incident.deleted&quot; |
| INCIDENT_SCHEDULED_CREATED | &quot;incident.scheduled.created&quot; |
| INCIDENT_SCHEDULED_UPDATED | &quot;incident.scheduled.updated&quot; |
| INCIDENT_SCHEDULED_IN_PROGRESS | &quot;incident.scheduled.in_progress&quot; |
| INCIDENT_SCHEDULED_COMPLETED | &quot;incident.scheduled.completed&quot; |
| INCIDENT_SCHEDULED_DELETED | &quot;incident.scheduled.deleted&quot; |
| INCIDENT_POST_MORTEM_CREATED | &quot;incident_post_mortem.created&quot; |
| INCIDENT_POST_MORTEM_UPDATED | &quot;incident_post_mortem.updated&quot; |
| INCIDENT_POST_MORTEM_PUBLISHED | &quot;incident_post_mortem.published&quot; |
| INCIDENT_POST_MORTEM_DELETED | &quot;incident_post_mortem.deleted&quot; |
| INCIDENT_STATUS_PAGE_EVENT_CREATED | &quot;incident_status_page_event.created&quot; |
| INCIDENT_STATUS_PAGE_EVENT_UPDATED | &quot;incident_status_page_event.updated&quot; |
| INCIDENT_STATUS_PAGE_EVENT_DELETED | &quot;incident_status_page_event.deleted&quot; |
| INCIDENT_EVENT_CREATED | &quot;incident_event.created&quot; |
| INCIDENT_EVENT_UPDATED | &quot;incident_event.updated&quot; |
| INCIDENT_EVENT_DELETED | &quot;incident_event.deleted&quot; |
| ALERT_CREATED | &quot;alert.created&quot; |
| PULSE_CREATED | &quot;pulse.created&quot; |
| GENIUS_WORKFLOW_RUN_QUEUED | &quot;genius_workflow_run.queued&quot; |
| GENIUS_WORKFLOW_RUN_STARTED | &quot;genius_workflow_run.started&quot; |
| GENIUS_WORKFLOW_RUN_COMPLETED | &quot;genius_workflow_run.completed&quot; |
| GENIUS_WORKFLOW_RUN_FAILED | &quot;genius_workflow_run.failed&quot; |
| GENIUS_WORKFLOW_RUN_CANCELED | &quot;genius_workflow_run.canceled&quot; |




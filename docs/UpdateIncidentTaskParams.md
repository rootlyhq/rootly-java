

# UpdateIncidentTaskParams


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**taskType** | [**TaskTypeEnum**](#TaskTypeEnum) |  |  [optional] |
|**attributeToQueryBy** | [**AttributeToQueryByEnum**](#AttributeToQueryByEnum) |  |  [optional] |
|**incidentId** | **String** | The incident id to update or id of any attribute on the incident |  |
|**title** | **String** | The incident title |  [optional] |
|**summary** | **String** | The incident summary |  [optional] |
|**status** | **String** |  |  [optional] |
|**severityId** | **String** |  |  [optional] |
|**incidentTypeIds** | **List&lt;String&gt;** |  |  [optional] |
|**serviceIds** | **List&lt;String&gt;** | Array of service UUIDs |  [optional] |
|**functionalityIds** | **List&lt;String&gt;** | Array of functionality UUIDs |  [optional] |
|**environmentIds** | **List&lt;String&gt;** |  |  [optional] |
|**groupIds** | **List&lt;String&gt;** | Array of group/team UUIDs |  [optional] |
|**startedAt** | **String** |  |  [optional] |
|**detectedAt** | **String** |  |  [optional] |
|**acknowledgedAt** | **String** |  |  [optional] |
|**mitigatedAt** | **String** |  |  [optional] |
|**resolvedAt** | **String** |  |  [optional] |
|**_private** | **Boolean** |  |  [optional] |
|**customFieldsMapping** | **String** | Custom field mappings. Can contain liquid markup and need to be valid JSON. Use &#39;services&#39;, &#39;functionalities&#39;, or &#39;groups&#39; keys with arrays of names/slugs for name/slug lookup |  [optional] |



## Enum: TaskTypeEnum

| Name | Value |
|---- | -----|
| UPDATE_INCIDENT | &quot;update_incident&quot; |



## Enum: AttributeToQueryByEnum

| Name | Value |
|---- | -----|
| ID | &quot;id&quot; |
| SLUG | &quot;slug&quot; |
| SEQUENTIAL_ID | &quot;sequential_id&quot; |
| PAGERDUTY_INCIDENT_ID | &quot;pagerduty_incident_id&quot; |
| OPSGENIE_INCIDENT_ID | &quot;opsgenie_incident_id&quot; |
| VICTOR_OPS_INCIDENT_ID | &quot;victor_ops_incident_id&quot; |
| JIRA_ISSUE_ID | &quot;jira_issue_id&quot; |
| ASANA_TASK_ID | &quot;asana_task_id&quot; |
| SHORTCUT_TASK_ID | &quot;shortcut_task_id&quot; |
| LINEAR_ISSUE_ID | &quot;linear_issue_id&quot; |
| ZENDESK_TICKET_ID | &quot;zendesk_ticket_id&quot; |
| MOTION_TASK_ID | &quot;motion_task_id&quot; |
| TRELLO_CARD_ID | &quot;trello_card_id&quot; |
| AIRTABLE_RECORD_ID | &quot;airtable_record_id&quot; |
| SHORTCUT_STORY_ID | &quot;shortcut_story_id&quot; |
| GITHUB_ISSUE_ID | &quot;github_issue_id&quot; |
| GITLAB_ISSUE_ID | &quot;gitlab_issue_id&quot; |
| FRESHSERVICE_TICKET_ID | &quot;freshservice_ticket_id&quot; |
| FRESHSERVICE_TASK_ID | &quot;freshservice_task_id&quot; |
| CLICKUP_TASK_ID | &quot;clickup_task_id&quot; |




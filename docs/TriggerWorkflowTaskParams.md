

# TriggerWorkflowTaskParams


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**taskType** | [**TaskTypeEnum**](#TaskTypeEnum) |  |  [optional] |
|**kind** | [**KindEnum**](#KindEnum) |  |  |
|**attributeToQueryBy** | [**AttributeToQueryByEnum**](#AttributeToQueryByEnum) | [\&quot;(incident) kind can only match [:id, :slug, :sequential_id, :pagerduty_incident_id, :opsgenie_incident_id, :victor_ops_incident_id, :jira_issue_id, :asana_task_id, :shortcut_task_id, :linear_issue_id, :zendesk_ticket_id, :motion_task_id, :trello_card_id, :airtable_record_id, :shortcut_story_id, :github_issue_id, :freshservice_ticket_id, :freshservice_task_id, :clickup_task_id]\&quot;, \&quot;(post_mortem) kind can only match [:id]\&quot;, \&quot;(action_item) kind can only match [:id, :jira_issue_id, :asana_task_id, :shortcut_task_id, :linear_issue_id, :zendesk_ticket_id, :motion_task_id, :trello_card_id, :airtable_record_id, :shortcut_story_id, :github_issue_id, :freshservice_ticket_id, :freshservice_task_id, :clickup_task_id]\&quot;, \&quot;(pulse) kind can only match [:id]\&quot;, \&quot;(alert) kind can only match [:id]\&quot;] |  |
|**resource** | [**AddActionItemTaskParamsPostToSlackChannelsInner**](AddActionItemTaskParamsPostToSlackChannelsInner.md) |  |  |
|**workflow** | [**AddActionItemTaskParamsPostToSlackChannelsInner**](AddActionItemTaskParamsPostToSlackChannelsInner.md) |  |  |
|**checkWorkflowConditions** | **Boolean** |  |  [optional] |



## Enum: TaskTypeEnum

| Name | Value |
|---- | -----|
| TRIGGER_WORKFLOW | &quot;trigger_workflow&quot; |



## Enum: KindEnum

| Name | Value |
|---- | -----|
| INCIDENT | &quot;incident&quot; |
| POST_MORTEM | &quot;post_mortem&quot; |
| ACTION_ITEM | &quot;action_item&quot; |
| PULSE | &quot;pulse&quot; |
| ALERT | &quot;alert&quot; |



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
| FRESHSERVICE_TICKET_ID | &quot;freshservice_ticket_id&quot; |
| FRESHSERVICE_TASK_ID | &quot;freshservice_task_id&quot; |
| CLICKUP_TASK_ID | &quot;clickup_task_id&quot; |




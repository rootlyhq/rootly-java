

# UpdateActionItemTaskParams


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**taskType** | [**TaskTypeEnum**](#TaskTypeEnum) |  |  [optional] |
|**queryValue** | **String** | Value that attribute_to_query_by to uses to match against |  |
|**attributeToQueryBy** | [**AttributeToQueryByEnum**](#AttributeToQueryByEnum) | Attribute of the action item to match against |  |
|**summary** | **String** | Brief description of the action item |  [optional] |
|**assignedToUserId** | **String** | [DEPRECATED] Use assigned_to_user attribute instead. The user id this action item is assigned to |  [optional] |
|**assignedToUser** | [**AddActionItemTaskParamsAssignedToUser**](AddActionItemTaskParamsAssignedToUser.md) |  |  [optional] |
|**groupIds** | **List&lt;String&gt;** |  |  [optional] |
|**description** | **String** | The action item description |  [optional] |
|**priority** | [**PriorityEnum**](#PriorityEnum) | The action item priority |  [optional] |
|**status** | [**StatusEnum**](#StatusEnum) | The action item status |  [optional] |
|**customFieldsMapping** | **String** | Custom field mappings. Can contain liquid markup and need to be valid JSON |  [optional] |
|**postToIncidentTimeline** | **Boolean** |  |  [optional] |



## Enum: TaskTypeEnum

| Name | Value |
|---- | -----|
| UPDATE_ACTION_ITEM | &quot;update_action_item&quot; |



## Enum: AttributeToQueryByEnum

| Name | Value |
|---- | -----|
| ID | &quot;id&quot; |
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



## Enum: PriorityEnum

| Name | Value |
|---- | -----|
| HIGH | &quot;high&quot; |
| MEDIUM | &quot;medium&quot; |
| LOW | &quot;low&quot; |



## Enum: StatusEnum

| Name | Value |
|---- | -----|
| OPEN | &quot;open&quot; |
| IN_PROGRESS | &quot;in_progress&quot; |
| CANCELLED | &quot;cancelled&quot; |
| DONE | &quot;done&quot; |




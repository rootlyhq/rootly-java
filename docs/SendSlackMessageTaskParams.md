

# SendSlackMessageTaskParams


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**taskType** | [**TaskTypeEnum**](#TaskTypeEnum) |  |  [optional] |
|**channels** | [**List&lt;Object&gt;**](Object.md) |  |  [optional] |
|**slackUsers** | [**List&lt;Object&gt;**](Object.md) |  |  [optional] |
|**slackUserGroups** | [**List&lt;Object&gt;**](Object.md) |  |  [optional] |
|**actionables** | [**List&lt;ActionablesEnum&gt;**](#List&lt;ActionablesEnum&gt;) |  |  [optional] |
|**broadcastThreadReplyToChannel** | **Boolean** |  |  [optional] |
|**sendAsEphemeral** | **Boolean** |  |  [optional] |
|**color** | **String** | A hex color ex. #FFFFFF |  [optional] |
|**pinToChannel** | **Boolean** |  |  [optional] |
|**updateParentMessage** | **Boolean** |  |  [optional] |
|**threadTs** | **String** | The thread to send the message into |  [optional] |
|**parentMessageThreadTask** | [**Object**](Object.md) | A hash where [id] is the task id of the parent task that sent a message, and [name] is the name of the parent task |  [optional] |
|**text** | **String** | The message text |  |
|**sendOnlyAsThreadedMessage** | **Boolean** | When set to true, if the parent for this threaded message cannot be found the message will be skipped. |  [optional] |



## Enum: TaskTypeEnum

| Name | Value |
|---- | -----|
| SEND_SLACK_MESSAGE | &quot;send_slack_message&quot; |



## Enum: List&lt;ActionablesEnum&gt;

| Name | Value |
|---- | -----|
| UPDATE_SUMMARY | &quot;update_summary&quot; |
| UPDATE_STATUS | &quot;update_status&quot; |
| ARCHIVE_CHANNEL | &quot;archive_channel&quot; |
| MANAGE_INCIDENT_ROLES | &quot;manage_incident_roles&quot; |
| UPDATE_INCIDENT | &quot;update_incident&quot; |
| ALL_COMMANDS | &quot;all_commands&quot; |
| LEAVE_FEEDBACK | &quot;leave_feedback&quot; |
| MANAGE_FORM_FIELDS | &quot;manage_form_fields&quot; |
| MANAGE_ACTION_ITEMS | &quot;manage_action_items&quot; |
| VIEW_TASKS | &quot;view_tasks&quot; |
| ADD_PAGERDUTY_RESPONDERS | &quot;add_pagerduty_responders&quot; |
| ADD_OPSGENIE_RESPONDERS | &quot;add_opsgenie_responders&quot; |
| ADD_VICTOR_OPS_RESPONDERS | &quot;add_victor_ops_responders&quot; |
| UPDATE_STATUS_PAGE | &quot;update_status_page&quot; |
| PAUSE_REMINDER | &quot;pause_reminder&quot; |
| SNOOZE_REMINDER | &quot;snooze_reminder&quot; |
| RESTART_REMINDER | &quot;restart_reminder&quot; |
| CANCEL_INCIDENT | &quot;cancel_incident&quot; |
| DELETE_MESSAGE | &quot;delete_message&quot; |




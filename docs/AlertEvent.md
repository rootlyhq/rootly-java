

# AlertEvent


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**alertId** | **String** | ID of the alert this event belongs to. |  |
|**kind** | [**KindEnum**](#KindEnum) |  |  |
|**action** | [**ActionEnum**](#ActionEnum) |  |  |
|**source** | **String** |  |  |
|**userId** | **Integer** | Author of the note. |  [optional] |
|**details** | **String** | Note message. |  [optional] |
|**user** | [**AlertEventUser**](AlertEventUser.md) |  |  [optional] |
|**incident** | [**AlertEventIncident**](AlertEventIncident.md) |  |  [optional] |
|**schedule** | [**AlertEventSchedule**](AlertEventSchedule.md) |  |  [optional] |
|**escalationLevel** | **Integer** |  |  [optional] |
|**escalationTargetType** | **String** | e.g. EscalationPolicy, User. |  [optional] |
|**escalationTarget** | [**AlertEventEscalationTarget**](AlertEventEscalationTarget.md) |  |  [optional] |
|**slackChannel** | [**SlackChannel**](SlackChannel.md) |  |  [optional] |
|**incidentIds** | **List&lt;String&gt;** |  |  [optional] |
|**createdAt** | **String** |  |  |
|**updatedAt** | **String** |  |  |



## Enum: KindEnum

| Name | Value |
|---- | -----|
| INFORMATIONAL | &quot;informational&quot; |
| NOTIFICATION | &quot;notification&quot; |
| ACTION | &quot;action&quot; |
| STATUS_UPDATE | &quot;status_update&quot; |
| RECORDING | &quot;recording&quot; |
| ALERT_GROUPING | &quot;alert_grouping&quot; |
| ALERT_URGENCY | &quot;alert_urgency&quot; |
| ALERT_ROUTING | &quot;alert_routing&quot; |
| NOTE | &quot;note&quot; |
| NOISE | &quot;noise&quot; |
| MAINTENANCE | &quot;maintenance&quot; |
| DEFERRAL | &quot;deferral&quot; |



## Enum: ActionEnum

| Name | Value |
|---- | -----|
| CREATED | &quot;created&quot; |
| ESCALATION_POLICY_PAGED | &quot;escalation_policy_paged&quot; |
| IGNORED_ALERT_REQUEST | &quot;ignored_alert_request&quot; |
| CALL_LIFECYCLE | &quot;call_lifecycle&quot; |
| LEVEL_SKIPPED | &quot;level_skipped&quot; |
| EMAILED | &quot;emailed&quot; |
| SLACKED | &quot;slacked&quot; |
| MS_TEAMS_MESSAGED | &quot;ms_teams_messaged&quot; |
| GOOGLE_CHAT_MESSAGED | &quot;google_chat_messaged&quot; |
| CALLED | &quot;called&quot; |
| TEXTED | &quot;texted&quot; |
| NOTIFIED | &quot;notified&quot; |
| SKIPPED | &quot;skipped&quot; |
| OPENED | &quot;opened&quot; |
| RETRIGGERED | &quot;retriggered&quot; |
| ACK_TIMEOUT_RETRIGGERED | &quot;ack_timeout_retriggered&quot; |
| ANSWERED | &quot;answered&quot; |
| ACKNOWLEDGED | &quot;acknowledged&quot; |
| ESCALATED | &quot;escalated&quot; |
| PAGED | &quot;paged&quot; |
| RESOLVED | &quot;resolved&quot; |
| ATTACHED | &quot;attached&quot; |
| SNOOZED | &quot;snoozed&quot; |
| RETRIGGER_SUPPRESSED | &quot;retrigger_suppressed&quot; |
| TRIGGERED | &quot;triggered&quot; |
| OPEN | &quot;open&quot; |
| UPDATED | &quot;updated&quot; |
| ADDED | &quot;added&quot; |
| REMOVED | &quot;removed&quot; |
| MARKED | &quot;marked&quot; |
| NOT_MARKED | &quot;not_marked&quot; |
| CLEARED | &quot;cleared&quot; |
| MUTED | &quot;muted&quot; |
| DEFERRED | &quot;deferred&quot; |




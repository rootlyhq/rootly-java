

# NewWorkflowTaskDataAttributesTaskParams


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**taskType** | [**TaskTypeEnum**](#TaskTypeEnum) |  |  [optional] |
|**attributeToQueryBy** | [**AttributeToQueryByEnum**](#AttributeToQueryByEnum) | [\&quot;(incident) kind can only match [:id, :slug, :sequential_id, :pagerduty_incident_id, :opsgenie_incident_id, :victor_ops_incident_id, :jira_issue_id, :asana_task_id, :shortcut_task_id, :linear_issue_id, :zendesk_ticket_id, :motion_task_id, :trello_card_id, :airtable_record_id, :shortcut_story_id, :github_issue_id, :freshservice_ticket_id, :freshservice_task_id, :clickup_task_id]\&quot;, \&quot;(post_mortem) kind can only match [:id]\&quot;, \&quot;(action_item) kind can only match [:id, :jira_issue_id, :asana_task_id, :shortcut_task_id, :linear_issue_id, :zendesk_ticket_id, :motion_task_id, :trello_card_id, :airtable_record_id, :shortcut_story_id, :github_issue_id, :freshservice_ticket_id, :freshservice_task_id, :clickup_task_id]\&quot;, \&quot;(pulse) kind can only match [:id]\&quot;, \&quot;(alert) kind can only match [:id]\&quot;] |  |
|**queryValue** | **String** | Value that attribute_to_query_by to uses to match against |  |
|**incidentRoleId** | **String** | The role id |  |
|**assignedToUserId** | **String** | [DEPRECATED] Use assigned_to_user attribute instead. The user id this role is assigned to |  [optional] |
|**assignedToUser** | [**AddRoleTaskParamsAssignedToUser**](AddRoleTaskParamsAssignedToUser.md) |  |  [optional] |
|**priority** | [**CreateJiraIssueTaskParamsPriority**](CreateJiraIssueTaskParamsPriority.md) |  |  |
|**kind** | [**KindEnum**](#KindEnum) |  |  |
|**summary** | **String** | The incident summary |  |
|**description** | **String** | The task description |  |
|**status** | [**StatusEnum**](#StatusEnum) |  |  |
|**postToIncidentTimeline** | **Boolean** |  |  [optional] |
|**customFieldsMapping** | **String** | Custom field mappings. Can contain liquid markup and need to be valid JSON |  [optional] |
|**postToSlackChannels** | [**List&lt;AddActionItemTaskParamsPostToSlackChannelsInner&gt;**](AddActionItemTaskParamsPostToSlackChannelsInner.md) |  |  [optional] |
|**groupIds** | **List&lt;String&gt;** |  |  [optional] |
|**playbookId** | **String** | The playbook id if tab is of an incident playbook |  [optional] |
|**channel** | [**AddActionItemTaskParamsPostToSlackChannelsInner**](AddActionItemTaskParamsPostToSlackChannelsInner.md) |  |  |
|**title** | **String** | The task title |  |
|**link** | **String** | The tab link. Required if not a playbook tab |  [optional] |
|**emoji** | **String** | The bookmark emoji |  [optional] |
|**groupId** | **String** | The team id |  |
|**event** | **String** | Incident event description |  |
|**url** | **String** |  |  |
|**channels** | [**List&lt;Object&gt;**](Object.md) |  |  |
|**dashboards** | [**List&lt;AddActionItemTaskParamsPostToSlackChannelsInner&gt;**](AddActionItemTaskParamsPostToSlackChannelsInner.md) |  |  |
|**schedule** | [**Object**](Object.md) |  |  |
|**escalationPolicyTarget** | [**AddActionItemTaskParamsPostToSlackChannelsInner**](AddActionItemTaskParamsPostToSlackChannelsInner.md) |  |  [optional] |
|**serviceTarget** | [**AddActionItemTaskParamsPostToSlackChannelsInner**](AddActionItemTaskParamsPostToSlackChannelsInner.md) |  |  [optional] |
|**userTarget** | [**AddActionItemTaskParamsPostToSlackChannelsInner**](AddActionItemTaskParamsPostToSlackChannelsInner.md) |  |  [optional] |
|**groupTarget** | [**AddActionItemTaskParamsPostToSlackChannelsInner**](AddActionItemTaskParamsPostToSlackChannelsInner.md) |  |  [optional] |
|**scheduleTarget** | [**AddActionItemTaskParamsPostToSlackChannelsInner**](AddActionItemTaskParamsPostToSlackChannelsInner.md) |  |  [optional] |
|**service** | [**AddActionItemTaskParamsPostToSlackChannelsInner**](AddActionItemTaskParamsPostToSlackChannelsInner.md) |  |  |
|**escalationPolicy** | [**Object**](Object.md) |  |  [optional] |
|**pagerdutyIncidentId** | **String** | PagerDuty incident id |  |
|**resolution** | **String** | A message outlining the incident&#39;s resolution in PagerDuty |  [optional] |
|**escalationLevel** | **Integer** | Escalation level of policy attached to incident |  [optional] |
|**urgency** | [**UrgencyEnum**](#UrgencyEnum) |  |  [optional] |
|**message** | **String** |  |  |
|**severity** | [**SeverityEnum**](#SeverityEnum) |  |  [optional] |
|**teams** | [**List&lt;AddActionItemTaskParamsPostToSlackChannelsInner&gt;**](AddActionItemTaskParamsPostToSlackChannelsInner.md) |  |  [optional] |
|**users** | [**List&lt;Object&gt;**](Object.md) |  |  [optional] |
|**incident** | [**AddActionItemTaskParamsPostToSlackChannelsInner**](AddActionItemTaskParamsPostToSlackChannelsInner.md) |  |  |
|**pagertreeAlertId** | **String** | The prefix ID of the Pagertree alert |  [optional] |
|**team** | [**AddActionItemTaskParamsPostToSlackChannelsInner**](AddActionItemTaskParamsPostToSlackChannelsInner.md) |  |  |
|**phoneNumbers** | **List&lt;String&gt;** |  |  |
|**name** | **String** | The name |  |
|**content** | **String** | The WhatsApp message |  |
|**base** | [**AddActionItemTaskParamsPostToSlackChannelsInner**](AddActionItemTaskParamsPostToSlackChannelsInner.md) |  |  |
|**table** | [**AddActionItemTaskParamsPostToSlackChannelsInner**](AddActionItemTaskParamsPostToSlackChannelsInner.md) |  |  |
|**parentTaskId** | **String** | The parent task id |  |
|**notes** | **String** |  |  [optional] |
|**assignUserEmail** | **String** | The assigned user&#39;s email |  [optional] |
|**completion** | [**CreateServiceNowIncidentTaskParamsCompletion**](CreateServiceNowIncidentTaskParamsCompletion.md) |  |  |
|**dueDate** | **String** | The due date |  [optional] |
|**dependencyDirection** | [**DependencyDirectionEnum**](#DependencyDirectionEnum) |  |  [optional] |
|**dependentTaskIds** | **List&lt;String&gt;** | Dependent task ids. Supports liquid syntax |  [optional] |
|**workspace** | [**AddActionItemTaskParamsPostToSlackChannelsInner**](AddActionItemTaskParamsPostToSlackChannelsInner.md) |  |  |
|**projects** | [**List&lt;AddActionItemTaskParamsPostToSlackChannelsInner&gt;**](AddActionItemTaskParamsPostToSlackChannelsInner.md) |  |  |
|**integration** | [**CreateJiraIssueTaskParamsIntegration**](CreateJiraIssueTaskParamsIntegration.md) |  |  [optional] |
|**space** | [**AddActionItemTaskParamsPostToSlackChannelsInner**](AddActionItemTaskParamsPostToSlackChannelsInner.md) |  |  |
|**ancestor** | [**AddActionItemTaskParamsPostToSlackChannelsInner**](AddActionItemTaskParamsPostToSlackChannelsInner.md) |  |  [optional] |
|**template** | [**CreateIncidentPostmortemTaskParamsTemplate**](CreateIncidentPostmortemTaskParamsTemplate.md) |  |  [optional] |
|**postMortemTemplateId** | **String** | Retrospective template to use when creating page task, if desired |  [optional] |
|**markPostMortemAsPublished** | **Boolean** |  |  [optional] |
|**subtitle** | **String** | The Coda page subtitle |  [optional] |
|**folderId** | **String** | The Coda folder id |  [optional] |
|**namespace** | [**AddActionItemTaskParamsPostToSlackChannelsInner**](AddActionItemTaskParamsPostToSlackChannelsInner.md) |  |  [optional] |
|**parentFolder** | [**AddActionItemTaskParamsPostToSlackChannelsInner**](AddActionItemTaskParamsPostToSlackChannelsInner.md) |  |  [optional] |
|**body** | **String** | The issue body |  |
|**repository** | [**AddActionItemTaskParamsPostToSlackChannelsInner**](AddActionItemTaskParamsPostToSlackChannelsInner.md) |  |  |
|**issueType** | [**IssueTypeEnum**](#IssueTypeEnum) | The issue type |  |
|**labels** | **List&lt;String&gt;** |  |  [optional] |
|**calendar** | [**AddActionItemTaskParamsPostToSlackChannelsInner**](AddActionItemTaskParamsPostToSlackChannelsInner.md) |  |  |
|**attendees** | **List&lt;String&gt;** | Emails of attendees |  [optional] |
|**timeZone** | **String** | A valid IANA time zone name. |  [optional] |
|**daysUntilMeeting** | **Integer** | The days until meeting |  |
|**timeOfMeeting** | **String** | Time of meeting in format HH:MM |  |
|**meetingDuration** | **String** | Meeting duration in format like &#39;1 hour&#39;, &#39;30 minutes&#39; |  |
|**excludeWeekends** | **Boolean** |  |  [optional] |
|**calendarId** | **String** |  |  [optional] |
|**sendUpdates** | **Boolean** | Send an email to the attendees notifying them of the event |  [optional] |
|**canGuestsModifyEvent** | **Boolean** |  |  [optional] |
|**canGuestsSeeOtherGuests** | **Boolean** |  |  [optional] |
|**canGuestsInviteOthers** | **Boolean** |  |  [optional] |
|**conferenceSolutionKey** | [**ConferenceSolutionKeyEnum**](#ConferenceSolutionKeyEnum) | [DEPRECATED] Sets the video conference type attached to the meeting |  [optional] |
|**fileId** | **String** | The Notion page ID |  |
|**templateId** | **String** | The Quip file ID to use as a template |  [optional] |
|**docId** | **String** | The Coda doc id |  [optional] |
|**pageId** | **String** | The Coda page id |  |
|**eventId** | **String** | The event ID |  |
|**adjustmentDays** | **Integer** | Days to adjust meeting by |  [optional] |
|**replaceAttendees** | **Boolean** |  |  [optional] |
|**site** | [**AddActionItemTaskParamsPostToSlackChannelsInner**](AddActionItemTaskParamsPostToSlackChannelsInner.md) |  |  |
|**drive** | [**AddActionItemTaskParamsPostToSlackChannelsInner**](AddActionItemTaskParamsPostToSlackChannelsInner.md) |  |  |
|**permissions** | **String** | Page permissions JSON |  |
|**sendNotificationEmail** | **Boolean** |  |  [optional] |
|**emailMessage** | **String** | Email message notification |  [optional] |
|**value** | **String** |  |  |
|**parentFolderId** | **String** | The parent folder id |  [optional] |
|**recordMeeting** | **Boolean** | Rootly AI will record the meeting and automatically generate a transcript and summary from your meeting |  [optional] |
|**subject** | **String** | The ticket subject |  |
|**conferenceCallInfo** | [**ConferenceCallInfoEnum**](#ConferenceCallInfoEnum) |  |  [optional] |
|**passwordRequired** | **Boolean** |  |  [optional] |
|**severityId** | **String** |  |  [optional] |
|**incidentTypeIds** | **List&lt;String&gt;** |  |  [optional] |
|**serviceIds** | **List&lt;String&gt;** |  |  [optional] |
|**functionalityIds** | **List&lt;String&gt;** |  |  [optional] |
|**environmentIds** | **List&lt;String&gt;** |  |  [optional] |
|**_private** | **Boolean** |  |  [optional] |
|**incidentId** | **String** | The incident id |  |
|**reporterUserEmail** | **String** | The reporter user&#39;s email |  [optional] |
|**projectKey** | **String** | The project key |  |
|**updatePayload** | **String** | Update payload. Can contain liquid markup and need to be valid JSON |  [optional] |
|**parentIssueId** | **String** | The parent issue |  |
|**subtaskIssueType** | [**CreateJiraIssueTaskParamsIssueType**](CreateJiraIssueTaskParamsIssueType.md) |  |  |
|**state** | [**CreateLinearIssueTaskParamsState**](CreateLinearIssueTaskParamsState.md) |  |  |
|**project** | [**CreateLinearIssueTaskParamsProject**](CreateLinearIssueTaskParamsProject.md) |  |  [optional] |
|**issueId** | **String** | The issue id |  |
|**emails** | **String** | Comma separated list of emails to invite |  |
|**parentPage** | [**CreateNotionPageTaskParamsParentPage**](CreateNotionPageTaskParamsParentPage.md) |  |  |
|**showTimelineAsTable** | **Boolean** |  |  [optional] |
|**showActionItemsAsTable** | **Boolean** |  |  [optional] |
|**text** | **String** | The message text |  |
|**attachments** | **String** | Support liquid markup. Needs to be a valid JSON string after liquid is parsed |  |
|**archivation** | [**CreateTrelloCardTaskParamsArchivation**](CreateTrelloCardTaskParamsArchivation.md) |  |  |
|**group** | [**Object**](Object.md) | The group id and display name |  [optional] |
|**workflowState** | [**Object**](Object.md) | The workflow state id workflow state name |  [optional] |
|**parentStoryId** | **String** | The parent story |  |
|**board** | [**CreateTrelloCardTaskParamsBoard**](CreateTrelloCardTaskParamsBoard.md) |  |  |
|**_list** | [**CreateTrelloCardTaskParamsList**](CreateTrelloCardTaskParamsList.md) |  |  |
|**topic** | **String** |  |  |
|**password** | **String** | The meeting password |  [optional] |
|**comment** | **String** | The ticket comment |  [optional] |
|**tags** | **String** | The ticket tags |  [optional] |
|**ticketPayload** | **String** | Additional Zendesk ticket attributes. Will be merged into whatever was specified in this tasks current parameters. Can contain liquid markup and need to be valid JSON |  [optional] |
|**jiraIssueId** | **String** | Jira Issue Id. |  |
|**jiraIssueKey** | **String** | Jira Issue Key. |  |
|**zendeskTicketId** | **String** | Zendesk Ticket Id. |  |
|**taskPayload** | **String** | Additional ClickUp task attributes. Will be merged into whatever was specified in this tasks current parameters. Can contain liquid markup and need to be valid JSON |  [optional] |
|**duration** | **String** | The duration. Eg.  \&quot;NONE\&quot;, \&quot;REMINDER\&quot;, or a integer greater than 0. |  [optional] |
|**createAsEmail** | **String** | The email to use if creating as email |  [optional] |
|**alternativeHosts** | **List&lt;String&gt;** |  |  [optional] |
|**autoRecording** | [**AutoRecordingEnum**](#AutoRecordingEnum) |  |  [optional] |
|**githubRepositoryNames** | **List&lt;String&gt;** |  |  [optional] |
|**branch** | **String** | The branch |  |
|**pastDuration** | **String** | in format &#39;1 minute&#39;, &#39;30 days&#39;, &#39;3 months&#39;, etc |  |
|**servicesImpactedByIncident** | **Boolean** |  |  [optional] |
|**gitlabRepositoryNames** | **List&lt;String&gt;** |  |  [optional] |
|**refs** | **List&lt;String&gt;** |  |  [optional] |
|**sources** | **List&lt;String&gt;** |  |  [optional] |
|**environmentsImpactedByIncident** | **Boolean** |  |  [optional] |
|**parentMessageThreadTask** | [**Object**](Object.md) | A hash where [id] is the task id of the parent task that sent a message, and [name] is the name of the parent task |  [optional] |
|**headers** | **String** | JSON map of HTTP headers |  [optional] |
|**params** | **String** | JSON map of HTTP query parameters |  [optional] |
|**eventUrl** | **String** |  |  [optional] |
|**eventMessage** | **String** |  |  [optional] |
|**method** | [**MethodEnum**](#MethodEnum) | HTTP method |  [optional] |
|**succeedOnStatus** | **String** | HTTP status code expected. Can be a regular expression. Eg: 200, 200|203, 20[0-3] |  |
|**slackUsers** | [**List&lt;Object&gt;**](Object.md) |  |  [optional] |
|**slackUserGroups** | [**List&lt;Object&gt;**](Object.md) |  |  [optional] |
|**slackEmails** | **String** | Comma separated list of emails to invite to the channel |  [optional] |
|**schedules** | [**List&lt;AddActionItemTaskParamsPostToSlackChannelsInner&gt;**](AddActionItemTaskParamsPostToSlackChannelsInner.md) |  |  [optional] |
|**escalations** | [**List&lt;AddActionItemTaskParamsPostToSlackChannelsInner&gt;**](AddActionItemTaskParamsPostToSlackChannelsInner.md) |  |  [optional] |
|**details** | **String** | Details payload. Can contain liquid markup and need to be valid JSON |  [optional] |
|**alertId** | **String** | Opsgenie Alert ID |  |
|**opsgenieIncidentId** | **String** | The Opsgenie incident ID, this can also be a Rootly incident variable ex. {{ incident.opsgenie_incident_id }} |  |
|**alertUrgencyId** | **String** | Alert urgency ID |  [optional] |
|**escalationNote** | **String** |  |  [optional] |
|**escalationPolicies** | [**List&lt;Object&gt;**](Object.md) |  |  [optional] |
|**createNewIncidentOnConflict** | **Boolean** | Rootly only supports linking to a single PagerDuty incident. If this feature is disabled Rootly will add responders from any additional pages to the existing PagerDuty incident that is linked to the Rootly incident. If enabled, Rootly will create a new PagerDuty incident that is not linked to any Rootly incidents |  [optional] |
|**victorOpsIncidentId** | **String** | The victor_ops incident ID, this can also be a Rootly incident variable ex. {{ incident.victor_ops_incident_id }} |  |
|**resolutionMessage** | **String** | Resolution message |  [optional] |
|**publicTitle** | **String** |  |  |
|**notifySubscribers** | **Boolean** | When true notifies subscribers of the status page by email/text |  [optional] |
|**shouldTweet** | **Boolean** | For Statuspage.io integrated pages auto publishes a tweet for your update |  [optional] |
|**statusPageTemplate** | [**AddActionItemTaskParamsPostToSlackChannelsInner**](AddActionItemTaskParamsPostToSlackChannelsInner.md) |  |  [optional] |
|**statusPageId** | **String** |  |  |
|**integrationPayload** | **String** | Additional API Payload you can pass to statuspage.io for example. Can contain liquid markup and need to be valid JSON |  [optional] |
|**commands** | **String** |  |  |
|**privacy** | [**PrivacyEnum**](#PrivacyEnum) |  |  |
|**command** | **String** |  |  |
|**appName** | **String** |  |  |
|**size** | [**SizeEnum**](#SizeEnum) |  |  |
|**from** | **String** | The from email address. Need to use SMTP integration if different than rootly.com |  [optional] |
|**to** | **List&lt;String&gt;** |  |  |
|**cc** | **List&lt;String&gt;** |  |  [optional] |
|**bcc** | **List&lt;String&gt;** |  |  [optional] |
|**preheader** | **String** | The preheader |  [optional] |
|**includeHeader** | **Boolean** |  |  [optional] |
|**includeFooter** | **Boolean** |  |  [optional] |
|**customLogoUrl** | **String** | URL to your custom email logo |  [optional] |
|**dashboardIds** | **List&lt;String&gt;** |  |  |
|**actionables** | [**List&lt;ActionablesEnum&gt;**](#List&lt;ActionablesEnum&gt;) |  |  [optional] |
|**broadcastThreadReplyToChannel** | **Boolean** |  |  [optional] |
|**sendAsEphemeral** | **Boolean** |  |  [optional] |
|**color** | **String** | A hex color ex. #FFFFFF |  [optional] |
|**pinToChannel** | **Boolean** |  |  [optional] |
|**updateParentMessage** | **Boolean** |  |  [optional] |
|**threadTs** | **String** | The thread to send the message into |  [optional] |
|**sendOnlyAsThreadedMessage** | **Boolean** | When set to true, if the parent for this threaded message cannot be found the message will be skipped. |  [optional] |
|**metricQueries** | **List&lt;String&gt;** |  |  [optional] |
|**metricQuery** | **String** |  |  |
|**metricType** | [**MetricTypeEnum**](#MetricTypeEnum) |  |  |
|**baseKey** | **String** | The base key |  |
|**tableName** | **String** | The table name |  |
|**recordId** | **String** | The record id |  |
|**taskId** | **String** | The task id |  |
|**startedAt** | **String** |  |  [optional] |
|**detectedAt** | **String** |  |  [optional] |
|**acknowledgedAt** | **String** |  |  [optional] |
|**mitigatedAt** | **String** |  |  [optional] |
|**resolvedAt** | **String** |  |  [optional] |
|**postmortemId** | **String** | UUID of the retrospective that needs to be updated |  |
|**storyId** | **String** | The story id |  |
|**inactivityTimeout** | **String** | In format &#39;1 hour&#39;, &#39;1 day&#39;, etc |  [optional] |
|**subStatusId** | **String** | Sub-status to update timestamp for |  |
|**assignedAt** | **String** | Timestamp of when the sub-status was assigned |  |
|**cardId** | **String** | The card id |  |
|**ticketId** | **String** | The ticket id |  |
|**resource** | [**AddActionItemTaskParamsPostToSlackChannelsInner**](AddActionItemTaskParamsPostToSlackChannelsInner.md) |  |  |
|**workflow** | [**AddActionItemTaskParamsPostToSlackChannelsInner**](AddActionItemTaskParamsPostToSlackChannelsInner.md) |  |  |
|**checkWorkflowConditions** | **Boolean** |  |  [optional] |
|**blocks** | **String** | Support liquid markup. Needs to be a valid JSON string after liquid is parsed |  |
|**model** | [**GeniusCreateWatsonxChatCompletionTaskParamsModel**](GeniusCreateWatsonxChatCompletionTaskParamsModel.md) |  |  |
|**prompt** | **String** | The prompt to send to WatsonX |  |
|**projectId** | **String** |  |  |



## Enum: TaskTypeEnum

| Name | Value |
|---- | -----|
| GENIUS_CREATE_WATSONX_CHAT_COMPLETION_TASK | &quot;genius_create_watsonx_chat_completion_task&quot; |



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



## Enum: KindEnum

| Name | Value |
|---- | -----|
| INCIDENT | &quot;incident&quot; |
| POST_MORTEM | &quot;post_mortem&quot; |
| ACTION_ITEM | &quot;action_item&quot; |
| PULSE | &quot;pulse&quot; |
| ALERT | &quot;alert&quot; |



## Enum: StatusEnum

| Name | Value |
|---- | -----|
| ACKNOWLEDGED | &quot;acknowledged&quot; |
| RESOLVED | &quot;resolved&quot; |



## Enum: UrgencyEnum

| Name | Value |
|---- | -----|
| HIGH | &quot;high&quot; |
| LOW | &quot;low&quot; |
| AUTO | &quot;auto&quot; |



## Enum: SeverityEnum

| Name | Value |
|---- | -----|
| AUTO | &quot;auto&quot; |
| SEV_1 | &quot;SEV-1&quot; |
| SEV_2 | &quot;SEV-2&quot; |
| SEV_3 | &quot;SEV-3&quot; |
| SEV_4 | &quot;SEV-4&quot; |



## Enum: DependencyDirectionEnum

| Name | Value |
|---- | -----|
| BLOCKING | &quot;blocking&quot; |
| BLOCKED_BY | &quot;blocked_by&quot; |



## Enum: IssueTypeEnum

| Name | Value |
|---- | -----|
| ISSUE | &quot;issue&quot; |
| INCIDENT | &quot;incident&quot; |
| TEST_CASE | &quot;test_case&quot; |
| TASK | &quot;task&quot; |



## Enum: ConferenceSolutionKeyEnum

| Name | Value |
|---- | -----|
| EVENT_HANGOUT | &quot;eventHangout&quot; |
| EVENT_NAMED_HANGOUT | &quot;eventNamedHangout&quot; |
| HANGOUTS_MEET | &quot;hangoutsMeet&quot; |
| ADD_ON | &quot;addOn&quot; |



## Enum: ConferenceCallInfoEnum

| Name | Value |
|---- | -----|
| PTSN | &quot;ptsn&quot; |
| FREE | &quot;free&quot; |
| HYRID | &quot;hyrid&quot; |
| VOIP | &quot;voip&quot; |



## Enum: AutoRecordingEnum

| Name | Value |
|---- | -----|
| NONE | &quot;none&quot; |
| LOCAL | &quot;local&quot; |
| CLOUD | &quot;cloud&quot; |



## Enum: MethodEnum

| Name | Value |
|---- | -----|
| GET | &quot;GET&quot; |
| POST | &quot;POST&quot; |
| PATCH | &quot;PATCH&quot; |
| PUT | &quot;PUT&quot; |
| DELETE | &quot;DELETE&quot; |
| OPTIONS | &quot;OPTIONS&quot; |



## Enum: PrivacyEnum

| Name | Value |
|---- | -----|
| PRIVATE | &quot;private&quot; |
| PUBLIC | &quot;public&quot; |



## Enum: SizeEnum

| Name | Value |
|---- | -----|
| STANDARD_1_X | &quot;standard-1X&quot; |
| STANDARD_2_X | &quot;standard-2X&quot; |



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



## Enum: MetricTypeEnum

| Name | Value |
|---- | -----|
| APDEX | &quot;APDEX&quot; |
| AREA | &quot;AREA&quot; |
| BAR | &quot;BAR&quot; |
| BASELINE | &quot;BASELINE&quot; |
| BILLBOARD | &quot;BILLBOARD&quot; |
| BULLET | &quot;BULLET&quot; |
| EVENT_FEED | &quot;EVENT_FEED&quot; |
| FUNNEL | &quot;FUNNEL&quot; |
| HEATMAP | &quot;HEATMAP&quot; |
| HISTOGRAM | &quot;HISTOGRAM&quot; |
| LINE | &quot;LINE&quot; |
| PIE | &quot;PIE&quot; |
| SCATTER | &quot;SCATTER&quot; |
| STACKED_HORIZONTAL_BAR | &quot;STACKED_HORIZONTAL_BAR&quot; |
| TABLE | &quot;TABLE&quot; |
| VERTICAL_BAR | &quot;VERTICAL_BAR&quot; |




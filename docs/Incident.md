

# Incident


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**id** | **String** | Unique ID of the incident |  [optional] |
|**sequentialId** | **Integer** | Sequential ID of the incident |  [optional] |
|**title** | **String** | The title of the incident |  |
|**kind** | **String** | The kind of the incident |  [optional] |
|**slug** | **String** | The slug of the incident |  |
|**parentIncidentId** | **String** | ID of parent incident |  [optional] |
|**duplicateIncidentId** | **String** | ID of duplicated incident |  [optional] |
|**summary** | **String** | The summary of the incident |  [optional] |
|**_private** | **Boolean** | The visibility of the incident |  [optional] |
|**source** | **String** | The source of the incident |  [optional] |
|**status** | **String** | The status of the incident |  [optional] |
|**url** | **String** | The url to the incident |  [optional] |
|**shortUrl** | **String** | The short url to the incident |  [optional] |
|**publicTitle** | **String** | The public title of the incident |  [optional] |
|**user** | **Object** | The user who created the incident |  [optional] |
|**severity** | [**SeverityResponse**](SeverityResponse.md) | The Severity of the incident |  [optional] |
|**environments** | [**List&lt;EnvironmentResponse&gt;**](EnvironmentResponse.md) | The Environments of the incident |  [optional] |
|**incidentTypes** | [**List&lt;IncidentTypeResponse&gt;**](IncidentTypeResponse.md) | The Incident Types of the incident |  [optional] |
|**services** | [**List&lt;ServiceResponse&gt;**](ServiceResponse.md) | The Services of the incident |  [optional] |
|**functionalities** | [**List&lt;FunctionalityResponse&gt;**](FunctionalityResponse.md) | The Functionalities of the incident |  [optional] |
|**groups** | [**List&lt;TeamResponse&gt;**](TeamResponse.md) | The Teams of to the incident |  [optional] |
|**labels** | **Object** | Labels to attach to the incidents. eg: {\&quot;platform\&quot;:\&quot;osx\&quot;, \&quot;version\&quot;: \&quot;1.29\&quot;} |  [optional] |
|**slackChannelId** | **String** | Slack channel id |  [optional] |
|**slackChannelName** | **String** | Slack channel name |  [optional] |
|**slackChannelUrl** | **String** | Slack channel url |  [optional] |
|**slackChannelShortUrl** | **String** | Slack channel short url |  [optional] |
|**slackChannelDeepLink** | **String** | Slack channel deep link |  [optional] |
|**slackChannelArchived** | **Boolean** | Whether the Slack channel is archived |  [optional] |
|**slackLastMessageTs** | **String** | Timestamp of last Slack message |  [optional] |
|**zoomMeetingId** | **String** | Zoom meeting ID |  [optional] |
|**zoomMeetingStartUrl** | **String** | Zoom meeting start URL |  [optional] |
|**zoomMeetingJoinUrl** | **String** | Zoom meeting join URL |  [optional] |
|**zoomMeetingPassword** | **String** | Zoom meeting password |  [optional] |
|**zoomMeetingPstnPassword** | **String** | Zoom meeting PSTN password |  [optional] |
|**zoomMeetingH323Password** | **String** | Zoom meeting H323 password |  [optional] |
|**zoomMeetingGlobalDialInNumbers** | **List&lt;String&gt;** | Zoom meeting global dial-in numbers |  [optional] |
|**googleDriveId** | **String** | Google Drive document ID |  [optional] |
|**googleDriveParentId** | **String** | Google Drive parent folder ID |  [optional] |
|**googleDriveUrl** | **String** | Google Drive URL |  [optional] |
|**googleMeetingId** | **String** | Google meeting ID |  [optional] |
|**googleMeetingUrl** | **String** | Google meeting URL |  [optional] |
|**jiraIssueKey** | **String** | Jira issue key |  [optional] |
|**jiraIssueId** | **String** | Jira issue ID |  [optional] |
|**jiraIssueUrl** | **String** | Jira issue URL |  [optional] |
|**githubIssueId** | **String** | GitHub issue ID |  [optional] |
|**githubIssueUrl** | **String** | GitHub issue URL |  [optional] |
|**gitlabIssueId** | **String** | GitLab issue ID |  [optional] |
|**gitlabIssueUrl** | **String** | GitLab issue URL |  [optional] |
|**asanaTaskId** | **String** | Asana task ID |  [optional] |
|**asanaTaskUrl** | **String** | Asana task URL |  [optional] |
|**linearIssueId** | **String** | Linear issue ID |  [optional] |
|**linearIssueUrl** | **String** | Linear issue URL |  [optional] |
|**trelloCardId** | **String** | Trello card ID |  [optional] |
|**trelloCardUrl** | **String** | Trello card URL |  [optional] |
|**zendeskTicketId** | **String** | Zendesk ticket ID |  [optional] |
|**zendeskTicketUrl** | **String** | Zendesk ticket URL |  [optional] |
|**pagerdutyIncidentId** | **String** | PagerDuty incident ID |  [optional] |
|**pagerdutyIncidentNumber** | **String** | PagerDuty incident number |  [optional] |
|**pagerdutyIncidentUrl** | **String** | PagerDuty incident URL |  [optional] |
|**opsgenieIncidentId** | **String** | Opsgenie incident ID |  [optional] |
|**opsgenieIncidentUrl** | **String** | Opsgenie incident URL |  [optional] |
|**opsgenieAlertId** | **String** | Opsgenie alert ID |  [optional] |
|**opsgenieAlertUrl** | **String** | Opsgenie alert URL |  [optional] |
|**serviceNowIncidentId** | **String** | ServiceNow incident ID |  [optional] |
|**serviceNowIncidentKey** | **String** | ServiceNow incident key |  [optional] |
|**serviceNowIncidentUrl** | **String** | ServiceNow incident URL |  [optional] |
|**mattermostChannelId** | **String** | Mattermost channel ID |  [optional] |
|**mattermostChannelName** | **String** | Mattermost channel name |  [optional] |
|**mattermostChannelUrl** | **String** | Mattermost channel URL |  [optional] |
|**confluencePageId** | **String** | Confluence page ID |  [optional] |
|**confluencePageUrl** | **String** | Confluence page URL |  [optional] |
|**datadogNotebookId** | **String** | Datadog notebook ID |  [optional] |
|**datadogNotebookUrl** | **String** | Datadog notebook URL |  [optional] |
|**shortcutStoryId** | **String** | Shortcut story ID |  [optional] |
|**shortcutStoryUrl** | **String** | Shortcut story URL |  [optional] |
|**shortcutTaskId** | **String** | Shortcut task ID |  [optional] |
|**shortcutTaskUrl** | **String** | Shortcut task URL |  [optional] |
|**motionTaskId** | **String** | Motion task ID |  [optional] |
|**motionTaskUrl** | **String** | Motion task URL |  [optional] |
|**clickupTaskId** | **String** | ClickUp task ID |  [optional] |
|**clickupTaskUrl** | **String** | ClickUp task URL |  [optional] |
|**victorOpsIncidentId** | **String** | VictorOps incident ID |  [optional] |
|**victorOpsIncidentUrl** | **String** | VictorOps incident URL |  [optional] |
|**quipPageId** | **String** | Quip page ID |  [optional] |
|**quipPageUrl** | **String** | Quip page URL |  [optional] |
|**sharepointPageId** | **String** | SharePoint page ID |  [optional] |
|**sharepointPageUrl** | **String** | SharePoint page URL |  [optional] |
|**airtableBaseKey** | **String** | Airtable base key |  [optional] |
|**airtableTableName** | **String** | Airtable table name |  [optional] |
|**airtableRecordId** | **String** | Airtable record ID |  [optional] |
|**airtableRecordUrl** | **String** | Airtable record URL |  [optional] |
|**freshserviceTicketId** | **String** | Freshservice ticket ID |  [optional] |
|**freshserviceTicketUrl** | **String** | Freshservice ticket URL |  [optional] |
|**freshserviceTaskId** | **String** | Freshservice task ID |  [optional] |
|**freshserviceTaskUrl** | **String** | Freshservice task URL |  [optional] |
|**mitigationMessage** | **String** | How was the incident mitigated? |  [optional] |
|**resolutionMessage** | **String** | How was the incident resolved? |  [optional] |
|**cancellationMessage** | **String** | Why was the incident cancelled? |  [optional] |
|**scheduledFor** | **String** | Date of when the maintenance begins |  [optional] |
|**scheduledUntil** | **String** | Date of when the maintenance ends |  [optional] |
|**mutedServiceIds** | **List&lt;String&gt;** | The Service IDs to mute alerts for during maintenance. Alerts for these services will still be triggered and attached to the incident, but won&#39;t page responders. |  [optional] |
|**retrospectiveProgressStatus** | [**RetrospectiveProgressStatusEnum**](#RetrospectiveProgressStatusEnum) | The status of the retrospective progress |  [optional] |
|**inTriageBy** | **Object** | The user who triaged the incident |  [optional] |
|**startedBy** | **Object** | The user who started the incident |  [optional] |
|**mitigatedBy** | **Object** | The user who mitigated the incident |  [optional] |
|**resolvedBy** | **Object** | The user who resolved the incident |  [optional] |
|**closedBy** | **Object** | The user who closed the incident |  [optional] |
|**cancelledBy** | **Object** | The user who cancelled the incident |  [optional] |
|**inTriageAt** | **String** | Date of triage |  [optional] |
|**startedAt** | **String** | Date of start |  [optional] |
|**detectedAt** | **String** | Date of detection |  [optional] |
|**acknowledgedAt** | **String** | Date of acknowledgment |  [optional] |
|**mitigatedAt** | **String** | Date of mitigation |  [optional] |
|**resolvedAt** | **String** | Date of resolution |  [optional] |
|**closedAt** | **String** | Date of closure |  [optional] |
|**cancelledAt** | **String** | Date of cancellation |  [optional] |
|**createdAt** | **String** | Date of creation |  |
|**updatedAt** | **String** | Date of last update |  |



## Enum: RetrospectiveProgressStatusEnum

| Name | Value |
|---- | -----|
| NOT_STARTED | &quot;not_started&quot; |
| ACTIVE | &quot;active&quot; |
| COMPLETED | &quot;completed&quot; |
| SKIPPED | &quot;skipped&quot; |




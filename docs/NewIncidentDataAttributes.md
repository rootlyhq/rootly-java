

# NewIncidentDataAttributes


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**title** | **String** | The title of the incident. We will autogenerate one if null |  [optional] |
|**kind** | [**KindEnum**](#KindEnum) | The kind of the incident |  [optional] |
|**parentIncidentId** | **String** | ID of parent incident |  [optional] |
|**duplicateIncidentId** | **String** | ID of duplicated incident |  [optional] |
|**_private** | **Boolean** | Create an incident as private. Once an incident is made as private it cannot be undone |  [optional] |
|**summary** | **String** | The summary of the incident |  [optional] |
|**userId** | **String** | User ID of the creator of the incident. Default to the user attached to the Api Key |  [optional] |
|**severityId** | **String** | The Severity ID to attach to the incident |  [optional] |
|**publicTitle** | **String** | The public title of the incident |  [optional] |
|**alertIds** | **List&lt;String&gt;** | The Alert IDs to attach to the incident |  [optional] |
|**environmentIds** | **List&lt;String&gt;** | The Environment IDs to attach to the incident |  [optional] |
|**incidentTypeIds** | **List&lt;String&gt;** | The Incident Type IDs to attach to the incident |  [optional] |
|**serviceIds** | **List&lt;String&gt;** | The Service IDs to attach to the incident |  [optional] |
|**functionalityIds** | **List&lt;String&gt;** | The Functionality IDs to attach to the incident |  [optional] |
|**groupIds** | **List&lt;String&gt;** | The Team IDs to attach to the incident |  [optional] |
|**causeIds** | **List&lt;String&gt;** | The Cause IDs to attach to the incident |  [optional] |
|**mutedServiceIds** | **List&lt;String&gt;** | The Service IDs to mute alerts for during maintenance. Alerts for these services will still be triggered and attached to the incident, but won&#39;t page responders. |  [optional] |
|**labels** | **Object** | Labels to attach to the incidents. eg: {\&quot;platform\&quot;:\&quot;osx\&quot;, \&quot;version\&quot;: \&quot;1.29\&quot;} |  [optional] |
|**slackChannelName** | **String** | Slack channel name |  [optional] |
|**slackChannelId** | **String** | Slack channel id |  [optional] |
|**slackChannelUrl** | **String** | Slack channel url |  [optional] |
|**slackChannelArchived** | **Boolean** | Whether the Slack channel is archived |  [optional] |
|**googleDriveParentId** | **String** | Google Drive parent folder ID |  [optional] |
|**googleDriveUrl** | **String** | Google Drive URL |  [optional] |
|**jiraIssueKey** | **String** | Jira issue key |  [optional] |
|**jiraIssueId** | **String** | Jira issue ID |  [optional] |
|**jiraIssueUrl** | **String** | Jira issue URL |  [optional] |
|**notifyEmails** | **List&lt;String&gt;** | Emails you want to notify |  [optional] |
|**status** | [**StatusEnum**](#StatusEnum) | The status of the incident |  [optional] |
|**url** | **String** | The url to the incident |  [optional] |
|**scheduledFor** | **String** | Date of when the maintenance begins |  [optional] |
|**scheduledUntil** | **String** | Date of when the maintenance ends |  [optional] |
|**inTriageAt** | **String** | Date of triage |  [optional] |
|**startedAt** | **String** | Date of start |  [optional] |
|**detectedAt** | **String** | Date of detection |  [optional] |
|**acknowledgedAt** | **String** | Date of acknowledgment |  [optional] |
|**mitigatedAt** | **String** | Date of mitigation |  [optional] |
|**resolvedAt** | **String** | Date of resolution |  [optional] |
|**closedAt** | **String** | Date of closure |  [optional] |
|**cancelledAt** | **String** | Date of cancellation |  [optional] |



## Enum: KindEnum

| Name | Value |
|---- | -----|
| TEST | &quot;test&quot; |
| TEST_SUB | &quot;test_sub&quot; |
| EXAMPLE | &quot;example&quot; |
| EXAMPLE_SUB | &quot;example_sub&quot; |
| NORMAL | &quot;normal&quot; |
| NORMAL_SUB | &quot;normal_sub&quot; |
| BACKFILLED | &quot;backfilled&quot; |
| SCHEDULED | &quot;scheduled&quot; |
| SCHEDULED_SUB | &quot;scheduled_sub&quot; |



## Enum: StatusEnum

| Name | Value |
|---- | -----|
| IN_TRIAGE | &quot;in_triage&quot; |
| STARTED | &quot;started&quot; |
| DETECTED | &quot;detected&quot; |
| ACKNOWLEDGED | &quot;acknowledged&quot; |
| MITIGATED | &quot;mitigated&quot; |
| RESOLVED | &quot;resolved&quot; |
| CLOSED | &quot;closed&quot; |
| CANCELLED | &quot;cancelled&quot; |
| SCHEDULED | &quot;scheduled&quot; |
| IN_PROGRESS | &quot;in_progress&quot; |
| COMPLETED | &quot;completed&quot; |




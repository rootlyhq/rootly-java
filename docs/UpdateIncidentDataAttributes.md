

# UpdateIncidentDataAttributes


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**title** | **String** | The title of the incident |  [optional] |
|**kind** | [**KindEnum**](#KindEnum) | The kind of the incident |  [optional] |
|**parentIncidentId** | **String** | ID of parent incident |  [optional] |
|**duplicateIncidentId** | **String** | ID of duplicated incident |  [optional] |
|**summary** | **String** | The summary of the incident |  [optional] |
|**status** | [**StatusEnum**](#StatusEnum) | The status of the incident |  [optional] |
|**_private** | **Boolean** | Convert the incident as private. Once an incident is updated as private it cannot be undone |  [optional] |
|**severityId** | **String** | The Severity ID to attach to the incident |  [optional] |
|**environmentIds** | **List&lt;String&gt;** | The Environment ID&#39;s to attach to the incident |  [optional] |
|**incidentTypeIds** | **List&lt;String&gt;** | The Incident Type ID&#39;s to attach to the incident |  [optional] |
|**serviceIds** | **List&lt;String&gt;** | The Service ID&#39;s to attach to the incident |  [optional] |
|**functionalityIds** | **List&lt;String&gt;** | The Functionality ID&#39;s to attach to the incident |  [optional] |
|**groupIds** | **List&lt;String&gt;** | The Team ID&#39;s to attach to the incident |  [optional] |
|**causeIds** | **List&lt;String&gt;** | The Cause ID&#39;s to attach to the incident |  [optional] |
|**labels** | **Object** | Labels to attach to the incidents. eg: {\&quot;platform\&quot;:\&quot;osx\&quot;, \&quot;version\&quot;: \&quot;1.29\&quot;} |  [optional] |
|**slackChannelId** | **String** | Slack channel id |  [optional] |
|**slackChannelName** | **String** | Slack channel name |  [optional] |
|**slackChannelUrl** | **String** | Slack channel url |  [optional] |
|**scheduledFor** | **String** | Date of when the maintenance begins |  [optional] |
|**scheduledUntil** | **String** | Date of when the maintenance ends |  [optional] |
|**inTriageAt** | **String** | Date of triage |  [optional] |
|**startedAt** | **String** | Date of start |  [optional] |
|**detectedAt** | **String** | Date of detection |  [optional] |
|**acknowledgedAt** | **String** | Date of acknowledgment |  [optional] |
|**mitigatedAt** | **String** | Date of mitigation |  [optional] |
|**resolvedAt** | **String** | Date of resolution |  [optional] |
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




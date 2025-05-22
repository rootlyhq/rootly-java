

# Incident


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**title** | **String** | The title of the incident |  |
|**kind** | **String** | The kind of the incident |  [optional] |
|**slug** | **String** | The slug of the incident |  |
|**parentIncidentId** | **String** | ID of parent incident |  [optional] |
|**duplicateIncidentId** | **String** | ID of duplicated incident |  [optional] |
|**summary** | **String** | The summary of the incident |  [optional] |
|**_private** | **Boolean** | Create an incident as private |  [optional] |
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
|**mitigationMessage** | **String** | How was the incident mitigated? |  [optional] |
|**resolutionMessage** | **String** | How was the incident resolved? |  [optional] |
|**cancellationMessage** | **String** | Why was the incident cancelled? |  [optional] |
|**scheduledFor** | **String** | Date of when the maintenance begins |  [optional] |
|**scheduledUntil** | **String** | Date of when the maintenance ends |  [optional] |
|**retrospectiveProgressStatus** | [**RetrospectiveProgressStatusEnum**](#RetrospectiveProgressStatusEnum) | The status of the retrospective progress |  [optional] |
|**inTriageAt** | **String** | Date of triage |  [optional] |
|**startedAt** | **String** | Date of start |  [optional] |
|**detectedAt** | **String** | Date of detection |  [optional] |
|**acknowledgedAt** | **String** | Date of acknowledgment |  [optional] |
|**mitigatedAt** | **String** | Date of mitigation |  [optional] |
|**resolvedAt** | **String** | Date of resolution |  [optional] |
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




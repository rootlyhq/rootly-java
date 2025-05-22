

# Service


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**name** | **String** | The name of the service |  |
|**slug** | **String** | The slug of the service |  [optional] |
|**description** | **String** | The description of the service |  [optional] |
|**publicDescription** | **String** | The public description of the service |  [optional] |
|**notifyEmails** | **List&lt;String&gt;** | Emails attached to the service |  [optional] |
|**color** | **String** | The hex color of the service |  [optional] |
|**position** | **Integer** | Position of the service |  [optional] |
|**backstageId** | **String** | The Backstage entity id associated to this service. eg: :namespace/:kind/:entity_name |  [optional] |
|**externalId** | **String** | The external id associated to this service |  [optional] |
|**pagerdutyId** | **String** | The PagerDuty service id associated to this service |  [optional] |
|**opsgenieId** | **String** | The Opsgenie service id associated to this service |  [optional] |
|**cortexId** | **String** | The Cortex group id associated to this service |  [optional] |
|**serviceNowCiSysId** | **String** | The Service Now CI sys id associated to this service |  [optional] |
|**githubRepositoryName** | **String** | The GitHub repository name associated to this service. eg: rootlyhq/my-service |  [optional] |
|**githubRepositoryBranch** | **String** | The GitHub repository branch associated to this service. eg: main |  [optional] |
|**gitlabRepositoryName** | **String** | The GitLab repository name associated to this service. eg: rootlyhq/my-service |  [optional] |
|**gitlabRepositoryBranch** | **String** | The GitLab repository branch associated to this service. eg: main |  [optional] |
|**environmentIds** | **List&lt;String&gt;** | Environments associated with this service |  [optional] |
|**serviceIds** | **List&lt;String&gt;** | Services dependent on this service |  [optional] |
|**ownersGroupIds** | **List&lt;String&gt;** | Owner Teams associated with this service |  [optional] |
|**ownersUserIds** | **List&lt;Integer&gt;** | Owner Users associated with this service |  [optional] |
|**alertUrgencyId** | **String** | The alert urgency id of the service |  [optional] |
|**alertsEmailEnabled** | **Boolean** | Enable alerts through email |  [optional] |
|**alertsEmailAddress** | **String** | Email generated to send alerts to |  [optional] |
|**slackChannels** | [**List&lt;NewEnvironmentDataAttributesSlackChannelsInner&gt;**](NewEnvironmentDataAttributesSlackChannelsInner.md) | Slack Channels associated with this service |  [optional] |
|**slackAliases** | [**List&lt;NewEnvironmentDataAttributesSlackAliasesInner&gt;**](NewEnvironmentDataAttributesSlackAliasesInner.md) | Slack Aliases associated with this service |  [optional] |
|**createdAt** | **String** | Date of creation |  |
|**updatedAt** | **String** | Date of last update |  |




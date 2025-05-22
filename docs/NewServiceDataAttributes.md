

# NewServiceDataAttributes


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**name** | **String** | The name of the service |  |
|**description** | **String** | The description of the service |  [optional] |
|**publicDescription** | **String** | The public description of the service |  [optional] |
|**notifyEmails** | **List&lt;String&gt;** | Emails to attach to the service |  [optional] |
|**color** | **String** | The hex color of the service |  [optional] |
|**position** | **Integer** | Position of the service |  [optional] |
|**showUptime** | **Boolean** | Show uptime |  [optional] |
|**showUptimeLastDays** | [**ShowUptimeLastDaysEnum**](#ShowUptimeLastDaysEnum) | Show uptime over x days |  [optional] |
|**backstageId** | **String** | The Backstage entity id associated to this service. eg: :namespace/:kind/:entity_name |  [optional] |
|**pagerdutyId** | **String** | The PagerDuty service id associated to this service |  [optional] |
|**externalId** | **String** | The external id associated to this service |  [optional] |
|**opsgenieId** | **String** | The Opsgenie service id associated to this service |  [optional] |
|**opsgenieTeamId** | **String** | The Opsgenie team id associated to this service |  [optional] |
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
|**alertsEmailEnabled** | **Boolean** | Enable alerts through email |  [optional] |
|**alertUrgencyId** | **String** | The alert urgency id of the service |  [optional] |
|**slackChannels** | [**List&lt;NewEnvironmentDataAttributesSlackChannelsInner&gt;**](NewEnvironmentDataAttributesSlackChannelsInner.md) | Slack Channels associated with this service |  [optional] |
|**slackAliases** | [**List&lt;NewEnvironmentDataAttributesSlackAliasesInner&gt;**](NewEnvironmentDataAttributesSlackAliasesInner.md) | Slack Aliases associated with this service |  [optional] |



## Enum: ShowUptimeLastDaysEnum

| Name | Value |
|---- | -----|
| NUMBER_30 | 30 |
| NUMBER_60 | 60 |
| NUMBER_90 | 90 |




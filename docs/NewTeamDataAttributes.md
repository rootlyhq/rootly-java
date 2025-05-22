

# NewTeamDataAttributes


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**name** | **String** | The name of the team |  |
|**description** | **String** | The description of the team |  [optional] |
|**notifyEmails** | **List&lt;String&gt;** | Emails to attach to the team |  [optional] |
|**color** | **String** | The hex color of the team |  [optional] |
|**position** | **Integer** | Position of the team |  [optional] |
|**backstageId** | **String** | The Backstage entity id associated to this team. eg: :namespace/:kind/:entity_name |  [optional] |
|**externalId** | **String** | The external id associated to this team |  [optional] |
|**pagerdutyId** | **String** | The PagerDuty group id associated to this team |  [optional] |
|**pagerdutyServiceId** | **String** | The PagerDuty service id associated to this team |  [optional] |
|**opsgenieId** | **String** | The Opsgenie group id associated to this team |  [optional] |
|**opsgenieTeamId** | **String** | The Opsgenie team id associated to this team |  [optional] |
|**victorOpsId** | **String** | The VictorOps group id associated to this team |  [optional] |
|**pagertreeId** | **String** | The PagerTree group id associated to this team |  [optional] |
|**cortexId** | **String** | The Cortex group id associated to this team |  [optional] |
|**serviceNowCiSysId** | **String** | The Service Now CI sys id associated to this team |  [optional] |
|**userIds** | **List&lt;Integer&gt;** | The user ids of the members of this team. |  [optional] |
|**adminIds** | **List&lt;Integer&gt;** | The user ids of the admins of this team. These users must also be present in user_ids attribute. |  [optional] |
|**alertsEmailEnabled** | **Boolean** | Enable alerts through email |  [optional] |
|**alertUrgencyId** | **String** | The alert urgency id of the team |  [optional] |
|**slackChannels** | [**List&lt;NewEnvironmentDataAttributesSlackChannelsInner&gt;**](NewEnvironmentDataAttributesSlackChannelsInner.md) | Slack Channels associated with this team |  [optional] |
|**slackAliases** | [**List&lt;NewEnvironmentDataAttributesSlackAliasesInner&gt;**](NewEnvironmentDataAttributesSlackAliasesInner.md) | Slack Aliases associated with this team |  [optional] |




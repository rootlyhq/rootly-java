

# Functionality


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**name** | **String** | The name of the functionality |  |
|**slug** | **String** | The slug of the functionality |  [optional] [readonly] |
|**managedBy** | [**ManagedByEnum**](#ManagedByEnum) | How this functionality is managed (provenance): web, api, terraform, etc. Read-only. |  [optional] |
|**description** | **String** | The description of the functionality |  [optional] |
|**publicDescription** | **String** | The status page description of the functionality |  [optional] |
|**notifyEmails** | **List&lt;String&gt;** | Emails attached to the functionality |  [optional] |
|**color** | **String** | The hex color of the functionality |  [optional] |
|**backstageId** | **String** | The Backstage entity id associated to this functionality. eg: :namespace/:kind/:entity_name |  [optional] |
|**externalId** | **String** | The external id associated to this functionality |  [optional] |
|**pagerdutyId** | **String** | The PagerDuty service id associated to this functionality |  [optional] |
|**opsgenieId** | **String** | The Opsgenie service id associated to this functionality |  [optional] |
|**opsgenieTeamId** | **String** | The Opsgenie team id associated to this functionality |  [optional] |
|**cortexId** | **String** | The Cortex group id associated to this functionality |  [optional] |
|**serviceNowCiSysId** | **String** | The Service Now CI sys id associated to this functionality |  [optional] |
|**position** | **Integer** | Position of the functionality |  [optional] |
|**environmentIds** | **List&lt;String&gt;** | Environments associated with this functionality |  [optional] |
|**serviceIds** | **List&lt;String&gt;** | Services associated with this functionality |  [optional] |
|**ownerGroupIds** | **List&lt;String&gt;** | Owner Teams associated with this functionality |  [optional] |
|**ownerUserIds** | **List&lt;Integer&gt;** | Owner Users associated with this functionality |  [optional] |
|**escalationPolicyId** | **String** | The escalation policy id of the functionality |  [optional] |
|**slackChannels** | [**List&lt;NewEnvironmentDataAttributesSlackChannelsInner&gt;**](NewEnvironmentDataAttributesSlackChannelsInner.md) | Slack Channels associated with this functionality |  [optional] |
|**slackAliases** | [**List&lt;NewEnvironmentDataAttributesSlackAliasesInner&gt;**](NewEnvironmentDataAttributesSlackAliasesInner.md) | Slack Aliases associated with this functionality |  [optional] |
|**properties** | [**List&lt;NewCauseDataAttributesPropertiesInner&gt;**](NewCauseDataAttributesPropertiesInner.md) | Array of property values for this functionality. |  [optional] |
|**createdAt** | **String** | Date of creation |  |
|**updatedAt** | **String** | Date of last update |  |



## Enum: ManagedByEnum

| Name | Value |
|---- | -----|
| WEB | &quot;web&quot; |
| ADMIN_WEB | &quot;admin_web&quot; |
| API | &quot;api&quot; |
| TERRAFORM | &quot;terraform&quot; |
| PULUMI | &quot;pulumi&quot; |
| BACKSTAGE | &quot;backstage&quot; |
| CATALOG_SYNC | &quot;catalog_sync&quot; |




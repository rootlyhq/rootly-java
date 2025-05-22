

# NewSeverityDataAttributes


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**name** | **String** | The name of the severity |  |
|**description** | **String** | The description of the severity |  [optional] |
|**severity** | [**SeverityEnum**](#SeverityEnum) | The severity of the severity |  [optional] |
|**color** | **String** | The hex color of the severity |  [optional] |
|**position** | **Integer** | Position of the severity |  [optional] |
|**notifyEmails** | **List&lt;String&gt;** | Emails to attach to the severity |  [optional] |
|**slackChannels** | [**List&lt;NewEnvironmentDataAttributesSlackChannelsInner&gt;**](NewEnvironmentDataAttributesSlackChannelsInner.md) | Slack Channels associated with this severity |  [optional] |
|**slackAliases** | [**List&lt;NewEnvironmentDataAttributesSlackAliasesInner&gt;**](NewEnvironmentDataAttributesSlackAliasesInner.md) | Slack Aliases associated with this severity |  [optional] |



## Enum: SeverityEnum

| Name | Value |
|---- | -----|
| CRITICAL | &quot;critical&quot; |
| HIGH | &quot;high&quot; |
| MEDIUM | &quot;medium&quot; |
| LOW | &quot;low&quot; |




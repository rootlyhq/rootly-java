

# NewSeverityDataAttributes


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**slug** | **String** | Deprecated. &#x60;slug&#x60; is derived from &#x60;name&#x60;; any submitted value is ignored. This property will be removed from the request schema in a future version. |  [optional] |
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




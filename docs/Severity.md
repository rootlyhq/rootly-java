

# Severity


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**name** | **String** | The name of the severity |  |
|**slug** | **String** | The slug of the severity |  [optional] [readonly] |
|**description** | **String** | The description of the severity |  [optional] |
|**severity** | [**SeverityEnum**](#SeverityEnum) | The severity of the severity |  [optional] |
|**color** | **String** | The hex color of the severity |  [optional] |
|**position** | **Integer** | Position of the severity |  [optional] |
|**notifyEmails** | **List&lt;String&gt;** | Emails to attach to the severity |  [optional] |
|**slackChannels** | [**List&lt;EnvironmentSlackChannelsInner&gt;**](EnvironmentSlackChannelsInner.md) | Slack Channels associated with this severity |  [optional] |
|**slackAliases** | [**List&lt;EnvironmentSlackAliasesInner&gt;**](EnvironmentSlackAliasesInner.md) | Slack Aliases associated with this severity |  [optional] |
|**createdAt** | **String** | Date of creation |  |
|**updatedAt** | **String** | Date of last update |  |



## Enum: SeverityEnum

| Name | Value |
|---- | -----|
| CRITICAL | &quot;critical&quot; |
| HIGH | &quot;high&quot; |
| MEDIUM | &quot;medium&quot; |
| LOW | &quot;low&quot; |




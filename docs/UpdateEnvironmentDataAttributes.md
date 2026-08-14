

# UpdateEnvironmentDataAttributes


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**slug** | **String** | Deprecated. &#x60;slug&#x60; is derived from &#x60;name&#x60;; any submitted value is ignored. This property will be removed from the request schema in a future version. |  [optional] |
|**name** | **String** | The name of the environment |  [optional] |
|**description** | **String** | The description of the environment |  [optional] |
|**publicDescription** | **String** | The status page description of the environment |  [optional] |
|**color** | **String** | The hex color of the environment |  [optional] |
|**position** | **Integer** | Position of the environment |  [optional] |
|**externalId** | **String** | The external id associated to this environment |  [optional] |
|**notifyEmails** | **List&lt;String&gt;** | Emails to attach to the environment |  [optional] |
|**slackChannels** | [**List&lt;NewEnvironmentDataAttributesSlackChannelsInner&gt;**](NewEnvironmentDataAttributesSlackChannelsInner.md) | Slack Channels associated with this environment |  [optional] |
|**slackAliases** | [**List&lt;NewEnvironmentDataAttributesSlackAliasesInner&gt;**](NewEnvironmentDataAttributesSlackAliasesInner.md) | Slack Aliases associated with this environment |  [optional] |
|**properties** | [**List&lt;NewCauseDataAttributesPropertiesInner&gt;**](NewCauseDataAttributesPropertiesInner.md) | Array of property values for this environment. |  [optional] |




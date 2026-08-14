

# UpdateIncidentTypeDataAttributes


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**slug** | **String** | Deprecated. &#x60;slug&#x60; is derived from &#x60;name&#x60;; any submitted value is ignored. This property will be removed from the request schema in a future version. |  [optional] |
|**name** | **String** | The name of the incident type |  [optional] |
|**description** | **String** | The description of the incident type |  [optional] |
|**publicDescription** | **String** | The status page description of the incident type |  [optional] |
|**color** | **String** | The hex color of the incident type |  [optional] |
|**position** | **Integer** | Position of the incident type |  [optional] |
|**notifyEmails** | **List&lt;String&gt;** | Emails to attach to the incident type |  [optional] |
|**slackChannels** | [**List&lt;NewEnvironmentDataAttributesSlackChannelsInner&gt;**](NewEnvironmentDataAttributesSlackChannelsInner.md) | Slack Channels associated with this incident type |  [optional] |
|**slackAliases** | [**List&lt;NewEnvironmentDataAttributesSlackAliasesInner&gt;**](NewEnvironmentDataAttributesSlackAliasesInner.md) | Slack Aliases associated with this incident type |  [optional] |
|**properties** | [**List&lt;NewCauseDataAttributesPropertiesInner&gt;**](NewCauseDataAttributesPropertiesInner.md) | Array of property values for this incident type. |  [optional] |




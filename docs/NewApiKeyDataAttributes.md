

# NewApiKeyDataAttributes


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**name** | **String** | The name of the API key |  |
|**description** | **String** | A description of the API key |  [optional] |
|**kind** | [**KindEnum**](#KindEnum) | The kind of the API key |  |
|**expiresAt** | **OffsetDateTime** | The expiration date of the API key (ISO 8601) |  |
|**groupId** | **String** | The group (team) ID. Required when kind is &#39;team&#39;. |  [optional] |
|**roleId** | **String** | The role ID for organization API keys |  [optional] |
|**onCallRoleId** | **String** | The on-call role ID for organization API keys |  [optional] |



## Enum: KindEnum

| Name | Value |
|---- | -----|
| PERSONAL | &quot;personal&quot; |
| TEAM | &quot;team&quot; |
| ORGANIZATION | &quot;organization&quot; |






# ApiKey


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**name** | **String** | The name of the API key |  |
|**description** | **String** | A description of the API key |  [optional] |
|**kind** | [**KindEnum**](#KindEnum) | The kind of the API key |  |
|**roleId** | **String** | The role ID |  [optional] |
|**onCallRoleId** | **String** | The on-call role ID |  [optional] |
|**createdAt** | **String** | Date of creation |  |
|**updatedAt** | **String** | Date of last update |  |
|**expiresAt** | **String** | Expiration date |  [optional] |
|**lastUsedAt** | **String** | Date of last use |  [optional] |
|**gracePeriodEndsAt** | **String** | Grace period end date |  [optional] |



## Enum: KindEnum

| Name | Value |
|---- | -----|
| PERSONAL | &quot;personal&quot; |
| TEAM | &quot;team&quot; |
| ORGANIZATION | &quot;organization&quot; |




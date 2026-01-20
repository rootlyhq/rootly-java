

# UpdateCommunicationsGroupDataAttributes


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**name** | **String** | The name of the communications group |  [optional] |
|**description** | **String** | The description of the communications group |  [optional] |
|**communicationTypeId** | **String** | The communication type ID |  [optional] |
|**isPrivate** | **Boolean** | Whether the group is private |  [optional] |
|**conditionType** | [**ConditionTypeEnum**](#ConditionTypeEnum) | Condition type |  [optional] |
|**smsChannel** | **Boolean** | SMS channel enabled |  [optional] |
|**emailChannel** | **Boolean** | Email channel enabled |  [optional] |
|**memberIds** | **List&lt;Integer&gt;** | Array of member user IDs |  [optional] |
|**slackChannelIds** | **List&lt;String&gt;** | Array of Slack channel IDs |  [optional] |
|**communicationGroupConditions** | [**List&lt;UpdateCommunicationsGroupDataAttributesCommunicationGroupConditionsInner&gt;**](UpdateCommunicationsGroupDataAttributesCommunicationGroupConditionsInner.md) | Group conditions attributes |  [optional] |
|**communicationExternalGroupMembers** | [**List&lt;UpdateCommunicationsGroupDataAttributesCommunicationExternalGroupMembersInner&gt;**](UpdateCommunicationsGroupDataAttributesCommunicationExternalGroupMembersInner.md) | External group members attributes |  [optional] |



## Enum: ConditionTypeEnum

| Name | Value |
|---- | -----|
| ANY | &quot;any&quot; |
| ALL | &quot;all&quot; |




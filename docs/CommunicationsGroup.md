

# CommunicationsGroup


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**name** | **String** | The name of the communications group |  |
|**slug** | **String** | The slug of the communications group |  |
|**description** | **String** | The description of the communications group |  [optional] |
|**communicationTypeId** | **String** | The communication type ID |  |
|**isPrivate** | **Boolean** | Whether the group is private |  |
|**conditionType** | [**ConditionTypeEnum**](#ConditionTypeEnum) | Condition type |  |
|**smsChannel** | **Boolean** | SMS channel enabled |  |
|**emailChannel** | **Boolean** | Email channel enabled |  |
|**createdAt** | **String** | Date of creation |  |
|**updatedAt** | **String** | Date of last update |  |
|**communicationGroupConditions** | [**List&lt;NewCommunicationsGroupDataAttributesCommunicationGroupConditionsInner&gt;**](NewCommunicationsGroupDataAttributesCommunicationGroupConditionsInner.md) | Group conditions attributes |  [optional] |
|**memberIds** | **List&lt;Integer&gt;** | Array of member user IDs |  [optional] |
|**slackChannelIds** | **List&lt;String&gt;** | Array of Slack channel IDs |  [optional] |
|**communicationExternalGroupMembers** | [**List&lt;CommunicationsGroupCommunicationExternalGroupMembersInner&gt;**](CommunicationsGroupCommunicationExternalGroupMembersInner.md) | External group members |  [optional] |



## Enum: ConditionTypeEnum

| Name | Value |
|---- | -----|
| ANY | &quot;any&quot; |
| ALL | &quot;all&quot; |




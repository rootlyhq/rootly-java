

# CreateMicrosoftTeamsChatTaskParams


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**taskType** | [**TaskTypeEnum**](#TaskTypeEnum) |  |  [optional] |
|**topic** | **String** | Chat topic (only for group chats) |  [optional] |
|**chatType** | [**ChatTypeEnum**](#ChatTypeEnum) | Type of chat to create |  [optional] |
|**members** | [**List&lt;CreateMicrosoftTeamsChatTaskParamsMembersInner&gt;**](CreateMicrosoftTeamsChatTaskParamsMembersInner.md) | Array of members to include in the chat |  |



## Enum: TaskTypeEnum

| Name | Value |
|---- | -----|
| CREATE_MICROSOFT_TEAMS_CHAT | &quot;create_microsoft_teams_chat&quot; |



## Enum: ChatTypeEnum

| Name | Value |
|---- | -----|
| GROUP | &quot;group&quot; |
| ONE_ON_ONE | &quot;oneOnOne&quot; |




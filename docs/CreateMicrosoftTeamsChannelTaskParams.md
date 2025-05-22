

# CreateMicrosoftTeamsChannelTaskParams


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**taskType** | [**TaskTypeEnum**](#TaskTypeEnum) |  |  [optional] |
|**team** | [**AddActionItemTaskParamsPostToSlackChannelsInner**](AddActionItemTaskParamsPostToSlackChannelsInner.md) |  |  [optional] |
|**title** | **String** | Microsoft Team channel title |  |
|**description** | **String** | Microsoft Team channel description |  [optional] |
|**_private** | [**PrivateEnum**](#PrivateEnum) |  |  [optional] |



## Enum: TaskTypeEnum

| Name | Value |
|---- | -----|
| CREATE_MICROSOFT_TEAMS_CHANNEL | &quot;create_microsoft_teams_channel&quot; |



## Enum: PrivateEnum

| Name | Value |
|---- | -----|
| AUTO | &quot;auto&quot; |
| TRUE | &quot;true&quot; |
| FALSE | &quot;false&quot; |




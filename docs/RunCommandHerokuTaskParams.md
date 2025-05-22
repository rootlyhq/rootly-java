

# RunCommandHerokuTaskParams


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**taskType** | [**TaskTypeEnum**](#TaskTypeEnum) |  |  [optional] |
|**command** | **String** |  |  |
|**appName** | **String** |  |  |
|**size** | [**SizeEnum**](#SizeEnum) |  |  |
|**postToIncidentTimeline** | **Boolean** |  |  [optional] |
|**postToSlackChannels** | [**List&lt;AddActionItemTaskParamsPostToSlackChannelsInner&gt;**](AddActionItemTaskParamsPostToSlackChannelsInner.md) |  |  [optional] |



## Enum: TaskTypeEnum

| Name | Value |
|---- | -----|
| RUN_COMMAND_HEROKU | &quot;run_command_heroku&quot; |



## Enum: SizeEnum

| Name | Value |
|---- | -----|
| STANDARD_1_X | &quot;standard-1X&quot; |
| STANDARD_2_X | &quot;standard-2X&quot; |




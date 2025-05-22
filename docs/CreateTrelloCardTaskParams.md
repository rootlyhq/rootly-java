

# CreateTrelloCardTaskParams


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**taskType** | [**TaskTypeEnum**](#TaskTypeEnum) |  |  [optional] |
|**title** | **String** | The card title |  |
|**description** | **String** | The card description |  [optional] |
|**dueDate** | **String** | The due date |  [optional] |
|**board** | [**CreateTrelloCardTaskParamsBoard**](CreateTrelloCardTaskParamsBoard.md) |  |  |
|**_list** | [**CreateTrelloCardTaskParamsList**](CreateTrelloCardTaskParamsList.md) |  |  |
|**labels** | [**List&lt;AddActionItemTaskParamsPostToSlackChannelsInner&gt;**](AddActionItemTaskParamsPostToSlackChannelsInner.md) |  |  [optional] |
|**archivation** | [**CreateTrelloCardTaskParamsArchivation**](CreateTrelloCardTaskParamsArchivation.md) |  |  [optional] |



## Enum: TaskTypeEnum

| Name | Value |
|---- | -----|
| CREATE_TRELLO_CARD | &quot;create_trello_card&quot; |




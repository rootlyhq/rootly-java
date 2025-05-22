

# UpdateTrelloCardTaskParams


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**taskType** | [**TaskTypeEnum**](#TaskTypeEnum) |  |  [optional] |
|**cardId** | **String** | The card id |  |
|**title** | **String** | The card title |  [optional] |
|**description** | **String** | The card description |  [optional] |
|**dueDate** | **String** | The due date |  [optional] |
|**board** | [**CreateTrelloCardTaskParamsBoard**](CreateTrelloCardTaskParamsBoard.md) |  |  [optional] |
|**_list** | [**CreateTrelloCardTaskParamsList**](CreateTrelloCardTaskParamsList.md) |  |  [optional] |
|**labels** | [**List&lt;AddActionItemTaskParamsPostToSlackChannelsInner&gt;**](AddActionItemTaskParamsPostToSlackChannelsInner.md) |  |  [optional] |
|**archivation** | [**CreateTrelloCardTaskParamsArchivation**](CreateTrelloCardTaskParamsArchivation.md) |  |  |



## Enum: TaskTypeEnum

| Name | Value |
|---- | -----|
| UPDATE_TRELLO_CARD | &quot;update_trello_card&quot; |




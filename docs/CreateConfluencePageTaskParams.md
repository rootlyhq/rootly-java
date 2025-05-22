

# CreateConfluencePageTaskParams


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**taskType** | [**TaskTypeEnum**](#TaskTypeEnum) |  |  [optional] |
|**integration** | [**CreateConfluencePageTaskParamsIntegration**](CreateConfluencePageTaskParamsIntegration.md) |  |  [optional] |
|**space** | [**AddActionItemTaskParamsPostToSlackChannelsInner**](AddActionItemTaskParamsPostToSlackChannelsInner.md) |  |  |
|**ancestor** | [**AddActionItemTaskParamsPostToSlackChannelsInner**](AddActionItemTaskParamsPostToSlackChannelsInner.md) |  |  [optional] |
|**template** | [**AddActionItemTaskParamsPostToSlackChannelsInner**](AddActionItemTaskParamsPostToSlackChannelsInner.md) |  |  [optional] |
|**title** | **String** | The page title |  |
|**content** | **String** | The page content |  [optional] |
|**postMortemTemplateId** | **String** | The Retrospective template to use |  [optional] |
|**markPostMortemAsPublished** | **Boolean** |  |  [optional] |



## Enum: TaskTypeEnum

| Name | Value |
|---- | -----|
| CREATE_CONFLUENCE_PAGE | &quot;create_confluence_page&quot; |




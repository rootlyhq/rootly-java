

# CreateSharepointPageTaskParams


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**taskType** | [**TaskTypeEnum**](#TaskTypeEnum) |  |  [optional] |
|**postMortemTemplateId** | **String** | Retrospective template to use when creating page, if desired |  [optional] |
|**markPostMortemAsPublished** | **Boolean** |  |  [optional] |
|**title** | **String** | The page title |  |
|**site** | [**AddActionItemTaskParamsPostToSlackChannelsInner**](AddActionItemTaskParamsPostToSlackChannelsInner.md) |  |  |
|**drive** | [**AddActionItemTaskParamsPostToSlackChannelsInner**](AddActionItemTaskParamsPostToSlackChannelsInner.md) |  |  |
|**parentFolder** | [**AddActionItemTaskParamsPostToSlackChannelsInner**](AddActionItemTaskParamsPostToSlackChannelsInner.md) |  |  [optional] |
|**content** | **String** | The page content |  [optional] |
|**templateId** | **String** | The SharePoint file ID to use as a template |  [optional] |



## Enum: TaskTypeEnum

| Name | Value |
|---- | -----|
| CREATE_SHAREPOINT_PAGE | &quot;create_sharepoint_page&quot; |




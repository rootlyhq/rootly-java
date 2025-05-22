

# CreateGoogleDocsPageTaskParams


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**taskType** | [**TaskTypeEnum**](#TaskTypeEnum) |  |  [optional] |
|**postMortemTemplateId** | **String** | Retrospective template to use when creating page, if desired |  [optional] |
|**markPostMortemAsPublished** | **Boolean** |  |  [optional] |
|**title** | **String** | The page title |  |
|**drive** | [**AddActionItemTaskParamsPostToSlackChannelsInner**](AddActionItemTaskParamsPostToSlackChannelsInner.md) |  |  [optional] |
|**parentFolder** | [**AddActionItemTaskParamsPostToSlackChannelsInner**](AddActionItemTaskParamsPostToSlackChannelsInner.md) |  |  [optional] |
|**content** | **String** | The page content |  [optional] |
|**templateId** | **String** | The Google Doc file ID to use as a template |  [optional] |
|**permissions** | **String** | Page permissions JSON |  [optional] |



## Enum: TaskTypeEnum

| Name | Value |
|---- | -----|
| CREATE_GOOGLE_DOCS_PAGE | &quot;create_google_docs_page&quot; |




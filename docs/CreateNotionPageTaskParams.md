

# CreateNotionPageTaskParams


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**taskType** | [**TaskTypeEnum**](#TaskTypeEnum) |  |  [optional] |
|**title** | **String** | The Notion page title |  |
|**parentPage** | [**CreateNotionPageTaskParamsParentPage**](CreateNotionPageTaskParamsParentPage.md) |  |  |
|**postMortemTemplateId** | **String** | Retrospective template to use when creating page task, if desired |  [optional] |
|**content** | **String** | Custom page content with liquid templating support. When provided, only this content will be rendered (no default sections) |  [optional] |
|**markPostMortemAsPublished** | **Boolean** |  |  [optional] |
|**showTimelineAsTable** | **Boolean** |  |  [optional] |
|**showActionItemsAsTable** | **Boolean** |  |  [optional] |



## Enum: TaskTypeEnum

| Name | Value |
|---- | -----|
| CREATE_NOTION_PAGE | &quot;create_notion_page&quot; |




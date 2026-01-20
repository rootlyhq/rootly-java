

# UpdateNotionPageTaskParams


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**taskType** | [**TaskTypeEnum**](#TaskTypeEnum) |  |  [optional] |
|**fileId** | **String** | The Notion page ID |  |
|**title** | **String** | The Notion page title |  [optional] |
|**postMortemTemplateId** | **String** | Retrospective template to use when creating page task, if desired |  [optional] |
|**content** | **String** | Custom page content with liquid templating support. When provided, only this content will be rendered (no default sections) |  [optional] |
|**showTimelineAsTable** | **Boolean** |  |  [optional] |
|**showActionItemsAsTable** | **Boolean** |  |  [optional] |



## Enum: TaskTypeEnum

| Name | Value |
|---- | -----|
| UPDATE_NOTION_PAGE | &quot;update_notion_page&quot; |




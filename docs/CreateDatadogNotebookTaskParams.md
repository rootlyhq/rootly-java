

# CreateDatadogNotebookTaskParams


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**taskType** | [**TaskTypeEnum**](#TaskTypeEnum) |  |  [optional] |
|**postMortemTemplateId** | **String** | Retrospective template to use when creating notebook, if desired |  [optional] |
|**markPostMortemAsPublished** | **Boolean** |  |  [optional] |
|**template** | [**AddActionItemTaskParamsPostToSlackChannelsInner**](AddActionItemTaskParamsPostToSlackChannelsInner.md) |  |  [optional] |
|**title** | **String** | The notebook title |  |
|**kind** | [**KindEnum**](#KindEnum) | The notebook kind |  |
|**content** | **String** | The notebook content |  [optional] |



## Enum: TaskTypeEnum

| Name | Value |
|---- | -----|
| CREATE_DATADOG_NOTEBOOK | &quot;create_datadog_notebook&quot; |



## Enum: KindEnum

| Name | Value |
|---- | -----|
| POSTMORTEM | &quot;postmortem&quot; |
| RUNBOOK | &quot;runbook&quot; |
| INVESTIGATION | &quot;investigation&quot; |
| DOCUMENTATION | &quot;documentation&quot; |
| REPORT | &quot;report&quot; |




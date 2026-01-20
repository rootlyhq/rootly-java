

# UpdateDatadogNotebookTaskParams


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**taskType** | [**TaskTypeEnum**](#TaskTypeEnum) |  |  [optional] |
|**fileId** | **String** | The Datadog notebook ID |  |
|**title** | **String** | The Datadog notebook title |  [optional] |
|**content** | **String** | The Datadog notebook content |  [optional] |
|**kind** | [**KindEnum**](#KindEnum) | The notebook type |  [optional] |
|**postMortemTemplateId** | **String** | Retrospective template to use when updating notebook, if desired |  [optional] |
|**template** | [**UpdateDatadogNotebookTaskParamsTemplate**](UpdateDatadogNotebookTaskParamsTemplate.md) |  |  [optional] |



## Enum: TaskTypeEnum

| Name | Value |
|---- | -----|
| UPDATE_DATADOG_NOTEBOOK | &quot;update_datadog_notebook&quot; |



## Enum: KindEnum

| Name | Value |
|---- | -----|
| POSTMORTEM | &quot;postmortem&quot; |
| RUNBOOK | &quot;runbook&quot; |
| INVESTIGATION | &quot;investigation&quot; |
| DOCUMENTATION | &quot;documentation&quot; |
| REPORT | &quot;report&quot; |




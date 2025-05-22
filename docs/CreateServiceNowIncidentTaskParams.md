

# CreateServiceNowIncidentTaskParams


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**taskType** | [**TaskTypeEnum**](#TaskTypeEnum) |  |  [optional] |
|**title** | **String** | The incident title |  |
|**description** | **String** | The incident description |  [optional] |
|**priority** | [**CreateJiraIssueTaskParamsPriority**](CreateJiraIssueTaskParamsPriority.md) |  |  [optional] |
|**completion** | [**CreateServiceNowIncidentTaskParamsCompletion**](CreateServiceNowIncidentTaskParamsCompletion.md) |  |  [optional] |
|**customFieldsMapping** | **String** | Custom field mappings. Can contain liquid markup and need to be valid JSON |  [optional] |



## Enum: TaskTypeEnum

| Name | Value |
|---- | -----|
| CREATE_SERVICE_NOW_INCIDENT | &quot;create_service_now_incident&quot; |




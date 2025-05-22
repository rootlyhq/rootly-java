

# UpdateServiceNowIncidentTaskParams


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**taskType** | [**TaskTypeEnum**](#TaskTypeEnum) |  |  [optional] |
|**incidentId** | **String** | The incident id |  |
|**title** | **String** | The incident title |  [optional] |
|**description** | **String** | The incident description |  [optional] |
|**priority** | [**CreateJiraIssueTaskParamsPriority**](CreateJiraIssueTaskParamsPriority.md) |  |  [optional] |
|**completion** | [**CreateServiceNowIncidentTaskParamsCompletion**](CreateServiceNowIncidentTaskParamsCompletion.md) |  |  [optional] |
|**customFieldsMapping** | **String** | Custom field mappings. Can contain liquid markup and need to be valid JSON |  [optional] |



## Enum: TaskTypeEnum

| Name | Value |
|---- | -----|
| UPDATE_SERVICE_NOW_INCIDENT | &quot;update_service_now_incident&quot; |




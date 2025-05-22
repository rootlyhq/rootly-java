

# UpdateZendeskTicketTaskParams


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**taskType** | [**TaskTypeEnum**](#TaskTypeEnum) |  |  [optional] |
|**ticketId** | **String** | The ticket id |  |
|**subject** | **String** | The ticket subject |  [optional] |
|**tags** | **String** | The ticket tags |  [optional] |
|**priority** | [**CreateJiraIssueTaskParamsPriority**](CreateJiraIssueTaskParamsPriority.md) |  |  [optional] |
|**completion** | [**CreateServiceNowIncidentTaskParamsCompletion**](CreateServiceNowIncidentTaskParamsCompletion.md) |  |  [optional] |
|**customFieldsMapping** | **String** | Custom field mappings. Can contain liquid markup and need to be valid JSON |  [optional] |
|**ticketPayload** | **String** | Additional Zendesk ticket attributes. Will be merged into whatever was specified in this tasks current parameters. Can contain liquid markup and need to be valid JSON |  [optional] |



## Enum: TaskTypeEnum

| Name | Value |
|---- | -----|
| UPDATE_ZENDESK_TICKET | &quot;update_zendesk_ticket&quot; |




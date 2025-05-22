

# CreateZendeskTicketTaskParams


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**taskType** | [**TaskTypeEnum**](#TaskTypeEnum) |  |  [optional] |
|**kind** | [**KindEnum**](#KindEnum) |  |  |
|**subject** | **String** | The ticket subject |  |
|**comment** | **String** | The ticket comment |  [optional] |
|**tags** | **String** | The ticket tags |  [optional] |
|**priority** | [**CreateJiraIssueTaskParamsPriority**](CreateJiraIssueTaskParamsPriority.md) |  |  [optional] |
|**completion** | [**CreateServiceNowIncidentTaskParamsCompletion**](CreateServiceNowIncidentTaskParamsCompletion.md) |  |  [optional] |
|**customFieldsMapping** | **String** | Custom field mappings. Can contain liquid markup and need to be valid JSON |  [optional] |
|**ticketPayload** | **String** | Additional Zendesk ticket attributes. Will be merged into whatever was specified in this tasks current parameters. Can contain liquid markup and need to be valid JSON |  [optional] |



## Enum: TaskTypeEnum

| Name | Value |
|---- | -----|
| CREATE_ZENDESK_TICKET | &quot;create_zendesk_ticket&quot; |



## Enum: KindEnum

| Name | Value |
|---- | -----|
| PROBLEM | &quot;problem&quot; |
| INCIDENT | &quot;incident&quot; |
| QUESTION | &quot;question&quot; |
| TASK | &quot;task&quot; |




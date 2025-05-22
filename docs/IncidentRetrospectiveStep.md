

# IncidentRetrospectiveStep


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**retrospectiveStepId** | **String** |  |  |
|**incidentId** | **String** |  |  |
|**title** | **String** | The name of the step |  |
|**description** | **String** | The description of the step |  [optional] |
|**status** | [**StatusEnum**](#StatusEnum) | Status of the incident retrospective step |  [optional] |
|**kind** | **String** | Due date |  [optional] |
|**dueDate** | **String** | Due date |  [optional] |
|**position** | **Integer** | Position of the step |  [optional] |
|**skippable** | **Boolean** | Is the step skippable? |  [optional] |
|**createdAt** | **String** | Date of creation |  |
|**updatedAt** | **String** | Date of last update |  |



## Enum: StatusEnum

| Name | Value |
|---- | -----|
| TODO | &quot;todo&quot; |
| IN_PROGRESS | &quot;in_progress&quot; |
| COMPLETED | &quot;completed&quot; |
| SKIPPED | &quot;skipped&quot; |




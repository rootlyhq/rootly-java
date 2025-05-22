

# UpdateIncidentRetrospectiveStepDataAttributes


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**title** | **String** | The name of the incident retrospective step |  [optional] |
|**description** | **String** | The description of the incident retrospective step |  [optional] |
|**dueDate** | **String** | Due date |  [optional] |
|**position** | **Integer** | Position of the step |  [optional] |
|**skippable** | **Boolean** | Is the step skippable? |  [optional] |
|**status** | [**StatusEnum**](#StatusEnum) | Status of the incident retrospective step |  [optional] |



## Enum: StatusEnum

| Name | Value |
|---- | -----|
| TODO | &quot;todo&quot; |
| IN_PROGRESS | &quot;in_progress&quot; |
| COMPLETED | &quot;completed&quot; |
| SKIPPED | &quot;skipped&quot; |




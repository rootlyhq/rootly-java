

# NewProblemActionItemDataAttributes


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**summary** | **String** | The summary of the action item |  |
|**description** | **String** | The description of the action item |  [optional] |
|**assignedToUserId** | **Integer** | ID of user you wish to assign this action item |  [optional] |
|**priority** | [**PriorityEnum**](#PriorityEnum) | The priority of the action item |  [optional] |
|**status** | [**StatusEnum**](#StatusEnum) | The status of the action item |  [optional] |
|**dueDate** | **String** | The due date of the action item |  [optional] |
|**jiraIssueUrl** | **String** | The Jira issue URL. |  [optional] |



## Enum: PriorityEnum

| Name | Value |
|---- | -----|
| HIGH | &quot;high&quot; |
| MEDIUM | &quot;medium&quot; |
| LOW | &quot;low&quot; |



## Enum: StatusEnum

| Name | Value |
|---- | -----|
| OPEN | &quot;open&quot; |
| IN_PROGRESS | &quot;in_progress&quot; |
| CANCELLED | &quot;cancelled&quot; |
| DONE | &quot;done&quot; |






# IncidentActionItem


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**summary** | **String** | The summary of the action item |  |
|**description** | **String** | The description of incident action item |  [optional] |
|**kind** | [**KindEnum**](#KindEnum) | The kind of the action item |  [optional] |
|**assignedTo** | [**UserFlatResponse**](UserFlatResponse.md) | User assigned to this action item |  [optional] |
|**assignedToGroupIds** | **List&lt;String&gt;** | IDs of groups you wish to assign this action item |  [optional] |
|**priority** | [**PriorityEnum**](#PriorityEnum) | The priority of the action item |  [optional] |
|**status** | [**StatusEnum**](#StatusEnum) | The status of the action item |  [optional] |
|**dueDate** | **String** | The due date of the action item |  [optional] |
|**jiraIssueId** | **String** | The Jira issue ID. |  [optional] |
|**jiraIssueKey** | **String** | The Jira issue key. |  [optional] |
|**jiraIssueUrl** | **String** | The Jira issue URL. |  [optional] |
|**createdAt** | **String** | Date of creation |  |
|**updatedAt** | **String** | Date of last update |  |



## Enum: KindEnum

| Name | Value |
|---- | -----|
| TASK | &quot;task&quot; |
| FOLLOW_UP | &quot;follow_up&quot; |



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




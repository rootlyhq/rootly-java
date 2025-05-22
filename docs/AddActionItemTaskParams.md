

# AddActionItemTaskParams


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**taskType** | [**TaskTypeEnum**](#TaskTypeEnum) |  |  [optional] |
|**attributeToQueryBy** | [**AttributeToQueryByEnum**](#AttributeToQueryByEnum) | Attribute of the Incident to match against |  [optional] |
|**queryValue** | **String** | Value that attribute_to_query_by to uses to match against |  [optional] |
|**incidentRoleId** | **String** | The role id this action item is associated with |  [optional] |
|**assignedToUserId** | **String** | [DEPRECATED] Use assigned_to_user attribute instead. The user id this action item is assigned to |  [optional] |
|**assignedToUser** | [**AddActionItemTaskParamsAssignedToUser**](AddActionItemTaskParamsAssignedToUser.md) |  |  [optional] |
|**priority** | [**PriorityEnum**](#PriorityEnum) | The action item priority |  |
|**kind** | **String** | The action item kind |  [optional] |
|**summary** | **String** | The action item summary |  |
|**description** | **String** | The action item description |  [optional] |
|**status** | [**StatusEnum**](#StatusEnum) | The action item status |  |
|**postToIncidentTimeline** | **Boolean** |  |  [optional] |
|**customFieldsMapping** | **String** | Custom field mappings. Can contain liquid markup and need to be valid JSON |  [optional] |
|**postToSlackChannels** | [**List&lt;AddActionItemTaskParamsPostToSlackChannelsInner&gt;**](AddActionItemTaskParamsPostToSlackChannelsInner.md) |  |  [optional] |



## Enum: TaskTypeEnum

| Name | Value |
|---- | -----|
| ADD_ACTION_ITEM | &quot;add_action_item&quot; |



## Enum: AttributeToQueryByEnum

| Name | Value |
|---- | -----|
| JIRA_ISSUE_ID | &quot;jira_issue_id&quot; |



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






# Sla


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**slug** | **String** | The slug of the SLA |  [optional] |
|**name** | **String** | The name of the SLA |  |
|**description** | **String** | A description of the SLA |  [optional] |
|**position** | **Integer** | Position of the SLA for ordering |  [optional] |
|**entityType** | [**EntityTypeEnum**](#EntityTypeEnum) | The entity type this SLA applies to |  [optional] |
|**conditionMatchType** | [**ConditionMatchTypeEnum**](#ConditionMatchTypeEnum) | Whether all or any conditions must match |  |
|**managerRoleId** | **UUID** | The ID of the manager incident role. Exactly one of &#x60;manager_role_id&#x60; or &#x60;manager_user_id&#x60; must be provided. |  [optional] |
|**managerUserId** | **Integer** | The ID of the manager user. Exactly one of &#x60;manager_role_id&#x60; or &#x60;manager_user_id&#x60; must be provided. |  [optional] |
|**assignmentDeadlineDays** | **Integer** | Number of days for the assignment deadline |  |
|**assignmentDeadlineParentStatus** | **String** | The incident parent status that triggers the assignment deadline |  |
|**assignmentDeadlineSubStatusId** | **UUID** | Sub-status for the assignment deadline. Required when custom lifecycle statuses are enabled on the team. |  [optional] |
|**assignmentSkipWeekends** | **Boolean** | Whether to skip weekends when calculating the assignment deadline |  [optional] |
|**completionDeadlineDays** | **Integer** | Number of days for the completion deadline |  |
|**completionDeadlineParentStatus** | **String** | The incident parent status that triggers the completion deadline |  |
|**completionDeadlineSubStatusId** | **UUID** | Sub-status for the completion deadline. Required when custom lifecycle statuses are enabled on the team. |  [optional] |
|**completionSkipWeekends** | **Boolean** | Whether to skip weekends when calculating the completion deadline |  [optional] |
|**conditions** | [**List&lt;SlaConditionsInner&gt;**](SlaConditionsInner.md) | Conditions that determine which incidents this SLA applies to |  [optional] |
|**notificationConfigurations** | [**List&lt;SlaNotificationConfigurationsInner&gt;**](SlaNotificationConfigurationsInner.md) | Notification timing configurations |  [optional] |
|**createdAt** | **String** | Date of creation |  |
|**updatedAt** | **String** | Date of last update |  |



## Enum: EntityTypeEnum

| Name | Value |
|---- | -----|
| FOLLOW_UP | &quot;follow_up&quot; |



## Enum: ConditionMatchTypeEnum

| Name | Value |
|---- | -----|
| ALL | &quot;ALL&quot; |
| ANY | &quot;ANY&quot; |




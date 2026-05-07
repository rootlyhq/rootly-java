

# UpdateSlaDataAttributes


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**name** | **String** | The name of the SLA |  [optional] |
|**description** | **String** | A description of the SLA |  [optional] |
|**position** | **Integer** | Position of the SLA for ordering |  [optional] |
|**conditionMatchType** | [**ConditionMatchTypeEnum**](#ConditionMatchTypeEnum) | Whether all or any conditions must match |  [optional] |
|**managerRoleId** | **UUID** | The ID of the incident role responsible for this SLA. Exactly one of &#x60;manager_role_id&#x60; or &#x60;manager_user_id&#x60; must be provided. |  [optional] |
|**managerUserId** | **Integer** | The ID of the user responsible for this SLA. Exactly one of &#x60;manager_role_id&#x60; or &#x60;manager_user_id&#x60; must be provided. |  [optional] |
|**assignmentDeadlineDays** | [**AssignmentDeadlineDaysEnum**](#AssignmentDeadlineDaysEnum) | Number of days for the assignment deadline |  [optional] |
|**assignmentDeadlineParentStatus** | [**AssignmentDeadlineParentStatusEnum**](#AssignmentDeadlineParentStatusEnum) | The incident parent status that triggers the assignment deadline |  [optional] |
|**assignmentDeadlineSubStatusId** | **UUID** | Sub-status for the assignment deadline. Required when custom lifecycle statuses are enabled on the team. |  [optional] |
|**assignmentSkipWeekends** | **Boolean** | Whether to skip weekends when calculating the assignment deadline |  [optional] |
|**completionDeadlineDays** | [**CompletionDeadlineDaysEnum**](#CompletionDeadlineDaysEnum) | Number of days for the completion deadline |  [optional] |
|**completionDeadlineParentStatus** | [**CompletionDeadlineParentStatusEnum**](#CompletionDeadlineParentStatusEnum) | The incident parent status that triggers the completion deadline |  [optional] |
|**completionDeadlineSubStatusId** | **UUID** | Sub-status for the completion deadline. Required when custom lifecycle statuses are enabled on the team. |  [optional] |
|**completionSkipWeekends** | **Boolean** | Whether to skip weekends when calculating the completion deadline |  [optional] |
|**conditions** | [**List&lt;NewSlaDataAttributesConditionsInner&gt;**](NewSlaDataAttributesConditionsInner.md) | Conditions that determine which incidents this SLA applies to. Replaces all existing conditions. |  [optional] |
|**notificationConfigurations** | [**List&lt;NewSlaDataAttributesNotificationConfigurationsInner&gt;**](NewSlaDataAttributesNotificationConfigurationsInner.md) | Notification timing configurations. Replaces all existing configurations. |  [optional] |



## Enum: ConditionMatchTypeEnum

| Name | Value |
|---- | -----|
| ALL | &quot;ALL&quot; |
| ANY | &quot;ANY&quot; |



## Enum: AssignmentDeadlineDaysEnum

| Name | Value |
|---- | -----|
| NUMBER_1 | 1 |
| NUMBER_2 | 2 |
| NUMBER_3 | 3 |
| NUMBER_4 | 4 |
| NUMBER_5 | 5 |
| NUMBER_6 | 6 |
| NUMBER_7 | 7 |
| NUMBER_14 | 14 |
| NUMBER_21 | 21 |
| NUMBER_30 | 30 |



## Enum: AssignmentDeadlineParentStatusEnum

| Name | Value |
|---- | -----|
| IN_TRIAGE | &quot;in_triage&quot; |
| STARTED | &quot;started&quot; |
| MITIGATED | &quot;mitigated&quot; |
| RESOLVED | &quot;resolved&quot; |
| CLOSED | &quot;closed&quot; |
| CANCELLED | &quot;cancelled&quot; |



## Enum: CompletionDeadlineDaysEnum

| Name | Value |
|---- | -----|
| NUMBER_1 | 1 |
| NUMBER_2 | 2 |
| NUMBER_3 | 3 |
| NUMBER_4 | 4 |
| NUMBER_5 | 5 |
| NUMBER_6 | 6 |
| NUMBER_7 | 7 |
| NUMBER_14 | 14 |
| NUMBER_21 | 21 |
| NUMBER_30 | 30 |



## Enum: CompletionDeadlineParentStatusEnum

| Name | Value |
|---- | -----|
| IN_TRIAGE | &quot;in_triage&quot; |
| STARTED | &quot;started&quot; |
| MITIGATED | &quot;mitigated&quot; |
| RESOLVED | &quot;resolved&quot; |
| CLOSED | &quot;closed&quot; |
| CANCELLED | &quot;cancelled&quot; |




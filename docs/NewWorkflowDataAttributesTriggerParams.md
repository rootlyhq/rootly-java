

# NewWorkflowDataAttributesTriggerParams


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**triggerType** | [**TriggerTypeEnum**](#TriggerTypeEnum) |  |  |
|**triggers** | [**List&lt;TriggersEnum&gt;**](#List&lt;TriggersEnum&gt;) |  |  [optional] |
|**incidentVisibilities** | **List&lt;Boolean&gt;** |  |  [optional] |
|**incidentKinds** | [**List&lt;IncidentKindsEnum&gt;**](#List&lt;IncidentKindsEnum&gt;) |  |  [optional] |
|**incidentStatuses** | [**List&lt;IncidentStatusesEnum&gt;**](#List&lt;IncidentStatusesEnum&gt;) |  |  [optional] |
|**incidentInactivityDuration** | **String** | ex. 10 min, 1h, 3 days, 2 weeks |  [optional] |
|**incidentCondition** | [**IncidentConditionEnum**](#IncidentConditionEnum) |  |  [optional] |
|**incidentConditionVisibility** | [**IncidentConditionVisibilityEnum**](#IncidentConditionVisibilityEnum) |  |  [optional] |
|**incidentConditionKind** | [**IncidentConditionKindEnum**](#IncidentConditionKindEnum) |  |  [optional] |
|**incidentConditionStatus** | [**IncidentConditionStatusEnum**](#IncidentConditionStatusEnum) |  |  [optional] |
|**incidentConditionSubStatus** | [**IncidentConditionSubStatusEnum**](#IncidentConditionSubStatusEnum) |  |  [optional] |
|**incidentConditionEnvironment** | [**IncidentConditionEnvironmentEnum**](#IncidentConditionEnvironmentEnum) |  |  [optional] |
|**incidentConditionSeverity** | [**IncidentConditionSeverityEnum**](#IncidentConditionSeverityEnum) |  |  [optional] |
|**incidentConditionIncidentType** | [**IncidentConditionIncidentTypeEnum**](#IncidentConditionIncidentTypeEnum) |  |  [optional] |
|**incidentConditionIncidentRoles** | [**IncidentConditionIncidentRolesEnum**](#IncidentConditionIncidentRolesEnum) |  |  [optional] |
|**incidentConditionService** | [**IncidentConditionServiceEnum**](#IncidentConditionServiceEnum) |  |  [optional] |
|**incidentConditionFunctionality** | [**IncidentConditionFunctionalityEnum**](#IncidentConditionFunctionalityEnum) |  |  [optional] |
|**incidentConditionGroup** | [**IncidentConditionGroupEnum**](#IncidentConditionGroupEnum) |  |  [optional] |
|**incidentConditionCause** | [**IncidentConditionCauseEnum**](#IncidentConditionCauseEnum) |  |  [optional] |
|**incidentPostMortemConditionCause** | [**IncidentPostMortemConditionCauseEnum**](#IncidentPostMortemConditionCauseEnum) | [DEPRECATED] Use incident_condition_cause instead |  [optional] |
|**incidentConditionSummary** | [**IncidentConditionSummaryEnum**](#IncidentConditionSummaryEnum) |  |  [optional] |
|**incidentConditionStartedAt** | [**IncidentConditionStartedAtEnum**](#IncidentConditionStartedAtEnum) |  |  [optional] |
|**incidentConditionDetectedAt** | [**IncidentConditionDetectedAtEnum**](#IncidentConditionDetectedAtEnum) |  |  [optional] |
|**incidentConditionAcknowledgedAt** | [**IncidentConditionAcknowledgedAtEnum**](#IncidentConditionAcknowledgedAtEnum) |  |  [optional] |
|**incidentConditionMitigatedAt** | [**IncidentConditionMitigatedAtEnum**](#IncidentConditionMitigatedAtEnum) |  |  [optional] |
|**incidentConditionResolvedAt** | [**IncidentConditionResolvedAtEnum**](#IncidentConditionResolvedAtEnum) |  |  [optional] |
|**incidentConditionalInactivity** | [**IncidentConditionalInactivityEnum**](#IncidentConditionalInactivityEnum) |  |  [optional] |
|**incidentActionItemCondition** | [**IncidentActionItemConditionEnum**](#IncidentActionItemConditionEnum) |  |  [optional] |
|**incidentActionItemConditionKind** | [**IncidentActionItemConditionKindEnum**](#IncidentActionItemConditionKindEnum) |  |  [optional] |
|**incidentActionItemKinds** | [**List&lt;IncidentActionItemKindsEnum&gt;**](#List&lt;IncidentActionItemKindsEnum&gt;) |  |  [optional] |
|**incidentActionItemConditionStatus** | [**IncidentActionItemConditionStatusEnum**](#IncidentActionItemConditionStatusEnum) |  |  [optional] |
|**incidentActionItemStatuses** | [**List&lt;IncidentActionItemStatusesEnum&gt;**](#List&lt;IncidentActionItemStatusesEnum&gt;) |  |  [optional] |
|**incidentActionItemConditionPriority** | [**IncidentActionItemConditionPriorityEnum**](#IncidentActionItemConditionPriorityEnum) |  |  [optional] |
|**incidentActionItemPriorities** | [**List&lt;IncidentActionItemPrioritiesEnum&gt;**](#List&lt;IncidentActionItemPrioritiesEnum&gt;) |  |  [optional] |
|**incidentActionItemConditionGroup** | [**IncidentActionItemConditionGroupEnum**](#IncidentActionItemConditionGroupEnum) |  |  [optional] |
|**incidentActionItemGroupIds** | **List&lt;String&gt;** |  |  [optional] |
|**alertCondition** | [**AlertConditionEnum**](#AlertConditionEnum) |  |  [optional] |
|**alertConditionSource** | [**AlertConditionSourceEnum**](#AlertConditionSourceEnum) |  |  [optional] |
|**alertConditionSourceUseRegexp** | **Boolean** |  |  [optional] |
|**alertSources** | **List&lt;String&gt;** |  |  [optional] |
|**alertConditionLabel** | [**AlertConditionLabelEnum**](#AlertConditionLabelEnum) |  |  [optional] |
|**alertConditionLabelUseRegexp** | **Boolean** |  |  [optional] |
|**alertConditionStatus** | [**AlertConditionStatusEnum**](#AlertConditionStatusEnum) |  |  [optional] |
|**alertConditionStatusUseRegexp** | **Boolean** |  |  [optional] |
|**alertStatuses** | **List&lt;String&gt;** |  |  [optional] |
|**alertLabels** | **List&lt;String&gt;** |  |  [optional] |
|**alertConditionPayload** | [**AlertConditionPayloadEnum**](#AlertConditionPayloadEnum) |  |  [optional] |
|**alertConditionPayloadUseRegexp** | **Boolean** |  |  [optional] |
|**alertPayload** | **List&lt;String&gt;** |  |  [optional] |
|**alertQueryPayload** | **String** | You can use jsonpath syntax. eg: $.incident.teams[*] |  [optional] |
|**alertFieldConditions** | [**List&lt;AlertTriggerParamsAlertFieldConditionsInner&gt;**](AlertTriggerParamsAlertFieldConditionsInner.md) |  |  [optional] |
|**pulseCondition** | [**PulseConditionEnum**](#PulseConditionEnum) |  |  [optional] |
|**pulseConditionSource** | [**PulseConditionSourceEnum**](#PulseConditionSourceEnum) |  |  [optional] |
|**pulseConditionSourceUseRegexp** | **Boolean** |  |  [optional] |
|**pulseSources** | **List&lt;String&gt;** |  |  [optional] |
|**pulseConditionLabel** | [**PulseConditionLabelEnum**](#PulseConditionLabelEnum) |  |  [optional] |
|**pulseConditionLabelUseRegexp** | **Boolean** |  |  [optional] |
|**pulseLabels** | **List&lt;String&gt;** |  |  [optional] |
|**pulseConditionPayload** | [**PulseConditionPayloadEnum**](#PulseConditionPayloadEnum) |  |  [optional] |
|**pulseConditionPayloadUseRegexp** | **Boolean** |  |  [optional] |
|**pulsePayload** | **List&lt;String&gt;** |  |  [optional] |
|**pulseQueryPayload** | **String** | You can use jsonpath syntax. eg: $.incident.teams[*] |  [optional] |



## Enum: TriggerTypeEnum

| Name | Value |
|---- | -----|
| SIMPLE | &quot;simple&quot; |



## Enum: List&lt;TriggersEnum&gt;

| Name | Value |
|---- | -----|
| SLACK_COMMAND | &quot;slack_command&quot; |



## Enum: List&lt;IncidentKindsEnum&gt;

| Name | Value |
|---- | -----|
| TEST | &quot;test&quot; |
| TEST_SUB | &quot;test_sub&quot; |
| EXAMPLE | &quot;example&quot; |
| EXAMPLE_SUB | &quot;example_sub&quot; |
| NORMAL | &quot;normal&quot; |
| NORMAL_SUB | &quot;normal_sub&quot; |
| BACKFILLED | &quot;backfilled&quot; |
| SCHEDULED | &quot;scheduled&quot; |
| SCHEDULED_SUB | &quot;scheduled_sub&quot; |



## Enum: List&lt;IncidentStatusesEnum&gt;

| Name | Value |
|---- | -----|
| IN_TRIAGE | &quot;in_triage&quot; |
| STARTED | &quot;started&quot; |
| DETECTED | &quot;detected&quot; |
| ACKNOWLEDGED | &quot;acknowledged&quot; |
| MITIGATED | &quot;mitigated&quot; |
| RESOLVED | &quot;resolved&quot; |
| CLOSED | &quot;closed&quot; |
| CANCELLED | &quot;cancelled&quot; |
| SCHEDULED | &quot;scheduled&quot; |
| IN_PROGRESS | &quot;in_progress&quot; |
| COMPLETED | &quot;completed&quot; |



## Enum: IncidentConditionEnum

| Name | Value |
|---- | -----|
| ALL | &quot;ALL&quot; |
| ANY | &quot;ANY&quot; |
| NONE | &quot;NONE&quot; |



## Enum: IncidentConditionVisibilityEnum

| Name | Value |
|---- | -----|
| IS | &quot;IS&quot; |
| IS_NOT | &quot;IS NOT&quot; |
| ANY | &quot;ANY&quot; |
| CONTAINS | &quot;CONTAINS&quot; |
| CONTAINS_ALL | &quot;CONTAINS_ALL&quot; |
| CONTAINS_NONE | &quot;CONTAINS_NONE&quot; |
| NONE | &quot;NONE&quot; |
| SET | &quot;SET&quot; |
| UNSET | &quot;UNSET&quot; |



## Enum: IncidentConditionKindEnum

| Name | Value |
|---- | -----|
| IS | &quot;IS&quot; |
| IS_NOT | &quot;IS NOT&quot; |
| ANY | &quot;ANY&quot; |
| CONTAINS | &quot;CONTAINS&quot; |
| CONTAINS_ALL | &quot;CONTAINS_ALL&quot; |
| CONTAINS_NONE | &quot;CONTAINS_NONE&quot; |
| NONE | &quot;NONE&quot; |
| SET | &quot;SET&quot; |
| UNSET | &quot;UNSET&quot; |



## Enum: IncidentConditionStatusEnum

| Name | Value |
|---- | -----|
| IS | &quot;IS&quot; |
| IS_NOT | &quot;IS NOT&quot; |
| ANY | &quot;ANY&quot; |
| CONTAINS | &quot;CONTAINS&quot; |
| CONTAINS_ALL | &quot;CONTAINS_ALL&quot; |
| CONTAINS_NONE | &quot;CONTAINS_NONE&quot; |
| NONE | &quot;NONE&quot; |
| SET | &quot;SET&quot; |
| UNSET | &quot;UNSET&quot; |



## Enum: IncidentConditionSubStatusEnum

| Name | Value |
|---- | -----|
| IS | &quot;IS&quot; |
| IS_NOT | &quot;IS NOT&quot; |
| ANY | &quot;ANY&quot; |
| CONTAINS | &quot;CONTAINS&quot; |
| CONTAINS_ALL | &quot;CONTAINS_ALL&quot; |
| CONTAINS_NONE | &quot;CONTAINS_NONE&quot; |
| NONE | &quot;NONE&quot; |
| SET | &quot;SET&quot; |
| UNSET | &quot;UNSET&quot; |



## Enum: IncidentConditionEnvironmentEnum

| Name | Value |
|---- | -----|
| IS | &quot;IS&quot; |
| IS_NOT | &quot;IS NOT&quot; |
| ANY | &quot;ANY&quot; |
| CONTAINS | &quot;CONTAINS&quot; |
| CONTAINS_ALL | &quot;CONTAINS_ALL&quot; |
| CONTAINS_NONE | &quot;CONTAINS_NONE&quot; |
| NONE | &quot;NONE&quot; |
| SET | &quot;SET&quot; |
| UNSET | &quot;UNSET&quot; |



## Enum: IncidentConditionSeverityEnum

| Name | Value |
|---- | -----|
| IS | &quot;IS&quot; |
| IS_NOT | &quot;IS NOT&quot; |
| ANY | &quot;ANY&quot; |
| CONTAINS | &quot;CONTAINS&quot; |
| CONTAINS_ALL | &quot;CONTAINS_ALL&quot; |
| CONTAINS_NONE | &quot;CONTAINS_NONE&quot; |
| NONE | &quot;NONE&quot; |
| SET | &quot;SET&quot; |
| UNSET | &quot;UNSET&quot; |



## Enum: IncidentConditionIncidentTypeEnum

| Name | Value |
|---- | -----|
| IS | &quot;IS&quot; |
| IS_NOT | &quot;IS NOT&quot; |
| ANY | &quot;ANY&quot; |
| CONTAINS | &quot;CONTAINS&quot; |
| CONTAINS_ALL | &quot;CONTAINS_ALL&quot; |
| CONTAINS_NONE | &quot;CONTAINS_NONE&quot; |
| NONE | &quot;NONE&quot; |
| SET | &quot;SET&quot; |
| UNSET | &quot;UNSET&quot; |



## Enum: IncidentConditionIncidentRolesEnum

| Name | Value |
|---- | -----|
| IS | &quot;IS&quot; |
| IS_NOT | &quot;IS NOT&quot; |
| ANY | &quot;ANY&quot; |
| CONTAINS | &quot;CONTAINS&quot; |
| CONTAINS_ALL | &quot;CONTAINS_ALL&quot; |
| CONTAINS_NONE | &quot;CONTAINS_NONE&quot; |
| NONE | &quot;NONE&quot; |
| SET | &quot;SET&quot; |
| UNSET | &quot;UNSET&quot; |



## Enum: IncidentConditionServiceEnum

| Name | Value |
|---- | -----|
| IS | &quot;IS&quot; |
| IS_NOT | &quot;IS NOT&quot; |
| ANY | &quot;ANY&quot; |
| CONTAINS | &quot;CONTAINS&quot; |
| CONTAINS_ALL | &quot;CONTAINS_ALL&quot; |
| CONTAINS_NONE | &quot;CONTAINS_NONE&quot; |
| NONE | &quot;NONE&quot; |
| SET | &quot;SET&quot; |
| UNSET | &quot;UNSET&quot; |



## Enum: IncidentConditionFunctionalityEnum

| Name | Value |
|---- | -----|
| IS | &quot;IS&quot; |
| IS_NOT | &quot;IS NOT&quot; |
| ANY | &quot;ANY&quot; |
| CONTAINS | &quot;CONTAINS&quot; |
| CONTAINS_ALL | &quot;CONTAINS_ALL&quot; |
| CONTAINS_NONE | &quot;CONTAINS_NONE&quot; |
| NONE | &quot;NONE&quot; |
| SET | &quot;SET&quot; |
| UNSET | &quot;UNSET&quot; |



## Enum: IncidentConditionGroupEnum

| Name | Value |
|---- | -----|
| IS | &quot;IS&quot; |
| IS_NOT | &quot;IS NOT&quot; |
| ANY | &quot;ANY&quot; |
| CONTAINS | &quot;CONTAINS&quot; |
| CONTAINS_ALL | &quot;CONTAINS_ALL&quot; |
| CONTAINS_NONE | &quot;CONTAINS_NONE&quot; |
| NONE | &quot;NONE&quot; |
| SET | &quot;SET&quot; |
| UNSET | &quot;UNSET&quot; |



## Enum: IncidentConditionCauseEnum

| Name | Value |
|---- | -----|
| IS | &quot;IS&quot; |
| IS_NOT | &quot;IS NOT&quot; |
| ANY | &quot;ANY&quot; |
| CONTAINS | &quot;CONTAINS&quot; |
| CONTAINS_ALL | &quot;CONTAINS_ALL&quot; |
| CONTAINS_NONE | &quot;CONTAINS_NONE&quot; |
| NONE | &quot;NONE&quot; |
| SET | &quot;SET&quot; |
| UNSET | &quot;UNSET&quot; |



## Enum: IncidentPostMortemConditionCauseEnum

| Name | Value |
|---- | -----|
| IS | &quot;IS&quot; |
| IS_NOT | &quot;IS NOT&quot; |
| ANY | &quot;ANY&quot; |
| CONTAINS | &quot;CONTAINS&quot; |
| CONTAINS_ALL | &quot;CONTAINS_ALL&quot; |
| CONTAINS_NONE | &quot;CONTAINS_NONE&quot; |
| NONE | &quot;NONE&quot; |
| SET | &quot;SET&quot; |
| UNSET | &quot;UNSET&quot; |



## Enum: IncidentConditionSummaryEnum

| Name | Value |
|---- | -----|
| SET | &quot;SET&quot; |
| UNSET | &quot;UNSET&quot; |



## Enum: IncidentConditionStartedAtEnum

| Name | Value |
|---- | -----|
| SET | &quot;SET&quot; |
| UNSET | &quot;UNSET&quot; |



## Enum: IncidentConditionDetectedAtEnum

| Name | Value |
|---- | -----|
| SET | &quot;SET&quot; |
| UNSET | &quot;UNSET&quot; |



## Enum: IncidentConditionAcknowledgedAtEnum

| Name | Value |
|---- | -----|
| SET | &quot;SET&quot; |
| UNSET | &quot;UNSET&quot; |



## Enum: IncidentConditionMitigatedAtEnum

| Name | Value |
|---- | -----|
| SET | &quot;SET&quot; |
| UNSET | &quot;UNSET&quot; |



## Enum: IncidentConditionResolvedAtEnum

| Name | Value |
|---- | -----|
| SET | &quot;SET&quot; |
| UNSET | &quot;UNSET&quot; |



## Enum: IncidentConditionalInactivityEnum

| Name | Value |
|---- | -----|
| IS | &quot;IS&quot; |



## Enum: IncidentActionItemConditionEnum

| Name | Value |
|---- | -----|
| ALL | &quot;ALL&quot; |
| ANY | &quot;ANY&quot; |
| NONE | &quot;NONE&quot; |



## Enum: IncidentActionItemConditionKindEnum

| Name | Value |
|---- | -----|
| IS | &quot;IS&quot; |
| IS_NOT | &quot;IS NOT&quot; |
| ANY | &quot;ANY&quot; |
| CONTAINS | &quot;CONTAINS&quot; |
| CONTAINS_ALL | &quot;CONTAINS_ALL&quot; |
| CONTAINS_NONE | &quot;CONTAINS_NONE&quot; |
| NONE | &quot;NONE&quot; |
| SET | &quot;SET&quot; |
| UNSET | &quot;UNSET&quot; |



## Enum: List&lt;IncidentActionItemKindsEnum&gt;

| Name | Value |
|---- | -----|
| TASK | &quot;task&quot; |
| FOLLOW_UP | &quot;follow_up&quot; |



## Enum: IncidentActionItemConditionStatusEnum

| Name | Value |
|---- | -----|
| IS | &quot;IS&quot; |
| IS_NOT | &quot;IS NOT&quot; |
| ANY | &quot;ANY&quot; |
| CONTAINS | &quot;CONTAINS&quot; |
| CONTAINS_ALL | &quot;CONTAINS_ALL&quot; |
| CONTAINS_NONE | &quot;CONTAINS_NONE&quot; |
| NONE | &quot;NONE&quot; |
| SET | &quot;SET&quot; |
| UNSET | &quot;UNSET&quot; |



## Enum: List&lt;IncidentActionItemStatusesEnum&gt;

| Name | Value |
|---- | -----|
| OPEN | &quot;open&quot; |
| IN_PROGRESS | &quot;in_progress&quot; |
| CANCELLED | &quot;cancelled&quot; |
| DONE | &quot;done&quot; |



## Enum: IncidentActionItemConditionPriorityEnum

| Name | Value |
|---- | -----|
| IS | &quot;IS&quot; |
| IS_NOT | &quot;IS NOT&quot; |
| ANY | &quot;ANY&quot; |
| CONTAINS | &quot;CONTAINS&quot; |
| CONTAINS_ALL | &quot;CONTAINS_ALL&quot; |
| CONTAINS_NONE | &quot;CONTAINS_NONE&quot; |
| NONE | &quot;NONE&quot; |
| SET | &quot;SET&quot; |
| UNSET | &quot;UNSET&quot; |



## Enum: List&lt;IncidentActionItemPrioritiesEnum&gt;

| Name | Value |
|---- | -----|
| HIGH | &quot;high&quot; |
| MEDIUM | &quot;medium&quot; |
| LOW | &quot;low&quot; |



## Enum: IncidentActionItemConditionGroupEnum

| Name | Value |
|---- | -----|
| IS | &quot;IS&quot; |
| IS_NOT | &quot;IS NOT&quot; |
| ANY | &quot;ANY&quot; |
| CONTAINS | &quot;CONTAINS&quot; |
| CONTAINS_ALL | &quot;CONTAINS_ALL&quot; |
| CONTAINS_NONE | &quot;CONTAINS_NONE&quot; |
| NONE | &quot;NONE&quot; |
| SET | &quot;SET&quot; |
| UNSET | &quot;UNSET&quot; |



## Enum: AlertConditionEnum

| Name | Value |
|---- | -----|
| ALL | &quot;ALL&quot; |
| ANY | &quot;ANY&quot; |
| NONE | &quot;NONE&quot; |



## Enum: AlertConditionSourceEnum

| Name | Value |
|---- | -----|
| IS | &quot;IS&quot; |
| IS_NOT | &quot;IS NOT&quot; |
| ANY | &quot;ANY&quot; |
| CONTAINS | &quot;CONTAINS&quot; |
| CONTAINS_ALL | &quot;CONTAINS_ALL&quot; |
| CONTAINS_NONE | &quot;CONTAINS_NONE&quot; |
| NONE | &quot;NONE&quot; |
| SET | &quot;SET&quot; |
| UNSET | &quot;UNSET&quot; |



## Enum: AlertConditionLabelEnum

| Name | Value |
|---- | -----|
| IS | &quot;IS&quot; |
| IS_NOT | &quot;IS NOT&quot; |
| ANY | &quot;ANY&quot; |
| CONTAINS | &quot;CONTAINS&quot; |
| CONTAINS_ALL | &quot;CONTAINS_ALL&quot; |
| CONTAINS_NONE | &quot;CONTAINS_NONE&quot; |
| NONE | &quot;NONE&quot; |
| SET | &quot;SET&quot; |
| UNSET | &quot;UNSET&quot; |



## Enum: AlertConditionStatusEnum

| Name | Value |
|---- | -----|
| IS | &quot;IS&quot; |
| IS_NOT | &quot;IS NOT&quot; |
| ANY | &quot;ANY&quot; |
| CONTAINS | &quot;CONTAINS&quot; |
| CONTAINS_ALL | &quot;CONTAINS_ALL&quot; |
| CONTAINS_NONE | &quot;CONTAINS_NONE&quot; |
| NONE | &quot;NONE&quot; |
| SET | &quot;SET&quot; |
| UNSET | &quot;UNSET&quot; |



## Enum: AlertConditionPayloadEnum

| Name | Value |
|---- | -----|
| IS | &quot;IS&quot; |
| IS_NOT | &quot;IS NOT&quot; |
| ANY | &quot;ANY&quot; |
| CONTAINS | &quot;CONTAINS&quot; |
| CONTAINS_ALL | &quot;CONTAINS_ALL&quot; |
| CONTAINS_NONE | &quot;CONTAINS_NONE&quot; |
| NONE | &quot;NONE&quot; |
| SET | &quot;SET&quot; |
| UNSET | &quot;UNSET&quot; |



## Enum: PulseConditionEnum

| Name | Value |
|---- | -----|
| ALL | &quot;ALL&quot; |
| ANY | &quot;ANY&quot; |
| NONE | &quot;NONE&quot; |



## Enum: PulseConditionSourceEnum

| Name | Value |
|---- | -----|
| IS | &quot;IS&quot; |
| IS_NOT | &quot;IS NOT&quot; |
| ANY | &quot;ANY&quot; |
| CONTAINS | &quot;CONTAINS&quot; |
| CONTAINS_ALL | &quot;CONTAINS_ALL&quot; |
| CONTAINS_NONE | &quot;CONTAINS_NONE&quot; |
| NONE | &quot;NONE&quot; |
| SET | &quot;SET&quot; |
| UNSET | &quot;UNSET&quot; |



## Enum: PulseConditionLabelEnum

| Name | Value |
|---- | -----|
| IS | &quot;IS&quot; |
| IS_NOT | &quot;IS NOT&quot; |
| ANY | &quot;ANY&quot; |
| CONTAINS | &quot;CONTAINS&quot; |
| CONTAINS_ALL | &quot;CONTAINS_ALL&quot; |
| CONTAINS_NONE | &quot;CONTAINS_NONE&quot; |
| NONE | &quot;NONE&quot; |
| SET | &quot;SET&quot; |
| UNSET | &quot;UNSET&quot; |



## Enum: PulseConditionPayloadEnum

| Name | Value |
|---- | -----|
| IS | &quot;IS&quot; |
| IS_NOT | &quot;IS NOT&quot; |
| ANY | &quot;ANY&quot; |
| CONTAINS | &quot;CONTAINS&quot; |
| CONTAINS_ALL | &quot;CONTAINS_ALL&quot; |
| CONTAINS_NONE | &quot;CONTAINS_NONE&quot; |
| NONE | &quot;NONE&quot; |
| SET | &quot;SET&quot; |
| UNSET | &quot;UNSET&quot; |




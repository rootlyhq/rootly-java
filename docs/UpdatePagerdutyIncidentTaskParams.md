

# UpdatePagerdutyIncidentTaskParams


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**taskType** | [**TaskTypeEnum**](#TaskTypeEnum) |  |  [optional] |
|**pagerdutyIncidentId** | **String** | Pagerduty incident id |  |
|**title** | **String** | Title to update to |  [optional] |
|**status** | [**StatusEnum**](#StatusEnum) |  |  [optional] |
|**resolution** | **String** | A message outlining the incident&#39;s resolution in PagerDuty |  [optional] |
|**escalationLevel** | **Integer** | Escalation level of policy attached to incident |  [optional] |
|**urgency** | [**UrgencyEnum**](#UrgencyEnum) | PagerDuty incident urgency, selecting auto will let Rootly auto map our incident severity |  [optional] |
|**priority** | **String** | PagerDuty incident priority, selecting auto will let Rootly auto map our incident severity |  [optional] |



## Enum: TaskTypeEnum

| Name | Value |
|---- | -----|
| UPDATE_PAGERDUTY_INCIDENT | &quot;update_pagerduty_incident&quot; |



## Enum: StatusEnum

| Name | Value |
|---- | -----|
| RESOLVED | &quot;resolved&quot; |
| ACKNOWLEDGED | &quot;acknowledged&quot; |
| AUTO | &quot;auto&quot; |



## Enum: UrgencyEnum

| Name | Value |
|---- | -----|
| HIGH | &quot;high&quot; |
| LOW | &quot;low&quot; |
| AUTO | &quot;auto&quot; |






# PagePagerdutyOnCallRespondersTaskParams


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**taskType** | [**TaskTypeEnum**](#TaskTypeEnum) |  |  [optional] |
|**service** | [**AddActionItemTaskParamsPostToSlackChannelsInner**](AddActionItemTaskParamsPostToSlackChannelsInner.md) |  |  |
|**escalationPolicies** | [**List&lt;AddActionItemTaskParamsPostToSlackChannelsInner&gt;**](AddActionItemTaskParamsPostToSlackChannelsInner.md) |  |  [optional] |
|**users** | [**List&lt;AddActionItemTaskParamsPostToSlackChannelsInner&gt;**](AddActionItemTaskParamsPostToSlackChannelsInner.md) |  |  [optional] |
|**title** | **String** | Incident title. |  [optional] |
|**message** | **String** |  |  [optional] |
|**urgency** | [**UrgencyEnum**](#UrgencyEnum) |  |  [optional] |
|**priority** | **String** | PagerDuty incident priority, selecting auto will let Rootly auto map our incident severity |  [optional] |
|**createNewIncidentOnConflict** | **Boolean** | Rootly only supports linking to a single PagerDuty incident. If this feature is disabled Rootly will add responders from any additional pages to the existing PagerDuty incident that is linked to the Rootly incident. If enabled, Rootly will create a new PagerDuty incident that is not linked to any Rootly incidents |  [optional] |



## Enum: TaskTypeEnum

| Name | Value |
|---- | -----|
| PAGE_PAGERDUTY_ON_CALL_RESPONDERS | &quot;page_pagerduty_on_call_responders&quot; |



## Enum: UrgencyEnum

| Name | Value |
|---- | -----|
| HIGH | &quot;high&quot; |
| LOW | &quot;low&quot; |
| AUTO | &quot;auto&quot; |




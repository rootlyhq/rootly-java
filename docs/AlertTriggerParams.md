

# AlertTriggerParams


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**triggerType** | [**TriggerTypeEnum**](#TriggerTypeEnum) |  |  |
|**triggers** | [**List&lt;TriggersEnum&gt;**](#List&lt;TriggersEnum&gt;) |  |  [optional] |
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



## Enum: TriggerTypeEnum

| Name | Value |
|---- | -----|
| ALERT | &quot;alert&quot; |



## Enum: List&lt;TriggersEnum&gt;

| Name | Value |
|---- | -----|
| ALERT_CREATED | &quot;alert_created&quot; |
| ALERT_STATUS_UPDATED | &quot;alert_status_updated&quot; |



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




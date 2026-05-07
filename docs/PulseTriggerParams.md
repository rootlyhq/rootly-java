

# PulseTriggerParams


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**triggerType** | [**TriggerTypeEnum**](#TriggerTypeEnum) |  |  |
|**triggers** | [**List&lt;TriggersEnum&gt;**](#List&lt;TriggersEnum&gt;) |  |  [optional] |
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
| PULSE | &quot;pulse&quot; |



## Enum: List&lt;TriggersEnum&gt;

| Name | Value |
|---- | -----|
| PULSE_CREATED | &quot;pulse_created&quot; |



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






# NewAlertGroupDataAttributes


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**name** | **String** | The name of the alert group |  |
|**description** | **String** | The description of the alert urgency |  [optional] |
|**timeWindow** | **Integer** | The length of time an Alert Group should stay open and accept new alerts |  [optional] |
|**targets** | [**List&lt;NewAlertGroupDataAttributesTargetsInner&gt;**](NewAlertGroupDataAttributesTargetsInner.md) |  |  [optional] |
|**attributes** | [**List&lt;NewAlertGroupDataAttributesAttributesInner&gt;**](NewAlertGroupDataAttributesAttributesInner.md) |  |  [optional] |
|**groupByAlertTitle** | [**GroupByAlertTitleEnum**](#GroupByAlertTitleEnum) | Whether the alerts should be grouped by titles. |  [optional] |
|**groupByAlertUrgency** | [**GroupByAlertUrgencyEnum**](#GroupByAlertUrgencyEnum) | Whether the alerts should be grouped by urgencies. |  [optional] |
|**conditionType** | [**ConditionTypeEnum**](#ConditionTypeEnum) | Group alerts when ANY or ALL of the fields are matching. |  [optional] |



## Enum: GroupByAlertTitleEnum

| Name | Value |
|---- | -----|
| NUMBER_1 | 1 |
| NUMBER_0 | 0 |



## Enum: GroupByAlertUrgencyEnum

| Name | Value |
|---- | -----|
| NUMBER_1 | 1 |
| NUMBER_0 | 0 |



## Enum: ConditionTypeEnum

| Name | Value |
|---- | -----|
| ALL | &quot;all&quot; |
| ANY | &quot;any&quot; |




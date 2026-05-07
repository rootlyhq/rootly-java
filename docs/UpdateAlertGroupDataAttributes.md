

# UpdateAlertGroupDataAttributes


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**name** | **String** | The name of the alert group |  [optional] |
|**description** | **String** | The description of the alert group |  [optional] |
|**timeWindow** | **Integer** | The length of time an Alert Group should stay open and accept new alerts |  [optional] |
|**targets** | [**List&lt;NewAlertGroupDataAttributesTargetsInner&gt;**](NewAlertGroupDataAttributesTargetsInner.md) |  |  [optional] |
|**attributes** | [**List&lt;NewAlertGroupDataAttributesAttributesInner&gt;**](NewAlertGroupDataAttributesAttributesInner.md) | This field is deprecated. Please use the &#x60;conditions&#x60; field instead, &#x60;attributes&#x60; will be removed in the future. |  [optional] |
|**groupByAlertTitle** | [**GroupByAlertTitleEnum**](#GroupByAlertTitleEnum) | [DEPRECATED] Whether the alerts should be grouped by titles. This field is deprecated. Please use the &#x60;conditions&#x60; field with advanced alert grouping instead. |  [optional] |
|**groupByAlertUrgency** | [**GroupByAlertUrgencyEnum**](#GroupByAlertUrgencyEnum) | [DEPRECATED] Whether the alerts should be grouped by urgencies. This field is deprecated. Please use the &#x60;conditions&#x60; field with advanced alert grouping instead. |  [optional] |
|**conditionType** | [**ConditionTypeEnum**](#ConditionTypeEnum) | Group alerts when ANY or ALL of the fields are matching. |  [optional] |
|**conditions** | [**List&lt;NewAlertGroupDataAttributesConditionsInner&gt;**](NewAlertGroupDataAttributesConditionsInner.md) |  |  [optional] |



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




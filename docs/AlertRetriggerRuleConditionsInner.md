

# AlertRetriggerRuleConditionsInner


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**id** | **UUID** | Unique ID of the condition |  |
|**kind** | [**KindEnum**](#KindEnum) | The operand the condition matches on. Native operands (urgency, source, service, group) match by record; alert_field/payload match a field value. |  |
|**operator** | [**OperatorEnum**](#OperatorEnum) | How the operand is compared. Native operands support is_one_of/is_not_one_of/is_set/is_not_set; alert_field/payload additionally support the string/regex operators. |  |
|**recordIds** | **List&lt;UUID&gt;** | For urgency/service/group/source conditions: the IDs of the matched records (AlertUrgency, Service, Group, or Alerts::Source). |  [optional] |
|**values** | **List&lt;String&gt;** | For source conditions: non-integration source aliases (e.g. manual, api). For alert_field/payload conditions: the values to compare against. |  [optional] |
|**propertyFieldName** | **String** | For alert_field conditions: the alert field id. For payload conditions: a JSON Path (e.g. $.priority). |  [optional] |



## Enum: KindEnum

| Name | Value |
|---- | -----|
| URGENCY | &quot;urgency&quot; |
| SOURCE | &quot;source&quot; |
| SERVICE | &quot;service&quot; |
| GROUP | &quot;group&quot; |
| ALERT_FIELD | &quot;alert_field&quot; |
| PAYLOAD | &quot;payload&quot; |



## Enum: OperatorEnum

| Name | Value |
|---- | -----|
| IS_ONE_OF | &quot;is_one_of&quot; |
| IS_NOT_ONE_OF | &quot;is_not_one_of&quot; |
| IS_SET | &quot;is_set&quot; |
| IS_NOT_SET | &quot;is_not_set&quot; |
| CONTAINS | &quot;contains&quot; |
| DOES_NOT_CONTAIN | &quot;does_not_contain&quot; |
| STARTS_WITH | &quot;starts_with&quot; |
| ENDS_WITH | &quot;ends_with&quot; |
| MATCHES_REGEX | &quot;matches_regex&quot; |




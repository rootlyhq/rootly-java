

# NewAlertsSourceDataAttributesResolutionRuleAttributes

Provide additional attributes for email alerts source

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**enabled** | **Boolean** | Set this to true to enable the auto resolution rule |  [optional] |
|**conditionType** | [**ConditionTypeEnum**](#ConditionTypeEnum) | The type of condition to evaluate to apply auto resolution rule |  [optional] |
|**identifierJsonPath** | **String** | JSON path expression to extract unique alert identifier used to match triggered alerts with resolving alerts |  [optional] |
|**identifierValueRegex** | **String** | Regex group to further specify the part of the string used as a unique identifier |  [optional] |
|**conditionsAttributes** | [**List&lt;NewAlertsSourceDataAttributesResolutionRuleAttributesConditionsAttributesInner&gt;**](NewAlertsSourceDataAttributesResolutionRuleAttributesConditionsAttributesInner.md) | List of conditions to evaluate for auto resolution |  [optional] |



## Enum: ConditionTypeEnum

| Name | Value |
|---- | -----|
| ALL | &quot;all&quot; |
| ANY | &quot;any&quot; |






# UpdateAlertRoutingRuleDataAttributes


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**name** | **String** | The name of the alert routing rule |  [optional] |
|**enabled** | **Boolean** | Whether the alert routing rule is enabled |  [optional] |
|**alertsSourceId** | **UUID** | The ID of the alerts source |  [optional] |
|**position** | **Integer** | The position of the alert routing rule for ordering evaluation |  [optional] |
|**owningTeamIds** | **List&lt;UUID&gt;** | The IDs of the teams that own the alert routing rule |  [optional] |
|**conditionType** | [**ConditionTypeEnum**](#ConditionTypeEnum) | The type of condition for the alert routing rule |  [optional] |
|**conditions** | [**List&lt;UpdateAlertRoutingRuleDataAttributesConditionsInner&gt;**](UpdateAlertRoutingRuleDataAttributesConditionsInner.md) |  |  [optional] |
|**destination** | [**UpdateAlertRoutingRuleDataAttributesDestination**](UpdateAlertRoutingRuleDataAttributesDestination.md) |  |  [optional] |



## Enum: ConditionTypeEnum

| Name | Value |
|---- | -----|
| ALL | &quot;all&quot; |
| ANY | &quot;any&quot; |




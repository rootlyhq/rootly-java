

# NewAlertRoutingRuleDataAttributes


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**name** | **String** | The name of the alert routing rule |  |
|**enabled** | **Boolean** | Whether the alert routing rule is enabled |  [optional] |
|**owningTeamIds** | **List&lt;UUID&gt;** | The IDs of the teams which own the alert routing rule. If the user doesn&#39;t have Alert Routing Create Permission in On-Call Roles, then this field is required and can contain Team IDs the user is an admin of. |  [optional] |
|**alertsSourceId** | **UUID** | The ID of the alerts source |  |
|**position** | **Integer** | The position of the alert routing rule for ordering evaluation |  [optional] |
|**conditionType** | [**ConditionTypeEnum**](#ConditionTypeEnum) | The type of condition for the alert routing rule |  [optional] |
|**conditions** | [**List&lt;NewAlertRoutingRuleDataAttributesConditionsInner&gt;**](NewAlertRoutingRuleDataAttributesConditionsInner.md) |  |  [optional] |
|**destination** | [**NewAlertRouteDataAttributesRulesInnerDestinationsInner**](NewAlertRouteDataAttributesRulesInnerDestinationsInner.md) |  |  |



## Enum: ConditionTypeEnum

| Name | Value |
|---- | -----|
| ALL | &quot;all&quot; |
| ANY | &quot;any&quot; |






# AlertRoutingRule


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**name** | **String** | The name of the alert routing rule |  |
|**enabled** | **Boolean** | Whether the alert routing rule is enabled |  |
|**alertsSourceId** | **UUID** | The ID of the alerts source |  |
|**position** | **Integer** | The position of the alert routing rule for ordering evaluation |  |
|**conditionType** | [**ConditionTypeEnum**](#ConditionTypeEnum) | The type of condition for the alert routing rule |  |
|**conditions** | [**List&lt;AlertRoutingRuleConditionsInner&gt;**](AlertRoutingRuleConditionsInner.md) | The conditions for the alert routing rule |  [optional] |
|**destination** | [**AlertRoutingRuleDestination**](AlertRoutingRuleDestination.md) |  |  [optional] |
|**conditionGroups** | [**List&lt;AlertRoutingRuleConditionGroupsInner&gt;**](AlertRoutingRuleConditionGroupsInner.md) | The condition groups for the alert routing rule |  [optional] |
|**createdAt** | **String** | Date of creation |  |
|**updatedAt** | **String** | Date of last update |  |



## Enum: ConditionTypeEnum

| Name | Value |
|---- | -----|
| ALL | &quot;all&quot; |
| ANY | &quot;any&quot; |




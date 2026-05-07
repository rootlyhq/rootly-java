

# PatchAlertRouteDataAttributesRulesInner


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**id** | **UUID** | The ID of the alert routing rule. Required for updating or deleting existing rules. |  [optional] |
|**destroy** | **Boolean** | Set to true to delete this rule. When true, only the id field is required. |  [optional] |
|**name** | **String** | The name of the alert routing rule |  [optional] |
|**position** | **Integer** | The position of the alert routing rule for ordering evaluation |  [optional] |
|**fallbackRule** | **Boolean** | Whether this is a fallback rule |  [optional] |
|**destinations** | [**List&lt;PatchAlertRouteDataAttributesRulesInnerDestinationsInner&gt;**](PatchAlertRouteDataAttributesRulesInnerDestinationsInner.md) |  |  [optional] |
|**conditionGroups** | [**List&lt;PatchAlertRouteDataAttributesRulesInnerConditionGroupsInner&gt;**](PatchAlertRouteDataAttributesRulesInnerConditionGroupsInner.md) |  |  [optional] |




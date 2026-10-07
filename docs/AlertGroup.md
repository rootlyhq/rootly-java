

# AlertGroup


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**name** | **String** | The name of the alert group |  |
|**description** | **String** | The description of the alert group |  |
|**slug** | **String** | The slug of the alert group |  [optional] [readonly] |
|**conditionType** | **String** | Grouping condition for the alert group |  |
|**timeWindow** | **Integer** | Time window for the alert grouping |  |
|**groupByAlertTitle** | **Boolean** | [DEPRECATED] Whether the alerts are grouped by title or not. This field is deprecated. Please use the &#x60;conditions&#x60; field with advanced alert grouping instead. |  [optional] |
|**groupByAlertUrgency** | **Boolean** | [DEPRECATED] Whether the alerts are grouped by urgency or not. This field is deprecated. Please use the &#x60;conditions&#x60; field with advanced alert grouping instead. |  [optional] |
|**ownerGroupIds** | **List&lt;UUID&gt;** | Teams that own this alert group. Admins of an owning team can manage it, and an owned alert group can only target destinations that belong to its owning teams. Only available when owning teams for alert groups are enabled for the organization. |  [optional] |
|**targets** | [**List&lt;AlertGroupTargetsInner&gt;**](AlertGroupTargetsInner.md) |  |  [optional] |
|**attributes** | [**List&lt;AlertGroupAttributesInner&gt;**](AlertGroupAttributesInner.md) | This field is deprecated. Please use the &#x60;conditions&#x60; field instead, &#x60;attributes&#x60; will be removed in the future. |  [optional] |
|**conditions** | [**List&lt;AlertGroupConditionsInner&gt;**](AlertGroupConditionsInner.md) | The conditions for the alert group |  [optional] |
|**createdAt** | **String** | Date of creation |  |
|**updatedAt** | **String** | Date of last update |  |
|**deletedAt** | **String** | Date or deletion |  |




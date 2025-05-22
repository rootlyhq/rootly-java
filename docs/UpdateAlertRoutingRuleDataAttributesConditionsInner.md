

# UpdateAlertRoutingRuleDataAttributesConditionsInner


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**id** | **UUID** | The ID of the alert routing rule condition |  [optional] |
|**propertyFieldType** | [**PropertyFieldTypeEnum**](#PropertyFieldTypeEnum) | The type of the property field |  [optional] |
|**propertyFieldName** | **String** | The name of the property field. If the property field type is selected as &#39;attribute&#39;, then the allowed property field names are &#39;summary&#39; (for Title), &#39;description&#39;, &#39;alert_urgency&#39; and &#39;external_url&#39; (for Alert Source URL). If the property field type is selected as &#39;payload&#39;, then the property field name should be supplied in JSON Path syntax. |  [optional] |
|**propertyFieldConditionType** | [**PropertyFieldConditionTypeEnum**](#PropertyFieldConditionTypeEnum) | The condition type of the property field |  [optional] |
|**propertyFieldValue** | **String** | The value of the property field. Can be null if the property field condition type is &#39;is_one_of&#39; or &#39;is_not_one_of&#39; |  [optional] |
|**propertyFieldValues** | **List&lt;String&gt;** | The values of the property field. Used if the property field condition type is &#39;is_one_of&#39; or &#39;is_not_one_of&#39; except for when property field name is &#39;alert_urgency&#39; |  [optional] |



## Enum: PropertyFieldTypeEnum

| Name | Value |
|---- | -----|
| ATTRIBUTE | &quot;attribute&quot; |
| PAYLOAD | &quot;payload&quot; |



## Enum: PropertyFieldConditionTypeEnum

| Name | Value |
|---- | -----|
| IS_ONE_OF | &quot;is_one_of&quot; |
| IS_NOT_ONE_OF | &quot;is_not_one_of&quot; |
| CONTAINS | &quot;contains&quot; |
| DOES_NOT_CONTAIN | &quot;does_not_contain&quot; |
| STARTS_WITH | &quot;starts_with&quot; |
| ENDS_WITH | &quot;ends_with&quot; |
| MATCHES_REGEX | &quot;matches_regex&quot; |
| IS_EMPTY | &quot;is_empty&quot; |




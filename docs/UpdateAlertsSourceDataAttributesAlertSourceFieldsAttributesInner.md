

# UpdateAlertsSourceDataAttributesAlertSourceFieldsAttributesInner


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**alertFieldId** | **String** | The ID of the alert field. Must be visible to the caller; unknown or hidden IDs return 404 |  [optional] |
|**templateBody** | **String** | Liquid expression to extract a specific value from the alert&#39;s payload for evaluation |  [optional] |
|**destroy** | **Boolean** | Set to true to unbind the alert field from the alert source. Built-in fields cannot be unbound (422) |  [optional] |




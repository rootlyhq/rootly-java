

# UpdateCatalogChecklistTemplateDataAttributes


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**slug** | **String** | Deprecated. &#x60;slug&#x60; is derived from &#x60;name&#x60;; any submitted value is ignored. This property will be removed from the request schema in a future version. |  [optional] |
|**name** | **String** | The name of the checklist template |  [optional] |
|**description** | **String** | The description of the checklist template |  [optional] |
|**fields** | [**List&lt;NewCatalogChecklistTemplateDataAttributesFieldsInner&gt;**](NewCatalogChecklistTemplateDataAttributesFieldsInner.md) | Template fields. Position is determined by array order. Replaces all existing fields. |  [optional] |
|**owners** | [**List&lt;NewCatalogChecklistTemplateDataAttributesOwnersInner&gt;**](NewCatalogChecklistTemplateDataAttributesOwnersInner.md) | Template owners. Replaces all existing owners. |  [optional] |




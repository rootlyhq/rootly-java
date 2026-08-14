

# UpdateCatalogEntityDataAttributes


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**slug** | **String** | Deprecated. &#x60;slug&#x60; is derived from &#x60;name&#x60;; any submitted value is ignored. This property will be removed from the request schema in a future version. |  [optional] |
|**name** | **String** |  |  [optional] |
|**description** | **String** |  |  [optional] |
|**publicDescription** | **String** | The status page description of the catalog entity |  [optional] |
|**position** | **Integer** | Default position of the item when displayed in a list. |  [optional] |
|**backstageId** | **String** | The Backstage entity ID this catalog entity is linked to. |  [optional] |
|**externalId** | **String** | An external identifier for this catalog entity. Must be unique within the catalog. |  [optional] |
|**properties** | [**List&lt;NewCatalogEntityDataAttributesPropertiesInner&gt;**](NewCatalogEntityDataAttributesPropertiesInner.md) | Array of property values for this catalog entity |  [optional] |




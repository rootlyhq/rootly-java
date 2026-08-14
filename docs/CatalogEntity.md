

# CatalogEntity


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**name** | **String** |  |  |
|**slug** | **String** | The slug of the catalog entity. Derived from &#x60;name&#x60;. |  [optional] [readonly] |
|**description** | **String** |  |  [optional] |
|**publicDescription** | **String** | The status page description of the catalog entity |  [optional] |
|**position** | **Integer** | Default position of the item when displayed in a list. |  |
|**backstageId** | **String** | The Backstage entity ID this catalog entity is linked to. |  [optional] |
|**externalId** | **String** | An external identifier for this catalog entity. Must be unique within the catalog. |  [optional] |
|**managedBy** | [**ManagedByEnum**](#ManagedByEnum) | Which source manages this resource (read-only). |  [optional] |
|**createdAt** | **String** |  |  |
|**updatedAt** | **String** |  |  |
|**properties** | [**List&lt;NewCatalogEntityDataAttributesPropertiesInner&gt;**](NewCatalogEntityDataAttributesPropertiesInner.md) | Array of property values for this catalog entity |  [optional] |



## Enum: ManagedByEnum

| Name | Value |
|---- | -----|
| WEB | &quot;web&quot; |
| ADMIN_WEB | &quot;admin_web&quot; |
| API | &quot;api&quot; |
| TERRAFORM | &quot;terraform&quot; |
| PULUMI | &quot;pulumi&quot; |
| BACKSTAGE | &quot;backstage&quot; |
| CATALOG_SYNC | &quot;catalog_sync&quot; |




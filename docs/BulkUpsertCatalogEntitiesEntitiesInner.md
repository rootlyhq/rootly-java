

# BulkUpsertCatalogEntitiesEntitiesInner


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**externalId** | **String** | External identifier used as the upsert key. Must be unique within the catalog. |  |
|**name** | **String** | Required for new entities. Optional for updates (managed-fields: omitted attributes are preserved). |  [optional] |
|**description** | **String** |  |  [optional] |
|**publicDescription** | **String** |  |  [optional] |
|**backstageId** | **String** |  |  [optional] |
|**fields** | [**List&lt;BulkUpsertCatalogEntitiesEntitiesInnerFieldsInner&gt;**](BulkUpsertCatalogEntitiesEntitiesInnerFieldsInner.md) | Property values for this entity. Only mentioned fields are written; unmentioned fields are preserved. |  [optional] |




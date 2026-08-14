

# BulkUpsertEnvironmentsEntitiesInner


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**externalId** | **String** | External identifier used as the upsert key. Unique per team. |  |
|**name** | **String** | Required for new records. Optional for updates. |  [optional] |
|**description** | **String** |  |  [optional] |
|**publicDescription** | **String** |  |  [optional] |
|**color** | **String** |  |  [optional] |
|**position** | **Integer** |  |  [optional] |
|**notifyEmails** | **List&lt;String&gt;** |  |  [optional] |
|**fields** | [**List&lt;BulkUpsertCatalogEntitiesEntitiesInnerFieldsInner&gt;**](BulkUpsertCatalogEntitiesEntitiesInnerFieldsInner.md) | Catalog property values (merge semantics: only mentioned fields written). |  [optional] |




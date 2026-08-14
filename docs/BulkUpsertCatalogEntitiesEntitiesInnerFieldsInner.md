

# BulkUpsertCatalogEntitiesEntitiesInnerFieldsInner

Each field entry must include either catalog_field_id or catalog_property_id.

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**catalogFieldId** | **String** | UUID, slug, or external_id of the catalog field (required if catalog_property_id is absent) |  [optional] |
|**catalogPropertyId** | **String** | Alias for catalog_field_id (required if catalog_field_id is absent) |  [optional] |
|**value** | **String** | The value for this field |  |




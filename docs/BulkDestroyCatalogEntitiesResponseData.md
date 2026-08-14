

# BulkDestroyCatalogEntitiesResponseData


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**deletedExternalIds** | **List&lt;String&gt;** | External IDs that were successfully deleted |  [optional] |
|**failedExternalIds** | **List&lt;String&gt;** | External IDs whose deletion the record itself blocked (e.g. minimum-one guard, restrict associations). Records the caller is not authorized to destroy are NOT listed here. |  [optional] |
|**notFoundExternalIds** | **List&lt;String&gt;** | External IDs that were not found or not accessible to the caller (external_ids mode only) |  [optional] |




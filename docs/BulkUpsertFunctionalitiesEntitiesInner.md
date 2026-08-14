

# BulkUpsertFunctionalitiesEntitiesInner


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**externalId** | **String** | External identifier used as the upsert key. Unique per team. |  |
|**name** | **String** | Required for new records. Optional for updates. |  [optional] |
|**description** | **String** |  |  [optional] |
|**publicDescription** | **String** |  |  [optional] |
|**color** | **String** |  |  [optional] |
|**position** | **Integer** |  |  [optional] |
|**showUptime** | **Boolean** |  |  [optional] |
|**showUptimeLastDays** | **Integer** |  |  [optional] |
|**notifyEmails** | **List&lt;String&gt;** |  |  [optional] |
|**pagerdutyId** | **String** |  |  [optional] |
|**opsgenieId** | **String** |  |  [optional] |
|**opsgenieTeamId** | **String** |  |  [optional] |
|**backstageId** | **String** |  |  [optional] |
|**cortexId** | **String** |  |  [optional] |
|**opslevelId** | **String** |  |  [optional] |
|**serviceNowCiSysId** | **String** |  |  [optional] |
|**fields** | [**List&lt;BulkUpsertCatalogEntitiesEntitiesInnerFieldsInner&gt;**](BulkUpsertCatalogEntitiesEntitiesInnerFieldsInner.md) | Catalog property values (merge semantics: only mentioned fields written). |  [optional] |




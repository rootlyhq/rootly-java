

# BulkUpsertServicesEntitiesInner


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
|**githubRepositoryName** | **String** |  |  [optional] |
|**githubRepositoryBranch** | **String** |  |  [optional] |
|**gitlabRepositoryName** | **String** |  |  [optional] |
|**gitlabRepositoryBranch** | **String** |  |  [optional] |
|**kubernetesDeploymentName** | **String** |  |  [optional] |
|**pagerdutyId** | **String** |  |  [optional] |
|**opsgenieId** | **String** |  |  [optional] |
|**opsgenieTeamId** | **String** |  |  [optional] |
|**cortexId** | **String** |  |  [optional] |
|**opslevelId** | **String** |  |  [optional] |
|**backstageId** | **String** |  |  [optional] |
|**serviceNowCiSysId** | **String** |  |  [optional] |
|**notifyEmails** | **List&lt;String&gt;** |  |  [optional] |
|**alertsEmailEnabled** | **Boolean** |  |  [optional] |
|**fields** | [**List&lt;BulkUpsertCatalogEntitiesEntitiesInnerFieldsInner&gt;**](BulkUpsertCatalogEntitiesEntitiesInnerFieldsInner.md) | Catalog property values (merge semantics: only mentioned fields written). |  [optional] |




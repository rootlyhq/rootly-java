

# BulkUpsertTeamsEntitiesInner


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**externalId** | **String** | External identifier used as the upsert key. Unique per team. |  |
|**name** | **String** | Required for new records. Optional for updates. |  [optional] |
|**description** | **String** |  |  [optional] |
|**publicDescription** | **String** |  |  [optional] |
|**scheduleOverridePolicy** | [**ScheduleOverridePolicyEnum**](#ScheduleOverridePolicyEnum) | Who can create and update overrides for schedules owned by this team: &#x60;everyone&#x60; in the organization, only team &#x60;members&#x60;, or only team &#x60;admins&#x60;. Users still need override permission from their on-call role. Only available when the team-level schedule override policy feature is enabled for the organization. Requests that set it while that feature is disabled are rejected. |  [optional] |
|**color** | **String** |  |  [optional] |
|**position** | **Integer** |  |  [optional] |
|**notifyEmails** | **List&lt;String&gt;** |  |  [optional] |
|**pagerdutyId** | **String** |  |  [optional] |
|**pagerdutyServiceId** | **String** |  |  [optional] |
|**opsgenieId** | **String** |  |  [optional] |
|**victorOpsId** | **String** |  |  [optional] |
|**pagertreeId** | **String** |  |  [optional] |
|**backstageId** | **String** |  |  [optional] |
|**cortexId** | **String** |  |  [optional] |
|**opslevelId** | **String** |  |  [optional] |
|**serviceNowCiSysId** | **String** |  |  [optional] |
|**alertsEmailEnabled** | **Boolean** |  |  [optional] |
|**fields** | [**List&lt;BulkUpsertCatalogEntitiesEntitiesInnerFieldsInner&gt;**](BulkUpsertCatalogEntitiesEntitiesInnerFieldsInner.md) | Catalog property values (merge semantics: only mentioned fields written). |  [optional] |



## Enum: ScheduleOverridePolicyEnum

| Name | Value |
|---- | -----|
| EVERYONE | &quot;everyone&quot; |
| MEMBERS | &quot;members&quot; |
| ADMINS | &quot;admins&quot; |




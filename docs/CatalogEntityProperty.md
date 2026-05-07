

# CatalogEntityProperty

**Deprecated:** This endpoint is deprecated, please use `include=fields` on catalog entities or native catalog endpoints (teams, services, functionalities, incident_types, causes, environments) to retrieve field values instead.

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**catalogEntityId** | **String** |  |  |
|**catalogFieldId** | **String** |  |  |
|**key** | [**KeyEnum**](#KeyEnum) |  |  |
|**value** | **String** |  |  |
|**createdAt** | **String** |  |  |
|**updatedAt** | **String** |  |  |



## Enum: KeyEnum

| Name | Value |
|---- | -----|
| TEXT | &quot;text&quot; |
| CATALOG_ENTITY | &quot;catalog_entity&quot; |
| SLACK | &quot;slack&quot; |




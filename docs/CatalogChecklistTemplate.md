

# CatalogChecklistTemplate


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**name** | **String** | The name of the checklist template |  |
|**slug** | **String** | The slug of the checklist template |  [optional] |
|**description** | **String** | The description of the checklist template |  [optional] |
|**catalogType** | [**CatalogTypeEnum**](#CatalogTypeEnum) | The catalog type |  |
|**scopeType** | [**ScopeTypeEnum**](#ScopeTypeEnum) | The scope type |  |
|**scopeId** | **String** | The scope ID |  |
|**createdAt** | **String** | Date of creation |  |
|**updatedAt** | **String** | Date of last update |  |
|**fields** | [**List&lt;CatalogChecklistTemplateFieldsInner&gt;**](CatalogChecklistTemplateFieldsInner.md) | Template fields in position order |  [optional] |
|**owners** | [**List&lt;CatalogChecklistTemplateOwnersInner&gt;**](CatalogChecklistTemplateOwnersInner.md) | Template owners |  [optional] |



## Enum: CatalogTypeEnum

| Name | Value |
|---- | -----|
| SERVICE | &quot;Service&quot; |
| FUNCTIONALITY | &quot;Functionality&quot; |
| ENVIRONMENT | &quot;Environment&quot; |
| GROUP | &quot;Group&quot; |
| CAUSE | &quot;Cause&quot; |
| INCIDENT_TYPE | &quot;IncidentType&quot; |
| CATALOG | &quot;Catalog&quot; |



## Enum: ScopeTypeEnum

| Name | Value |
|---- | -----|
| TEAM | &quot;Team&quot; |
| CATALOG | &quot;Catalog&quot; |




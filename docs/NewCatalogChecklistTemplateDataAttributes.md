

# NewCatalogChecklistTemplateDataAttributes


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**name** | **String** | The name of the checklist template |  |
|**description** | **String** | The description of the checklist template |  [optional] |
|**catalogType** | [**CatalogTypeEnum**](#CatalogTypeEnum) | The catalog type |  |
|**scopeType** | [**ScopeTypeEnum**](#ScopeTypeEnum) | The scope type |  |
|**scopeId** | **String** | The scope ID (team or catalog UUID) |  [optional] |
|**fields** | [**List&lt;NewCatalogChecklistTemplateDataAttributesFieldsInner&gt;**](NewCatalogChecklistTemplateDataAttributesFieldsInner.md) | Template fields. Position is determined by array order. |  [optional] |
|**owners** | [**List&lt;NewCatalogChecklistTemplateDataAttributesOwnersInner&gt;**](NewCatalogChecklistTemplateDataAttributesOwnersInner.md) | Template owners |  [optional] |



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




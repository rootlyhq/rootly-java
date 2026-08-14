

# CatalogProperty


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**catalogId** | **String** |  |  |
|**name** | **String** |  |  |
|**slug** | **String** |  |  [optional] [readonly] |
|**kind** | [**KindEnum**](#KindEnum) |  |  |
|**kindCatalogId** | **String** | Restricts values to items of specified catalog. |  [optional] |
|**multiple** | **Boolean** | Whether the attribute accepts multiple values. |  |
|**position** | **Integer** | Default position of the item when displayed in a list. |  |
|**required** | **Boolean** | Whether the property is required. |  [optional] |
|**catalogType** | [**CatalogTypeEnum**](#CatalogTypeEnum) | The type of catalog the property belongs to. |  [optional] |
|**externalId** | **String** | An external identifier for this catalog property. Must be unique within the scope. |  [optional] |
|**managedBy** | [**ManagedByEnum**](#ManagedByEnum) | Which source manages this resource (read-only). |  [optional] |
|**createdAt** | **String** |  |  |
|**updatedAt** | **String** |  |  |



## Enum: KindEnum

| Name | Value |
|---- | -----|
| TEXT | &quot;text&quot; |
| REFERENCE | &quot;reference&quot; |



## Enum: CatalogTypeEnum

| Name | Value |
|---- | -----|
| CATALOG | &quot;catalog&quot; |
| CAUSE | &quot;cause&quot; |
| ENVIRONMENT | &quot;environment&quot; |
| FUNCTIONALITY | &quot;functionality&quot; |
| INCIDENT_TYPE | &quot;incident_type&quot; |
| SERVICE | &quot;service&quot; |
| TEAM | &quot;team&quot; |



## Enum: ManagedByEnum

| Name | Value |
|---- | -----|
| WEB | &quot;web&quot; |
| ADMIN_WEB | &quot;admin_web&quot; |
| API | &quot;api&quot; |
| TERRAFORM | &quot;terraform&quot; |
| PULUMI | &quot;pulumi&quot; |
| BACKSTAGE | &quot;backstage&quot; |
| CATALOG_SYNC | &quot;catalog_sync&quot; |




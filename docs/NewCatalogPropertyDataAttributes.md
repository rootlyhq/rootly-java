

# NewCatalogPropertyDataAttributes


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**name** | **String** |  |  |
|**kind** | [**KindEnum**](#KindEnum) |  |  |
|**kindCatalogId** | **String** | Restricts values to items of specified catalog. |  [optional] |
|**multiple** | **Boolean** | Whether the attribute accepts multiple values. |  [optional] |
|**position** | **Integer** | Default position of the item when displayed in a list. |  [optional] |
|**required** | **Boolean** | Whether the property is required. |  [optional] |
|**catalogType** | [**CatalogTypeEnum**](#CatalogTypeEnum) | The type of catalog the property belongs to. |  [optional] |



## Enum: KindEnum

| Name | Value |
|---- | -----|
| TEXT | &quot;text&quot; |
| REFERENCE | &quot;reference&quot; |
| BOOLEAN | &quot;boolean&quot; |
| REFERENCE2 | &quot;reference&quot; |
| SERVICE | &quot;service&quot; |
| FUNCTIONALITY | &quot;functionality&quot; |
| ENVIRONMENT | &quot;environment&quot; |
| GROUP | &quot;group&quot; |
| CAUSE | &quot;cause&quot; |
| INCIDENT_TYPE | &quot;incident_type&quot; |
| USER | &quot;user&quot; |



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




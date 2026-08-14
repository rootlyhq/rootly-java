

# Catalog


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**name** | **String** |  |  |
|**slug** | **String** | The slug of the catalog. Derived from &#x60;name&#x60;. |  [optional] [readonly] |
|**description** | **String** |  |  [optional] |
|**icon** | [**IconEnum**](#IconEnum) |  |  |
|**position** | **Integer** | Default position of the catalog when displayed in a list. |  |
|**externalId** | **String** | An external identifier for this catalog. Must be unique within the team. |  [optional] |
|**managedBy** | [**ManagedByEnum**](#ManagedByEnum) | Which source manages this resource (read-only). |  [optional] |
|**createdAt** | **String** |  |  |
|**updatedAt** | **String** |  |  |



## Enum: IconEnum

| Name | Value |
|---- | -----|
| GLOBE_ALT | &quot;globe-alt&quot; |
| SERVER_STACK | &quot;server-stack&quot; |
| USERS | &quot;users&quot; |
| USER_GROUP | &quot;user-group&quot; |
| CHART_BAR | &quot;chart-bar&quot; |
| SHAPES | &quot;shapes&quot; |
| LIGHT_BULB | &quot;light-bulb&quot; |
| CURSOR_ARROW_RIPPLE | &quot;cursor-arrow-ripple&quot; |



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




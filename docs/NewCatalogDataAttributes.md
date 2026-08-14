

# NewCatalogDataAttributes


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**slug** | **String** | Deprecated. &#x60;slug&#x60; is derived from &#x60;name&#x60;; any submitted value is ignored. This property will be removed from the request schema in a future version. |  [optional] |
|**name** | **String** |  |  |
|**description** | **String** |  |  [optional] |
|**icon** | [**IconEnum**](#IconEnum) |  |  [optional] |
|**position** | **Integer** | Default position of the catalog when displayed in a list. |  [optional] |
|**externalId** | **String** | An external identifier for this catalog. Must be unique within the team. |  [optional] |



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




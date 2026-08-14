

# NewSubStatusDataAttributes


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**slug** | **String** | Deprecated. &#x60;slug&#x60; is derived from &#x60;name&#x60;; any submitted value is ignored. This property will be removed from the request schema in a future version. |  [optional] |
|**name** | **String** |  |  |
|**description** | **String** |  |  [optional] |
|**parentStatus** | [**ParentStatusEnum**](#ParentStatusEnum) |  |  |
|**position** | **Integer** |  |  [optional] |



## Enum: ParentStatusEnum

| Name | Value |
|---- | -----|
| STARTED | &quot;started&quot; |
| RETROSPECTIVE | &quot;retrospective&quot; |






# NewIncidentPermissionSetDataAttributes


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**slug** | **String** | Deprecated. &#x60;slug&#x60; is derived from &#x60;name&#x60;; any submitted value is ignored. This property will be removed from the request schema in a future version. |  [optional] |
|**name** | **String** | The incident permission set name. |  |
|**description** | **String** | The incident permission set description. |  [optional] |
|**privateIncidentPermissions** | [**List&lt;PrivateIncidentPermissionsEnum&gt;**](#List&lt;PrivateIncidentPermissionsEnum&gt;) |  |  [optional] |
|**publicIncidentPermissions** | [**List&lt;PublicIncidentPermissionsEnum&gt;**](#List&lt;PublicIncidentPermissionsEnum&gt;) |  |  [optional] |



## Enum: List&lt;PrivateIncidentPermissionsEnum&gt;

| Name | Value |
|---- | -----|
| CREATE | &quot;create&quot; |
| READ | &quot;read&quot; |
| UPDATE | &quot;update&quot; |
| DELETE | &quot;delete&quot; |



## Enum: List&lt;PublicIncidentPermissionsEnum&gt;

| Name | Value |
|---- | -----|
| CREATE | &quot;create&quot; |
| READ | &quot;read&quot; |
| UPDATE | &quot;update&quot; |
| DELETE | &quot;delete&quot; |




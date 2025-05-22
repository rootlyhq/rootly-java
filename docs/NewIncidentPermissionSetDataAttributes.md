

# NewIncidentPermissionSetDataAttributes


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**name** | **String** | The incident permission set name. |  |
|**slug** | **String** | The incident permission set slug. |  [optional] |
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




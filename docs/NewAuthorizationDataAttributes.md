

# NewAuthorizationDataAttributes


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**authorizableId** | **String** | The id of the resource being accessed. |  |
|**authorizableType** | [**AuthorizableTypeEnum**](#AuthorizableTypeEnum) | The type of resource being accessed. |  |
|**granteeId** | **String** | The resource id granted access. |  |
|**granteeType** | [**GranteeTypeEnum**](#GranteeTypeEnum) | The type of resource granted access. |  |
|**permissions** | [**List&lt;PermissionsEnum&gt;**](#List&lt;PermissionsEnum&gt;) |  |  |



## Enum: AuthorizableTypeEnum

| Name | Value |
|---- | -----|
| DASHBOARD | &quot;Dashboard&quot; |



## Enum: GranteeTypeEnum

| Name | Value |
|---- | -----|
| USER | &quot;User&quot; |
| TEAM | &quot;Team&quot; |



## Enum: List&lt;PermissionsEnum&gt;

| Name | Value |
|---- | -----|
| READ | &quot;read&quot; |
| UPDATE | &quot;update&quot; |
| AUTHORIZE | &quot;authorize&quot; |
| DESTROY | &quot;destroy&quot; |




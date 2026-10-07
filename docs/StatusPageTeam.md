

# StatusPageTeam


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**statusPageId** | **String** | ID of the status page the team is assigned to |  |
|**groupId** | **UUID** | ID of the team granted access to the status page |  |
|**permissionLevel** | [**PermissionLevelEnum**](#PermissionLevelEnum) | Access level granted to members of the team |  |
|**createdAt** | **OffsetDateTime** | Date of creation |  |
|**updatedAt** | **OffsetDateTime** | Date of last update |  |



## Enum: PermissionLevelEnum

| Name | Value |
|---- | -----|
| EDIT_AND_PUBLISH | &quot;edit_and_publish&quot; |
| PUBLISH_ONLY | &quot;publish_only&quot; |




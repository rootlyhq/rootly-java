

# NewStatusPageTeamDataAttributes


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**groupId** | **UUID** | ID of the team granted access to the status page. Teams are listed by GET /v1/teams. A status page accepts at most 50 teams |  |
|**permissionLevel** | [**PermissionLevelEnum**](#PermissionLevelEnum) | publish_only lets team members post status page updates and announcements. edit_and_publish also lets them edit the page, its components, templates, and subscribers. Defaults to edit_and_publish |  [optional] |



## Enum: PermissionLevelEnum

| Name | Value |
|---- | -----|
| EDIT_AND_PUBLISH | &quot;edit_and_publish&quot; |
| PUBLISH_ONLY | &quot;publish_only&quot; |




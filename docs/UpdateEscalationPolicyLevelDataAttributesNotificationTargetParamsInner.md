

# UpdateEscalationPolicyLevelDataAttributesNotificationTargetParamsInner


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**id** | **String** | The ID of notification target |  |
|**type** | [**TypeEnum**](#TypeEnum) | The type of the notification target |  |
|**teamMembers** | [**TeamMembersEnum**](#TeamMembersEnum) | For targets with type&#x3D;team, controls whether to notify admins, all team members, or escalate to team EP. |  [optional] |



## Enum: TypeEnum

| Name | Value |
|---- | -----|
| TEAM | &quot;team&quot; |
| USER | &quot;user&quot; |
| SCHEDULE | &quot;schedule&quot; |
| SLACK_CHANNEL | &quot;slack_channel&quot; |
| SERVICE | &quot;service&quot; |



## Enum: TeamMembersEnum

| Name | Value |
|---- | -----|
| ALL | &quot;all&quot; |
| ADMINS | &quot;admins&quot; |
| ESCALATE | &quot;escalate&quot; |




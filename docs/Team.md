

# Team


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**name** | **String** | The name of the team |  |
|**slug** | **String** |  |  [optional] [readonly] |
|**managedBy** | [**ManagedByEnum**](#ManagedByEnum) | How this team is managed (provenance): web, api, terraform, etc. Read-only. |  [optional] |
|**description** | **String** | The description of the team |  [optional] |
|**publicDescription** | **String** | The status page description of the team |  [optional] |
|**notifyEmails** | **List&lt;String&gt;** | Emails to attach to the team |  [optional] |
|**color** | **String** | The hex color of the team |  [optional] |
|**position** | **Integer** | Position of the team |  [optional] |
|**backstageId** | **String** | The Backstage entity id associated to this team. eg: :namespace/:kind/:entity_name |  [optional] |
|**externalId** | **String** | The external id associated to this team |  [optional] |
|**pagerdutyId** | **String** | The PagerDuty group id associated to this team |  [optional] |
|**pagerdutyServiceId** | **String** | The PagerDuty service id associated to this team |  [optional] |
|**opsgenieId** | **String** | The Opsgenie group id associated to this team |  [optional] |
|**victorOpsId** | **String** | The VictorOps group id associated to this team |  [optional] |
|**pagertreeId** | **String** | The PagerTree group id associated to this team |  [optional] |
|**cortexId** | **String** | The Cortex group id associated to this team |  [optional] |
|**serviceNowCiSysId** | **String** | The Service Now CI sys id associated to this team |  [optional] |
|**scimGroupId** | **String** | The SCIM group id linked to this team |  [optional] |
|**userIds** | **List&lt;Integer&gt;** | The user ids of the members of this team. |  [optional] |
|**adminIds** | **List&lt;Integer&gt;** | The user ids of the admins of this team. These users must also be present in user_ids attribute. |  [optional] |
|**alertsEmailEnabled** | **Boolean** | Enable alerts through email |  [optional] |
|**alertsEmailAddress** | **String** | Email generated to send alerts to |  [optional] |
|**alertUrgencyId** | **String** | The alert urgency id of the team |  [optional] |
|**slackChannels** | [**List&lt;EnvironmentSlackChannelsInner&gt;**](EnvironmentSlackChannelsInner.md) | Slack Channels associated with this team |  [optional] |
|**slackAliases** | [**List&lt;EnvironmentSlackAliasesInner&gt;**](EnvironmentSlackAliasesInner.md) | Slack Aliases associated with this team |  [optional] |
|**alertBroadcastEnabled** | **Boolean** | Enable alerts to be broadcasted to a specific channel |  [optional] |
|**alertBroadcastChannel** | [**ServiceAlertBroadcastChannel**](ServiceAlertBroadcastChannel.md) |  |  [optional] |
|**incidentBroadcastEnabled** | **Boolean** | Enable incidents to be broadcasted to a specific channel |  [optional] |
|**incidentBroadcastChannel** | [**ServiceIncidentBroadcastChannel**](ServiceIncidentBroadcastChannel.md) |  |  [optional] |
|**autoAddMembersWhenAttached** | **Boolean** | Auto add members to incident channel when team is attached |  [optional] |
|**autoAddMembersScope** | [**AutoAddMembersScopeEnum**](#AutoAddMembersScopeEnum) | Visibility-scoped auto-add behavior. Only present when the &#x60;enable_scoped_incident_channel_auto_add&#x60; feature flag is on for the organization. When set, it overrides &#x60;auto_add_members_when_attached&#x60;. |  [optional] |
|**scheduleOverridePolicy** | [**ScheduleOverridePolicyEnum**](#ScheduleOverridePolicyEnum) | Who can create and update overrides for schedules owned by this team: &#x60;everyone&#x60; in the organization, only team &#x60;members&#x60;, or only team &#x60;admins&#x60;. Users still need override permission from their on-call role. Only available when the team-level schedule override policy feature is enabled for the organization. Requests that set it while that feature is disabled are rejected. |  [optional] |
|**properties** | [**List&lt;NewCauseDataAttributesPropertiesInner&gt;**](NewCauseDataAttributesPropertiesInner.md) | Array of property values for this team. |  [optional] |
|**createdAt** | **String** | Date of creation |  |
|**updatedAt** | **String** | Date of last update |  |



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



## Enum: AutoAddMembersScopeEnum

| Name | Value |
|---- | -----|
| OFF | &quot;off&quot; |
| PUBLIC_ONLY | &quot;public_only&quot; |
| PUBLIC_AND_TEST | &quot;public_and_test&quot; |
| ALL | &quot;all&quot; |



## Enum: ScheduleOverridePolicyEnum

| Name | Value |
|---- | -----|
| EVERYONE | &quot;everyone&quot; |
| MEMBERS | &quot;members&quot; |
| ADMINS | &quot;admins&quot; |




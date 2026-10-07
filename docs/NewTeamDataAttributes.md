

# NewTeamDataAttributes


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**slug** | **String** | Deprecated. &#x60;slug&#x60; is derived from &#x60;name&#x60;; any submitted value is ignored. This property will be removed from the request schema in a future version. |  [optional] |
|**name** | **String** | The name of the team |  |
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
|**opsgenieTeamId** | **String** | The Opsgenie team id associated to this team |  [optional] |
|**victorOpsId** | **String** | The VictorOps group id associated to this team |  [optional] |
|**pagertreeId** | **String** | The PagerTree group id associated to this team |  [optional] |
|**cortexId** | **String** | The Cortex group id associated to this team |  [optional] |
|**serviceNowCiSysId** | **String** | The Service Now CI sys id associated to this team |  [optional] |
|**scimGroupId** | **String** | The SCIM group id linked to this team. Membership syncs from the SCIM group while the team keeps its own name. |  [optional] |
|**scimGroupExternalId** | **String** | Link by the SCIM group&#39;s externalId from your identity provider instead of scim_group_id. Write-only. Rejected when it names a different SCIM group than scim_group_id. |  [optional] |
|**userIds** | **List&lt;Integer&gt;** | The user ids of the members of this team. |  [optional] |
|**adminIds** | **List&lt;Integer&gt;** | The user ids of the admins of this team. These users must also be present in user_ids attribute. |  [optional] |
|**alertsEmailEnabled** | **Boolean** | Enable alerts through email |  [optional] |
|**alertUrgencyId** | **String** | The alert urgency id of the team |  [optional] |
|**slackChannels** | [**List&lt;NewEnvironmentDataAttributesSlackChannelsInner&gt;**](NewEnvironmentDataAttributesSlackChannelsInner.md) | Slack Channels associated with this team |  [optional] |
|**slackAliases** | [**List&lt;NewEnvironmentDataAttributesSlackAliasesInner&gt;**](NewEnvironmentDataAttributesSlackAliasesInner.md) | Slack Aliases associated with this team |  [optional] |
|**alertBroadcastEnabled** | **Boolean** | Enable alerts to be broadcasted to a specific channel |  [optional] |
|**alertBroadcastChannel** | [**NewServiceDataAttributesAlertBroadcastChannel**](NewServiceDataAttributesAlertBroadcastChannel.md) |  |  [optional] |
|**incidentBroadcastEnabled** | **Boolean** | Enable incidents to be broadcasted to a specific channel |  [optional] |
|**incidentBroadcastChannel** | [**NewServiceDataAttributesIncidentBroadcastChannel**](NewServiceDataAttributesIncidentBroadcastChannel.md) |  |  [optional] |
|**autoAddMembersWhenAttached** | **Boolean** | Auto add members to incident channel when team is attached |  [optional] |
|**autoAddMembersScope** | [**AutoAddMembersScopeEnum**](#AutoAddMembersScopeEnum) | Visibility-scoped auto-add behavior. Only present when the &#x60;enable_scoped_incident_channel_auto_add&#x60; feature flag is on for the organization. When set, it overrides &#x60;auto_add_members_when_attached&#x60;. |  [optional] |
|**scheduleOverridePolicy** | [**ScheduleOverridePolicyEnum**](#ScheduleOverridePolicyEnum) | Who can create and update overrides for schedules owned by this team: &#x60;everyone&#x60; in the organization, only team &#x60;members&#x60;, or only team &#x60;admins&#x60;. Users still need override permission from their on-call role. Only available when the team-level schedule override policy feature is enabled for the organization. Requests that set it while that feature is disabled are rejected. |  [optional] |
|**properties** | [**List&lt;NewCauseDataAttributesPropertiesInner&gt;**](NewCauseDataAttributesPropertiesInner.md) | Array of property values for this team. |  [optional] |



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






# UpdateOnCallRoleDataAttributes


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**name** | **String** | The role name. |  [optional] |
|**slug** | **String** | The role slug. |  [optional] |
|**systemRole** | [**List&lt;SystemRoleEnum&gt;**](#List&lt;SystemRoleEnum&gt;) | The kind of role (user and custom type roles are only editable) |  [optional] |
|**alertSourcesPermissions** | [**List&lt;AlertSourcesPermissionsEnum&gt;**](#List&lt;AlertSourcesPermissionsEnum&gt;) |  |  [optional] |
|**alertUrgencyPermissions** | [**List&lt;AlertUrgencyPermissionsEnum&gt;**](#List&lt;AlertUrgencyPermissionsEnum&gt;) |  |  [optional] |
|**alertsPermissions** | [**List&lt;AlertsPermissionsEnum&gt;**](#List&lt;AlertsPermissionsEnum&gt;) |  |  [optional] |
|**apiKeysPermissions** | [**List&lt;ApiKeysPermissionsEnum&gt;**](#List&lt;ApiKeysPermissionsEnum&gt;) |  |  [optional] |
|**auditsPermissions** | [**List&lt;AuditsPermissionsEnum&gt;**](#List&lt;AuditsPermissionsEnum&gt;) |  |  [optional] |
|**contactsPermissions** | [**List&lt;ContactsPermissionsEnum&gt;**](#List&lt;ContactsPermissionsEnum&gt;) |  |  [optional] |
|**escalationPoliciesPermissions** | [**List&lt;EscalationPoliciesPermissionsEnum&gt;**](#List&lt;EscalationPoliciesPermissionsEnum&gt;) |  |  [optional] |
|**groupsPermissions** | [**List&lt;GroupsPermissionsEnum&gt;**](#List&lt;GroupsPermissionsEnum&gt;) |  |  [optional] |
|**heartbeatsPermissions** | [**List&lt;HeartbeatsPermissionsEnum&gt;**](#List&lt;HeartbeatsPermissionsEnum&gt;) |  |  [optional] |
|**integrationsPermissions** | [**List&lt;IntegrationsPermissionsEnum&gt;**](#List&lt;IntegrationsPermissionsEnum&gt;) |  |  [optional] |
|**invitationsPermissions** | [**List&lt;InvitationsPermissionsEnum&gt;**](#List&lt;InvitationsPermissionsEnum&gt;) |  |  [optional] |
|**liveCallRoutingPermissions** | [**List&lt;LiveCallRoutingPermissionsEnum&gt;**](#List&lt;LiveCallRoutingPermissionsEnum&gt;) |  |  [optional] |
|**scheduleOverridePermissions** | [**List&lt;ScheduleOverridePermissionsEnum&gt;**](#List&lt;ScheduleOverridePermissionsEnum&gt;) |  |  [optional] |
|**schedulesPermissions** | [**List&lt;SchedulesPermissionsEnum&gt;**](#List&lt;SchedulesPermissionsEnum&gt;) |  |  [optional] |
|**servicesPermissions** | [**List&lt;ServicesPermissionsEnum&gt;**](#List&lt;ServicesPermissionsEnum&gt;) |  |  [optional] |
|**webhooksPermissions** | [**List&lt;WebhooksPermissionsEnum&gt;**](#List&lt;WebhooksPermissionsEnum&gt;) |  |  [optional] |
|**workflowsPermissions** | [**List&lt;WorkflowsPermissionsEnum&gt;**](#List&lt;WorkflowsPermissionsEnum&gt;) |  |  [optional] |



## Enum: List&lt;SystemRoleEnum&gt;

| Name | Value |
|---- | -----|
| ADMIN | &quot;admin&quot; |
| USER | &quot;user&quot; |
| CUSTOM | &quot;custom&quot; |
| NO_ACCESS | &quot;no_access&quot; |



## Enum: List&lt;AlertSourcesPermissionsEnum&gt;

| Name | Value |
|---- | -----|
| CREATE | &quot;create&quot; |
| UPDATE | &quot;update&quot; |
| DELETE | &quot;delete&quot; |



## Enum: List&lt;AlertUrgencyPermissionsEnum&gt;

| Name | Value |
|---- | -----|
| CREATE | &quot;create&quot; |
| READ | &quot;read&quot; |
| UPDATE | &quot;update&quot; |
| DELETE | &quot;delete&quot; |



## Enum: List&lt;AlertsPermissionsEnum&gt;

| Name | Value |
|---- | -----|
| CREATE | &quot;create&quot; |
| UPDATE | &quot;update&quot; |
| READ | &quot;read&quot; |



## Enum: List&lt;ApiKeysPermissionsEnum&gt;

| Name | Value |
|---- | -----|
| CREATE | &quot;create&quot; |
| READ | &quot;read&quot; |
| UPDATE | &quot;update&quot; |
| DELETE | &quot;delete&quot; |



## Enum: List&lt;AuditsPermissionsEnum&gt;

| Name | Value |
|---- | -----|
| CREATE | &quot;create&quot; |
| READ | &quot;read&quot; |
| UPDATE | &quot;update&quot; |
| DELETE | &quot;delete&quot; |



## Enum: List&lt;ContactsPermissionsEnum&gt;

| Name | Value |
|---- | -----|
| READ | &quot;read&quot; |



## Enum: List&lt;EscalationPoliciesPermissionsEnum&gt;

| Name | Value |
|---- | -----|
| CREATE | &quot;create&quot; |
| READ | &quot;read&quot; |
| UPDATE | &quot;update&quot; |
| DELETE | &quot;delete&quot; |



## Enum: List&lt;GroupsPermissionsEnum&gt;

| Name | Value |
|---- | -----|
| CREATE | &quot;create&quot; |
| READ | &quot;read&quot; |
| UPDATE | &quot;update&quot; |
| DELETE | &quot;delete&quot; |



## Enum: List&lt;HeartbeatsPermissionsEnum&gt;

| Name | Value |
|---- | -----|
| CREATE | &quot;create&quot; |
| READ | &quot;read&quot; |
| UPDATE | &quot;update&quot; |
| DELETE | &quot;delete&quot; |



## Enum: List&lt;IntegrationsPermissionsEnum&gt;

| Name | Value |
|---- | -----|
| CREATE | &quot;create&quot; |
| READ | &quot;read&quot; |
| UPDATE | &quot;update&quot; |
| DELETE | &quot;delete&quot; |



## Enum: List&lt;InvitationsPermissionsEnum&gt;

| Name | Value |
|---- | -----|
| CREATE | &quot;create&quot; |
| READ | &quot;read&quot; |
| UPDATE | &quot;update&quot; |
| DELETE | &quot;delete&quot; |



## Enum: List&lt;LiveCallRoutingPermissionsEnum&gt;

| Name | Value |
|---- | -----|
| CREATE | &quot;create&quot; |
| READ | &quot;read&quot; |
| UPDATE | &quot;update&quot; |
| DELETE | &quot;delete&quot; |



## Enum: List&lt;ScheduleOverridePermissionsEnum&gt;

| Name | Value |
|---- | -----|
| CREATE | &quot;create&quot; |
| UPDATE | &quot;update&quot; |



## Enum: List&lt;SchedulesPermissionsEnum&gt;

| Name | Value |
|---- | -----|
| CREATE | &quot;create&quot; |
| READ | &quot;read&quot; |
| UPDATE | &quot;update&quot; |
| DELETE | &quot;delete&quot; |



## Enum: List&lt;ServicesPermissionsEnum&gt;

| Name | Value |
|---- | -----|
| CREATE | &quot;create&quot; |
| READ | &quot;read&quot; |
| UPDATE | &quot;update&quot; |
| DELETE | &quot;delete&quot; |



## Enum: List&lt;WebhooksPermissionsEnum&gt;

| Name | Value |
|---- | -----|
| CREATE | &quot;create&quot; |
| READ | &quot;read&quot; |
| UPDATE | &quot;update&quot; |
| DELETE | &quot;delete&quot; |



## Enum: List&lt;WorkflowsPermissionsEnum&gt;

| Name | Value |
|---- | -----|
| CREATE | &quot;create&quot; |
| READ | &quot;read&quot; |
| UPDATE | &quot;update&quot; |
| DELETE | &quot;delete&quot; |




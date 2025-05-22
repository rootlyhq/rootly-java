

# Role


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**name** | **String** | The role name. |  |
|**slug** | **String** | The role slug. |  |
|**incidentPermissionSetId** | **String** | Associated incident permissions set. |  [optional] |
|**isDeletable** | **Boolean** | Whether the role can be deleted. |  [optional] |
|**isEditable** | **Boolean** | Whether the role can be edited. |  [optional] |
|**alertsPermissions** | [**List&lt;AlertsPermissionsEnum&gt;**](#List&lt;AlertsPermissionsEnum&gt;) |  |  [optional] |
|**apiKeysPermissions** | [**List&lt;ApiKeysPermissionsEnum&gt;**](#List&lt;ApiKeysPermissionsEnum&gt;) |  |  [optional] |
|**auditsPermissions** | [**List&lt;AuditsPermissionsEnum&gt;**](#List&lt;AuditsPermissionsEnum&gt;) |  |  [optional] |
|**billingPermissions** | [**List&lt;BillingPermissionsEnum&gt;**](#List&lt;BillingPermissionsEnum&gt;) |  |  [optional] |
|**environmentsPermissions** | [**List&lt;EnvironmentsPermissionsEnum&gt;**](#List&lt;EnvironmentsPermissionsEnum&gt;) |  |  [optional] |
|**formFieldsPermissions** | [**List&lt;FormFieldsPermissionsEnum&gt;**](#List&lt;FormFieldsPermissionsEnum&gt;) |  |  [optional] |
|**functionalitiesPermissions** | [**List&lt;FunctionalitiesPermissionsEnum&gt;**](#List&lt;FunctionalitiesPermissionsEnum&gt;) |  |  [optional] |
|**groupsPermissions** | [**List&lt;GroupsPermissionsEnum&gt;**](#List&lt;GroupsPermissionsEnum&gt;) |  |  [optional] |
|**incidentCausesPermissions** | [**List&lt;IncidentCausesPermissionsEnum&gt;**](#List&lt;IncidentCausesPermissionsEnum&gt;) |  |  [optional] |
|**incidentFeedbacksPermissions** | [**List&lt;IncidentFeedbacksPermissionsEnum&gt;**](#List&lt;IncidentFeedbacksPermissionsEnum&gt;) |  |  [optional] |
|**incidentRolesPermissions** | [**List&lt;IncidentRolesPermissionsEnum&gt;**](#List&lt;IncidentRolesPermissionsEnum&gt;) |  |  [optional] |
|**incidentTypesPermissions** | [**List&lt;IncidentTypesPermissionsEnum&gt;**](#List&lt;IncidentTypesPermissionsEnum&gt;) |  |  [optional] |
|**incidentsPermissions** | [**List&lt;IncidentsPermissionsEnum&gt;**](#List&lt;IncidentsPermissionsEnum&gt;) |  |  [optional] |
|**integrationsPermissions** | [**List&lt;IntegrationsPermissionsEnum&gt;**](#List&lt;IntegrationsPermissionsEnum&gt;) |  |  [optional] |
|**invitationsPermissions** | [**List&lt;InvitationsPermissionsEnum&gt;**](#List&lt;InvitationsPermissionsEnum&gt;) |  |  [optional] |
|**playbooksPermissions** | [**List&lt;PlaybooksPermissionsEnum&gt;**](#List&lt;PlaybooksPermissionsEnum&gt;) |  |  [optional] |
|**privateIncidentsPermissions** | [**List&lt;PrivateIncidentsPermissionsEnum&gt;**](#List&lt;PrivateIncidentsPermissionsEnum&gt;) |  |  [optional] |
|**pulsesPermissions** | [**List&lt;PulsesPermissionsEnum&gt;**](#List&lt;PulsesPermissionsEnum&gt;) |  |  [optional] |
|**retrospectivePermissions** | [**List&lt;RetrospectivePermissionsEnum&gt;**](#List&lt;RetrospectivePermissionsEnum&gt;) |  |  [optional] |
|**rolesPermissions** | [**List&lt;RolesPermissionsEnum&gt;**](#List&lt;RolesPermissionsEnum&gt;) |  |  [optional] |
|**secretsPermissions** | [**List&lt;SecretsPermissionsEnum&gt;**](#List&lt;SecretsPermissionsEnum&gt;) |  |  [optional] |
|**servicesPermissions** | [**List&lt;ServicesPermissionsEnum&gt;**](#List&lt;ServicesPermissionsEnum&gt;) |  |  [optional] |
|**severitiesPermissions** | [**List&lt;SeveritiesPermissionsEnum&gt;**](#List&lt;SeveritiesPermissionsEnum&gt;) |  |  [optional] |
|**statusPagesPermissions** | [**List&lt;StatusPagesPermissionsEnum&gt;**](#List&lt;StatusPagesPermissionsEnum&gt;) |  |  [optional] |
|**webhooksPermissions** | [**List&lt;WebhooksPermissionsEnum&gt;**](#List&lt;WebhooksPermissionsEnum&gt;) |  |  [optional] |
|**workflowsPermissions** | [**List&lt;WorkflowsPermissionsEnum&gt;**](#List&lt;WorkflowsPermissionsEnum&gt;) |  |  [optional] |
|**createdAt** | **String** |  |  |
|**updatedAt** | **String** |  |  |



## Enum: List&lt;AlertsPermissionsEnum&gt;

| Name | Value |
|---- | -----|
| CREATE | &quot;create&quot; |
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



## Enum: List&lt;BillingPermissionsEnum&gt;

| Name | Value |
|---- | -----|
| CREATE | &quot;create&quot; |
| READ | &quot;read&quot; |
| UPDATE | &quot;update&quot; |
| DELETE | &quot;delete&quot; |



## Enum: List&lt;EnvironmentsPermissionsEnum&gt;

| Name | Value |
|---- | -----|
| CREATE | &quot;create&quot; |
| READ | &quot;read&quot; |
| UPDATE | &quot;update&quot; |
| DELETE | &quot;delete&quot; |



## Enum: List&lt;FormFieldsPermissionsEnum&gt;

| Name | Value |
|---- | -----|
| CREATE | &quot;create&quot; |
| READ | &quot;read&quot; |
| UPDATE | &quot;update&quot; |
| DELETE | &quot;delete&quot; |



## Enum: List&lt;FunctionalitiesPermissionsEnum&gt;

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



## Enum: List&lt;IncidentCausesPermissionsEnum&gt;

| Name | Value |
|---- | -----|
| CREATE | &quot;create&quot; |
| READ | &quot;read&quot; |
| UPDATE | &quot;update&quot; |
| DELETE | &quot;delete&quot; |



## Enum: List&lt;IncidentFeedbacksPermissionsEnum&gt;

| Name | Value |
|---- | -----|
| CREATE | &quot;create&quot; |
| READ | &quot;read&quot; |
| UPDATE | &quot;update&quot; |
| DELETE | &quot;delete&quot; |



## Enum: List&lt;IncidentRolesPermissionsEnum&gt;

| Name | Value |
|---- | -----|
| CREATE | &quot;create&quot; |
| READ | &quot;read&quot; |
| UPDATE | &quot;update&quot; |
| DELETE | &quot;delete&quot; |



## Enum: List&lt;IncidentTypesPermissionsEnum&gt;

| Name | Value |
|---- | -----|
| CREATE | &quot;create&quot; |
| READ | &quot;read&quot; |
| UPDATE | &quot;update&quot; |
| DELETE | &quot;delete&quot; |



## Enum: List&lt;IncidentsPermissionsEnum&gt;

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



## Enum: List&lt;PlaybooksPermissionsEnum&gt;

| Name | Value |
|---- | -----|
| CREATE | &quot;create&quot; |
| READ | &quot;read&quot; |
| UPDATE | &quot;update&quot; |
| DELETE | &quot;delete&quot; |



## Enum: List&lt;PrivateIncidentsPermissionsEnum&gt;

| Name | Value |
|---- | -----|
| CREATE | &quot;create&quot; |
| READ | &quot;read&quot; |
| UPDATE | &quot;update&quot; |
| DELETE | &quot;delete&quot; |



## Enum: List&lt;PulsesPermissionsEnum&gt;

| Name | Value |
|---- | -----|
| CREATE | &quot;create&quot; |
| UPDATE | &quot;update&quot; |
| READ | &quot;read&quot; |



## Enum: List&lt;RetrospectivePermissionsEnum&gt;

| Name | Value |
|---- | -----|
| CREATE | &quot;create&quot; |
| READ | &quot;read&quot; |
| UPDATE | &quot;update&quot; |
| DELETE | &quot;delete&quot; |



## Enum: List&lt;RolesPermissionsEnum&gt;

| Name | Value |
|---- | -----|
| CREATE | &quot;create&quot; |
| READ | &quot;read&quot; |
| UPDATE | &quot;update&quot; |
| DELETE | &quot;delete&quot; |



## Enum: List&lt;SecretsPermissionsEnum&gt;

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



## Enum: List&lt;SeveritiesPermissionsEnum&gt;

| Name | Value |
|---- | -----|
| CREATE | &quot;create&quot; |
| READ | &quot;read&quot; |
| UPDATE | &quot;update&quot; |
| DELETE | &quot;delete&quot; |



## Enum: List&lt;StatusPagesPermissionsEnum&gt;

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






# NewIncidentPermissionSetBooleanDataAttributes


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**incidentPermissionSetId** | **String** |  |  |
|**kind** | [**KindEnum**](#KindEnum) |  |  |
|**_private** | **Boolean** |  |  [optional] |
|**enabled** | **Boolean** |  |  [optional] |
|**severityParams** | [**NewIncidentPermissionSetBooleanDataAttributesSeverityParams**](NewIncidentPermissionSetBooleanDataAttributesSeverityParams.md) |  |  [optional] |



## Enum: KindEnum

| Name | Value |
|---- | -----|
| PUBLISH_TO_STATUS_PAGE | &quot;publish_to_status_page&quot; |
| ASSIGN_INCIDENT_ROLES | &quot;assign_incident_roles&quot; |
| INVITE_SUBSCRIBERS | &quot;invite_subscribers&quot; |
| UPDATE_SUMMARY | &quot;update_summary&quot; |
| UPDATE_TIMELINE | &quot;update_timeline&quot; |
| TRIGGER_WORKFLOWS | &quot;trigger_workflows&quot; |
| CREATE_COMMUNICATIONS | &quot;create_communications&quot; |
| READ_COMMUNICATIONS | &quot;read_communications&quot; |
| UPDATE_COMMUNICATIONS | &quot;update_communications&quot; |
| DELETE_COMMUNICATIONS | &quot;delete_communications&quot; |
| SEND_COMMUNICATIONS | &quot;send_communications&quot; |
| MODIFY_CUSTOM_FIELDS | &quot;modify_custom_fields&quot; |




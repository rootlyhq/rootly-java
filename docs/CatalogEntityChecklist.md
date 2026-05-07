

# CatalogEntityChecklist


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**catalogChecklistTemplateId** | **String** | The ID of the checklist template |  |
|**auditableType** | [**AuditableTypeEnum**](#AuditableTypeEnum) | The type of the auditable entity |  |
|**auditableId** | **String** | The ID of the auditable entity |  |
|**status** | [**StatusEnum**](#StatusEnum) | The status of the checklist |  |
|**startedAt** | **String** | When the checklist was started |  [optional] |
|**completedAt** | **String** | When the checklist was completed |  [optional] |
|**completedByUserId** | **String** | The ID of the user who completed the checklist |  [optional] |
|**createdAt** | **String** | Date of creation |  |
|**updatedAt** | **String** | Date of last update |  |
|**checklistFields** | [**List&lt;CatalogEntityChecklistChecklistFieldsInner&gt;**](CatalogEntityChecklistChecklistFieldsInner.md) | Checklist fields |  [optional] |
|**checklistOwners** | [**List&lt;CatalogEntityChecklistChecklistOwnersInner&gt;**](CatalogEntityChecklistChecklistOwnersInner.md) | Checklist owners |  [optional] |



## Enum: AuditableTypeEnum

| Name | Value |
|---- | -----|
| SERVICE | &quot;Service&quot; |
| FUNCTIONALITY | &quot;Functionality&quot; |
| ENVIRONMENT | &quot;Environment&quot; |
| GROUP | &quot;Group&quot; |
| CAUSE | &quot;Cause&quot; |
| INCIDENT_TYPE | &quot;IncidentType&quot; |
| CATALOG_ENTITY | &quot;CatalogEntity&quot; |



## Enum: StatusEnum

| Name | Value |
|---- | -----|
| TRIGGERED | &quot;triggered&quot; |
| IN_PROGRESS | &quot;in_progress&quot; |
| COMPLETED | &quot;completed&quot; |
| CANCELLED | &quot;cancelled&quot; |




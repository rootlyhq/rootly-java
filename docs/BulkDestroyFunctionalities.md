

# BulkDestroyFunctionalities

Two mutually exclusive modes. Pass exactly one of: external_ids (delete specific records) or managed_by (prune all managed records not in keep set).

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**externalIds** | **List&lt;String&gt;** | Array of external_ids to delete. Max 100 per request. |  |
|**managedBy** | [**ManagedByEnum**](#ManagedByEnum) | Delete all records with this managed_by value (web/admin_web not allowed). |  |
|**keepExternalIds** | **List&lt;String&gt;** | Records with these external_ids are preserved. |  [optional] |



## Enum: ManagedByEnum

| Name | Value |
|---- | -----|
| API | &quot;api&quot; |
| TERRAFORM | &quot;terraform&quot; |
| PULUMI | &quot;pulumi&quot; |
| BACKSTAGE | &quot;backstage&quot; |
| CATALOG_SYNC | &quot;catalog_sync&quot; |




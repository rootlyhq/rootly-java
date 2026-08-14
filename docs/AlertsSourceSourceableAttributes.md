

# AlertsSourceSourceableAttributes

Provide additional attributes for the underlying source. `auto_resolve`, `resolve_state` and `field_mappings_attributes` apply to generic_webhook sources; `accept_threaded_emails` applies to email sources.

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**id** | **UUID** | Unique ID of the underlying source. Read-only; it is resolved from the alert source itself on update. |  [optional] |
|**autoResolve** | **Boolean** | Set this to true to auto-resolve alerts based on field_mappings_attributes conditions |  [optional] |
|**resolveState** | **String** | This value is matched with the value extracted from alerts payload using JSON path in field_mappings_attributes |  [optional] |
|**acceptThreadedEmails** | **Boolean** | Set this to false to reject threaded emails |  [optional] |
|**fieldMappingsAttributes** | [**List&lt;NewAlertsSourceDataAttributesSourceableAttributesFieldMappingsAttributesInner&gt;**](NewAlertsSourceDataAttributesSourceableAttributesFieldMappingsAttributesInner.md) | Specify rules to auto resolve alerts |  [optional] |




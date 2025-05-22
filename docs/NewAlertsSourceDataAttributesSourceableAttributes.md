

# NewAlertsSourceDataAttributesSourceableAttributes

Provide additional attributes for generic_webhook alerts source

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**autoResolve** | **Boolean** | Set this to true to auto-resolve alerts based on field_mappings_attributes conditions |  [optional] |
|**resolveState** | **String** | This value is matched with the value extracted from alerts payload using JSON path in field_mappings_attributes |  [optional] |
|**acceptThreadedEmails** | **Boolean** | Set this to false to reject threaded emails |  [optional] |
|**fieldMappingsAttributes** | [**List&lt;NewAlertsSourceDataAttributesSourceableAttributesFieldMappingsAttributesInner&gt;**](NewAlertsSourceDataAttributesSourceableAttributesFieldMappingsAttributesInner.md) | Specify rules to auto resolve alerts |  [optional] |




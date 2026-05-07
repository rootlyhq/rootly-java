

# NewAlertsSourceDataAttributesSourceableAttributesFieldMappingsAttributesInner


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**field** | [**FieldEnum**](#FieldEnum) | Select the field on which the condition to be evaluated |  [optional] |
|**jsonPath** | **String** | JSON path expression to extract a specific value from the alert&#39;s payload for evaluation |  [optional] |



## Enum: FieldEnum

| Name | Value |
|---- | -----|
| EXTERNAL_ID | &quot;external_id&quot; |
| STATE | &quot;state&quot; |
| ALERT_TITLE | &quot;alert_title&quot; |
| ALERT_DESCRIPTION | &quot;alert_description&quot; |
| ALERT_EXTERNAL_URL | &quot;alert_external_url&quot; |
| NOTIFICATION_TARGET_TYPE | &quot;notification_target_type&quot; |
| NOTIFICATION_TARGET_ID | &quot;notification_target_id&quot; |




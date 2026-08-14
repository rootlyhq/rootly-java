

# UpdateAlertDataAttributes


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**noise** | [**NoiseEnum**](#NoiseEnum) | Whether the alert is marked as noise |  [optional] |
|**source** | **String** | Deprecated. Accepted for backwards compatibility; new clients should omit. Defaults to &#x60;api&#x60;. |  [optional] |
|**summary** | **String** | The summary of the alert |  [optional] |
|**description** | **String** | The description of the alert |  [optional] |
|**serviceIds** | **List&lt;String&gt;** | The Service IDs to attach to the alert |  [optional] |
|**groupIds** | **List&lt;String&gt;** | The Group IDs to attach to the alert |  [optional] |
|**functionalityIds** | **List&lt;String&gt;** | The Functionality IDs to attach to the alert |  [optional] |
|**environmentIds** | **List&lt;String&gt;** | The Environment IDs to attach to the alert |  [optional] |
|**startedAt** | **OffsetDateTime** | Alert start datetime |  [optional] |
|**endedAt** | **OffsetDateTime** | Alert end datetime |  [optional] |
|**externalId** | **String** | External ID |  [optional] |
|**externalUrl** | **String** | External Url |  [optional] |
|**alertUrgencyId** | **String** | The ID of the alert urgency |  [optional] |
|**labels** | [**List&lt;NewAlertDataAttributesLabelsInner&gt;**](NewAlertDataAttributesLabelsInner.md) |  |  [optional] |
|**data** | **Object** | Additional data |  [optional] |
|**deduplicationKey** | **String** | Alerts sharing the same deduplication key are treated as a single alert. |  [optional] |
|**alertFieldValuesAttributes** | [**List&lt;NewAlertDataAttributesAlertFieldValuesAttributesInner&gt;**](NewAlertDataAttributesAlertFieldValuesAttributesInner.md) | Custom alert field values to create with the alert |  [optional] |



## Enum: NoiseEnum

| Name | Value |
|---- | -----|
| NOISE | &quot;noise&quot; |
| NOT_NOISE | &quot;not_noise&quot; |






# UpdatePulseDataAttributes


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**source** | **String** | The source of the pulse (eg: k8s) |  [optional] |
|**summary** | **String** | The summary of the pulse |  [optional] |
|**serviceIds** | **List&lt;String&gt;** | The Service ID&#39;s to attach to the pulse |  [optional] |
|**environmentIds** | **List&lt;String&gt;** | The Environment ID&#39;s to attach to the pulse |  [optional] |
|**startedAt** | **OffsetDateTime** | Pulse start datetime |  [optional] |
|**endedAt** | **OffsetDateTime** | Pulse end datetime |  [optional] |
|**externalUrl** | **String** | The external url of the pulse |  [optional] |
|**labels** | [**List&lt;NewAlertDataAttributesLabelsInner&gt;**](NewAlertDataAttributesLabelsInner.md) |  |  [optional] |
|**refs** | [**List&lt;NewPulseDataAttributesRefsInner&gt;**](NewPulseDataAttributesRefsInner.md) |  |  [optional] |
|**data** | **Object** | Additional data |  [optional] |




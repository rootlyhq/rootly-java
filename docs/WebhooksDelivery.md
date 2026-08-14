

# WebhooksDelivery


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**endpointId** | **String** |  |  |
|**payload** | **String** |  |  |
|**status** | [**StatusEnum**](#StatusEnum) | Delivery status |  |
|**responseStatus** | **Integer** | HTTP status code recorded for the delivery attempt. It is null before the first attempt. For SSRF and transport failures, Rootly generates this code because no destination response was received. |  |
|**deliveredAt** | **String** |  |  |
|**createdAt** | **String** | Date of creation |  |
|**updatedAt** | **String** | Date of last update |  |



## Enum: StatusEnum

| Name | Value |
|---- | -----|
| PENDING | &quot;pending&quot; |
| SUCCESS | &quot;success&quot; |
| FAILED | &quot;failed&quot; |






# StatusPageComponent


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**statusPageId** | **String** |  |  |
|**statusPageComponentGroupId** | **String** | ID of the component group the component belongs to |  [optional] |
|**name** | **String** | Name of the component (derived from the source for catalog-backed components) |  [optional] |
|**description** | **String** | Description of the component (derived from the source for catalog-backed components) |  [optional] |
|**position** | **Integer** | Position of the component |  |
|**sourceType** | **String** | Catalog source type backing the component (null for ad-hoc components) |  [optional] |
|**sourceId** | **String** | ID of the catalog source backing the component (null for ad-hoc components) |  [optional] |
|**status** | [**StatusEnum**](#StatusEnum) | Latest recorded status of the component |  [optional] |
|**createdAt** | **OffsetDateTime** | Date of creation |  |
|**updatedAt** | **OffsetDateTime** | Date of last update |  |



## Enum: StatusEnum

| Name | Value |
|---- | -----|
| OPERATIONAL | &quot;operational&quot; |
| DEGRADED_PERFORMANCE | &quot;degraded_performance&quot; |
| PARTIAL_OUTAGE | &quot;partial_outage&quot; |
| MAJOR_OUTAGE | &quot;major_outage&quot; |
| MAINTENANCE | &quot;maintenance&quot; |
| IMPACTED | &quot;impacted&quot; |




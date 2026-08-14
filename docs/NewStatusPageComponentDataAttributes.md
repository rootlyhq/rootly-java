

# NewStatusPageComponentDataAttributes


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**name** | **String** | Name of the component (required for ad-hoc components; derived from the source for catalog-backed ones) |  [optional] |
|**description** | **String** | Description of the component (ad-hoc components only) |  [optional] |
|**statusPageComponentGroupId** | **String** | ID of the component group on the same status page |  [optional] |
|**position** | **Integer** | Position of the component (within its group, or on the page&#39;s top-level list when ungrouped) |  [optional] |
|**sourceType** | [**SourceTypeEnum**](#SourceTypeEnum) | Catalog source type backing the component |  [optional] |
|**sourceId** | **String** | ID of the catalog source backing the component |  [optional] |



## Enum: SourceTypeEnum

| Name | Value |
|---- | -----|
| SERVICE | &quot;Service&quot; |
| FUNCTIONALITY | &quot;Functionality&quot; |






# UpdateOnCallShadowDataAttributes


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**scheduleId** | **String** | ID of schedule the shadow shift belongs to |  [optional] |
|**shadowableType** | [**ShadowableTypeEnum**](#ShadowableTypeEnum) |  |  [optional] |
|**shadowableId** | **String** | ID of schedule or user the shadow user is shadowing |  [optional] |
|**shadowUserId** | **Integer** | Which user the shadow shift belongs to. |  [optional] |
|**startsAt** | **OffsetDateTime** | Start datetime of shadow shift |  [optional] |
|**endsAt** | **OffsetDateTime** | End datetime for shadow shift |  [optional] |



## Enum: ShadowableTypeEnum

| Name | Value |
|---- | -----|
| USER | &quot;User&quot; |
| SCHEDULE | &quot;Schedule&quot; |




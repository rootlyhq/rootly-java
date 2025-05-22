

# NewOnCallShadowDataAttributes


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**shadowableType** | [**ShadowableTypeEnum**](#ShadowableTypeEnum) |  |  |
|**shadowableId** | **String** | ID of schedule or user the shadow user is shadowing |  |
|**shadowUserId** | **Integer** | Which user the shadow shift belongs to. |  |
|**startsAt** | **OffsetDateTime** | Start datetime of shadow shift |  |
|**endsAt** | **OffsetDateTime** | End datetime for shadow shift |  |



## Enum: ShadowableTypeEnum

| Name | Value |
|---- | -----|
| USER | &quot;User&quot; |
| SCHEDULE | &quot;Schedule&quot; |




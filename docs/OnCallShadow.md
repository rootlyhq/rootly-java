

# OnCallShadow


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**scheduleId** | **String** | ID of schedule the shadow shift belongs to |  |
|**shadowableType** | [**ShadowableTypeEnum**](#ShadowableTypeEnum) |  |  |
|**shadowableId** | **String** | ID of schedule or user the shadow user is shadowing |  |
|**shadowUserId** | **Integer** | Which user the shadow shift belongs to. |  |
|**startsAt** | **OffsetDateTime** | Start datetime of shadow shift |  |
|**endsAt** | **OffsetDateTime** | End datetime for shadow shift |  |
|**createdAt** | **String** | Date of creation |  [optional] |
|**updatedAt** | **String** | Date of last update |  [optional] |



## Enum: ShadowableTypeEnum

| Name | Value |
|---- | -----|
| USER | &quot;User&quot; |
| SCHEDULE | &quot;Schedule&quot; |






# UpdateEdgeConnectorRequestDataAttributes


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**name** | **String** |  |  [optional] |
|**description** | **String** |  |  [optional] |
|**status** | [**StatusEnum**](#StatusEnum) |  |  [optional] |
|**subscriptions** | **List&lt;String&gt;** |  |  [optional] |
|**ownerGroupIds** | **List&lt;UUID&gt;** | IDs of the teams (groups) that own this connector |  [optional] |
|**filters** | **Object** | Event filters |  [optional] |



## Enum: StatusEnum

| Name | Value |
|---- | -----|
| ACTIVE | &quot;active&quot; |
| PAUSED | &quot;paused&quot; |




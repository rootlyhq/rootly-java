

# Receipt


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**state** | [**StateEnum**](#StateEnum) | Delivery state of the receipt. |  |
|**reason** | [**ReasonEnum**](#ReasonEnum) | Reason a receipt failed. Present when state is failed. |  [optional] |
|**resourceType** | **String** | Type of the referenced resource (present when set). |  [optional] |
|**resourceId** | **String** | ID of the referenced resource (present when set). |  [optional] |



## Enum: StateEnum

| Name | Value |
|---- | -----|
| PENDING | &quot;pending&quot; |
| DONE | &quot;done&quot; |
| FAILED | &quot;failed&quot; |



## Enum: ReasonEnum

| Name | Value |
|---- | -----|
| NO_ROUTE_MATCHED | &quot;no_route_matched&quot; |
| DEDUPLICATED | &quot;deduplicated&quot; |
| SUPPRESSED | &quot;suppressed&quot; |
| VALIDATION_ERROR | &quot;validation_error&quot; |




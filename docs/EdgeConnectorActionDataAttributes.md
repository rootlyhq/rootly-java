

# EdgeConnectorActionDataAttributes


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**name** | **String** | Action name |  |
|**slug** | **String** | Action slug |  [optional] |
|**actionType** | [**ActionTypeEnum**](#ActionTypeEnum) | Action type |  |
|**icon** | [**IconEnum**](#IconEnum) | Action icon |  [optional] |
|**description** | **String** | Action description |  [optional] |
|**timeout** | **Integer** | Timeout in seconds |  [optional] |
|**parameters** | [**List&lt;EdgeConnectorActionDataAttributesParametersInner&gt;**](EdgeConnectorActionDataAttributesParametersInner.md) | Parameter definitions |  [optional] |
|**lastExecutedAt** | **OffsetDateTime** |  |  [optional] |
|**createdAt** | **OffsetDateTime** |  |  [optional] |
|**updatedAt** | **OffsetDateTime** |  |  [optional] |



## Enum: ActionTypeEnum

| Name | Value |
|---- | -----|
| SCRIPT | &quot;script&quot; |
| HTTP | &quot;http&quot; |



## Enum: IconEnum

| Name | Value |
|---- | -----|
| BOLT | &quot;bolt&quot; |
| BOLT_SLASH | &quot;bolt-slash&quot; |
| COG | &quot;cog&quot; |
| COMMAND_LINE | &quot;command-line&quot; |
| CODE_BRACKET | &quot;code-bracket&quot; |
| SERVER | &quot;server&quot; |
| SERVER_STACK | &quot;server-stack&quot; |
| PLAY | &quot;play&quot; |
| ARROW_PATH | &quot;arrow-path&quot; |
| WRENCH_SCREWDRIVER | &quot;wrench-screwdriver&quot; |
| CUBE | &quot;cube&quot; |
| ROCKET_LAUNCH | &quot;rocket-launch&quot; |




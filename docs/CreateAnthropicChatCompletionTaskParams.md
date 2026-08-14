

# CreateAnthropicChatCompletionTaskParams


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**taskType** | [**TaskTypeEnum**](#TaskTypeEnum) |  |  [optional] |
|**model** | [**CreateAnthropicChatCompletionTaskParamsModel**](CreateAnthropicChatCompletionTaskParamsModel.md) |  |  |
|**systemPrompt** | **String** | The system prompt to send to Anthropic (optional) |  [optional] |
|**prompt** | **String** | The prompt to send to Anthropic |  |
|**maxTokens** | **Integer** | Maximum number of tokens to generate. Defaults to 4000 when omitted |  [optional] |



## Enum: TaskTypeEnum

| Name | Value |
|---- | -----|
| CREATE_ANTHROPIC_CHAT_COMPLETION_TASK | &quot;create_anthropic_chat_completion_task&quot; |




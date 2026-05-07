

# CreateMistralChatCompletionTaskParams


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**taskType** | [**TaskTypeEnum**](#TaskTypeEnum) |  |  [optional] |
|**model** | [**CreateMistralChatCompletionTaskParamsModel**](CreateMistralChatCompletionTaskParamsModel.md) |  |  |
|**systemPrompt** | **String** | The system prompt to send to Mistral (optional) |  [optional] |
|**prompt** | **String** | The prompt to send to Mistral |  |
|**temperature** | **BigDecimal** | Sampling temperature (0.0-1.5). Higher values make output more random. |  [optional] |
|**maxTokens** | **Integer** | Maximum number of tokens to generate |  [optional] |
|**topP** | **BigDecimal** | Nucleus sampling parameter (0.0-1.0) |  [optional] |



## Enum: TaskTypeEnum

| Name | Value |
|---- | -----|
| CREATE_MISTRAL_CHAT_COMPLETION_TASK | &quot;create_mistral_chat_completion_task&quot; |






# CreateOpenaiChatCompletionTaskParams


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**taskType** | [**TaskTypeEnum**](#TaskTypeEnum) |  |  [optional] |
|**model** | [**CreateOpenaiChatCompletionTaskParamsModel**](CreateOpenaiChatCompletionTaskParamsModel.md) |  |  |
|**systemPrompt** | **String** | The system prompt to send to OpenAI (optional) |  [optional] |
|**prompt** | **String** | The prompt to send to OpenAI |  |
|**temperature** | **BigDecimal** | Controls randomness in the response. Higher values make output more random |  [optional] |
|**maxTokens** | **Integer** | Maximum number of tokens to generate in the response |  [optional] |
|**topP** | **BigDecimal** | Controls diversity via nucleus sampling. Lower values make output more focused |  [optional] |
|**reasoningEffort** | [**ReasoningEffortEnum**](#ReasoningEffortEnum) | Constrains effort on reasoning for GPT-5 and o-series models |  [optional] |
|**reasoningSummary** | [**ReasoningSummaryEnum**](#ReasoningSummaryEnum) | Summary of the reasoning performed by the model for GPT-5 and o-series models |  [optional] |



## Enum: TaskTypeEnum

| Name | Value |
|---- | -----|
| OPENAI_CHAT_COMPLETION | &quot;openai_chat_completion&quot; |



## Enum: ReasoningEffortEnum

| Name | Value |
|---- | -----|
| MINIMAL | &quot;minimal&quot; |
| LOW | &quot;low&quot; |
| MEDIUM | &quot;medium&quot; |
| HIGH | &quot;high&quot; |



## Enum: ReasoningSummaryEnum

| Name | Value |
|---- | -----|
| AUTO | &quot;auto&quot; |
| CONCISE | &quot;concise&quot; |
| DETAILED | &quot;detailed&quot; |




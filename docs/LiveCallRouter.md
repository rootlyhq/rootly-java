

# LiveCallRouter


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**kind** | [**KindEnum**](#KindEnum) | The kind of the live_call_router |  [optional] |
|**enabled** | **Boolean** | Whether the live_call_router is enabled |  [optional] |
|**name** | **String** | The name of the live_call_router |  |
|**countryCode** | [**CountryCodeEnum**](#CountryCodeEnum) | The country code of the live_call_router |  [optional] |
|**phoneType** | [**PhoneTypeEnum**](#PhoneTypeEnum) | The phone type of the live_call_router |  [optional] |
|**phoneNumber** | **String** | You can select a phone number using [generate_phone_number](#//api/v1/live_call_routers/generate_phone_number) API and pass that phone number here to register |  [optional] |
|**voicemailGreeting** | **String** | The voicemail greeting of the live_call_router |  [optional] |
|**callerGreeting** | **String** | The caller greeting message of the live_call_router |  [optional] |
|**waitingMusicUrl** | **String** | The waiting music URL of the live_call_router |  [optional] |
|**sentToVoicemailDelay** | **Integer** | The delay (seconds) after which the caller in redirected to voicemail |  [optional] |
|**shouldRedirectToVoicemailOnNoAnswer** | **Boolean** | This prompts the caller to choose voicemail or connect live |  [optional] |
|**escalationLevelDelayInSeconds** | **Integer** | This overrides the delay (seconds) in escalation levels |  [optional] |
|**shouldAutoResolveAlertOnCallEnd** | **Boolean** | This overrides the delay (seconds) in escalation levels |  [optional] |
|**alertUrgencyId** | **String** | This is used in escalation paths to determine who to page |  [optional] |
|**escalationPolicyTriggerParams** | [**UpdateLiveCallRouterDataAttributesEscalationPolicyTriggerParams**](UpdateLiveCallRouterDataAttributesEscalationPolicyTriggerParams.md) |  |  [optional] |
|**createdAt** | **String** | Date of creation |  |
|**updatedAt** | **String** | Date of last update |  |



## Enum: KindEnum

| Name | Value |
|---- | -----|
| VOICEMAIL | &quot;voicemail&quot; |
| LIVE | &quot;live&quot; |



## Enum: CountryCodeEnum

| Name | Value |
|---- | -----|
| US | &quot;US&quot; |
| GB | &quot;GB&quot; |
| NZ | &quot;NZ&quot; |
| CA | &quot;CA&quot; |
| AU | &quot;AU&quot; |



## Enum: PhoneTypeEnum

| Name | Value |
|---- | -----|
| LOCAL | &quot;local&quot; |
| TOLL_FREE | &quot;toll_free&quot; |






# UpdateLiveCallRouterDataAttributes


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**kind** | [**KindEnum**](#KindEnum) | The kind of the live_call_router |  [optional] |
|**enabled** | **Boolean** | Whether the live_call_router is enabled |  [optional] |
|**name** | **String** | The name of the live_call_router |  [optional] |
|**countryCode** | [**CountryCodeEnum**](#CountryCodeEnum) | The country code of the live_call_router |  [optional] |
|**phoneType** | [**PhoneTypeEnum**](#PhoneTypeEnum) | The phone type of the live_call_router |  [optional] |
|**voicemailGreeting** | **String** | The voicemail greeting of the live_call_router |  [optional] |
|**callerGreeting** | **String** | The caller greeting message of the live_call_router |  [optional] |
|**waitingMusicUrl** | [**WaitingMusicUrlEnum**](#WaitingMusicUrlEnum) | The waiting music URL of the live_call_router |  [optional] |
|**sentToVoicemailDelay** | **Integer** | The delay (seconds) after which the caller in redirected to voicemail |  [optional] |
|**shouldRedirectToVoicemailOnNoAnswer** | **Boolean** | This prompts the caller to choose voicemail or connect live |  [optional] |
|**escalationLevelDelayInSeconds** | **Integer** | This overrides the delay (seconds) in escalation levels |  [optional] |
|**shouldAutoResolveAlertOnCallEnd** | **Boolean** | This overrides the delay (seconds) in escalation levels |  [optional] |
|**alertUrgencyId** | **String** | This is used in escalation paths to determine who to page |  [optional] |
|**callingTreePrompt** | **String** | The audio instructions callers will hear when they call this number, prompting them to select from available options to route their call |  [optional] |
|**pagingTargets** | [**List&lt;NewLiveCallRouterDataAttributesPagingTargetsInner&gt;**](NewLiveCallRouterDataAttributesPagingTargetsInner.md) | Paging targets that callers can select from when this live call router is configured as a phone tree. |  [optional] |
|**escalationPolicyTriggerParams** | [**UpdateLiveCallRouterDataAttributesEscalationPolicyTriggerParams**](UpdateLiveCallRouterDataAttributesEscalationPolicyTriggerParams.md) |  |  [optional] |



## Enum: KindEnum

| Name | Value |
|---- | -----|
| VOICEMAIL | &quot;voicemail&quot; |
| LIVE | &quot;live&quot; |



## Enum: CountryCodeEnum

| Name | Value |
|---- | -----|
| AU | &quot;AU&quot; |
| CA | &quot;CA&quot; |
| DE | &quot;DE&quot; |
| NL | &quot;NL&quot; |
| NZ | &quot;NZ&quot; |
| GB | &quot;GB&quot; |
| US | &quot;US&quot; |



## Enum: PhoneTypeEnum

| Name | Value |
|---- | -----|
| LOCAL | &quot;local&quot; |
| TOLL_FREE | &quot;toll_free&quot; |
| MOBILE | &quot;mobile&quot; |



## Enum: WaitingMusicUrlEnum

| Name | Value |
|---- | -----|
| HTTPS_STORAGE_ROOTLY_COM_TWILIO_VOICEMAIL_CLOCKWORK_WALTZ_MP3 | &quot;https://storage.rootly.com/twilio/voicemail/ClockworkWaltz.mp3&quot; |
| HTTPS_STORAGE_ROOTLY_COM_TWILIO_VOICEMAIL_ITH_BRAHMS_116_4_MP3 | &quot;https://storage.rootly.com/twilio/voicemail/ith_brahms-116-4.mp3&quot; |
| HTTPS_STORAGE_ROOTLY_COM_TWILIO_VOICEMAIL_MELLOTRONIAC___FLIGHT_OF_YOUNG_HEARTS_FLUTE_MP3 | &quot;https://storage.rootly.com/twilio/voicemail/Mellotroniac_-_Flight_Of_Young_Hearts_Flute.mp3&quot; |
| HTTPS_STORAGE_ROOTLY_COM_TWILIO_VOICEMAIL_BUSY_STRINGS_MP3 | &quot;https://storage.rootly.com/twilio/voicemail/BusyStrings.mp3&quot; |
| HTTPS_STORAGE_ROOTLY_COM_TWILIO_VOICEMAIL_OLD_DOG___ENDLESS_GOODBYE__28INSTR_29_MP3 | &quot;https://storage.rootly.com/twilio/voicemail/oldDog_-_endless_goodbye_%28instr.%29.mp3&quot; |
| HTTPS_STORAGE_ROOTLY_COM_TWILIO_VOICEMAIL_MARKOVICHAMP_BORGHESTRAL_MP3 | &quot;https://storage.rootly.com/twilio/voicemail/MARKOVICHAMP-Borghestral.mp3&quot; |
| HTTPS_STORAGE_ROOTLY_COM_TWILIO_VOICEMAIL_ITH_CHOPIN_15_2_MP3 | &quot;https://storage.rootly.com/twilio/voicemail/ith_chopin-15-2.mp3&quot; |




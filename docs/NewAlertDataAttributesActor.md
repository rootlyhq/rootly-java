

# NewAlertDataAttributesActor

The user to record as performing this action. Only available when actor attribution is enabled for the organization; otherwise it is ignored. Only supported with Global and Team API keys; with a Team API key the user must belong to one of the key's teams. When omitted or null, the action is attributed to the API key. Otherwise provide either `email` or `user_id`, not both.

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**email** | **String** | Email of the user, including verified secondary emails. |  |
|**userId** | **String** | Rootly ID of the user. |  |




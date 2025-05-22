

# AlertsSource


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**alertUrgencyId** | **String** | ID for the default alert urgency assigned to this alert source |  [optional] |
|**name** | **String** | The name of the alert source |  |
|**sourceType** | **String** | The alert source type |  [optional] |
|**status** | **String** | The current status of the alert source |  |
|**secret** | **String** | A secret key used to authenticate incoming requests to this alerts source |  |
|**webhookEndpoint** | **String** | The URL endpoint of the alert source |  [optional] |
|**email** | **String** | The email address of the alert source |  [optional] |
|**ownerGroupIds** | **List&lt;String&gt;** | List of team IDs that will own the alert source |  [optional] |
|**createdAt** | **String** | Date of creation |  |
|**updatedAt** | **String** | Date of last update |  |
|**sourceableAttributes** | **Object** | Additional attributes specific to certain alert sources (e.g., generic_webhook), encapsulating source-specific configurations or details |  [optional] |
|**resolutionRuleAttributes** | **Object** | Additional attributes for email alerts source |  [optional] |




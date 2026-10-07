

# PrivateAgentSummaryAttributes


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**name** | **String** |  |  |
|**description** | **String** | Non-sensitive routing metadata. Do not include secrets or personal data. |  |
|**enabled** | **Boolean** | For active agents, whether Rootly may advertise tools and assign new work. |  |
|**status** | [**StatusEnum**](#StatusEnum) |  |  |
|**online** | **Boolean** | Active agent seen within two minutes; does not imply all providers are healthy. |  |
|**deploymentMode** | [**DeploymentModeEnum**](#DeploymentModeEnum) |  |  |
|**agentVersion** | **String** |  |  |
|**lastSeenAt** | **OffsetDateTime** |  |  |
|**schemaDigest** | **String** |  |  |
|**createdAt** | **OffsetDateTime** |  |  |
|**updatedAt** | **OffsetDateTime** |  |  |



## Enum: StatusEnum

| Name | Value |
|---- | -----|
| ACTIVE | &quot;active&quot; |
| REVOKED | &quot;revoked&quot; |



## Enum: DeploymentModeEnum

| Name | Value |
|---- | -----|
| COMBINED | &quot;combined&quot; |
| SPLIT_CORE | &quot;split-core&quot; |






# VerifiedDomain


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**domain** | **String** | The domain name |  |
|**verificationStatus** | [**VerificationStatusEnum**](#VerificationStatusEnum) | Verification status |  |
|**verificationToken** | **String** | The verification token |  |
|**txtHost** | **String** | The TXT record hostname to add |  [readonly] |
|**txtValue** | **String** | The TXT record value to add |  [readonly] |
|**verifiedAt** | **String** | When the domain was first verified |  [optional] |
|**lastCheckedAt** | **String** | When the domain was last checked |  [optional] |
|**lastCheckPassedAt** | **String** | When the TXT record was last found |  [optional] |
|**checkFailuresCount** | **Integer** | Number of consecutive check failures |  [optional] |
|**source** | [**SourceEnum**](#SourceEnum) | How the domain was added |  [optional] |
|**createdAt** | **String** | Date of creation |  |
|**updatedAt** | **String** | Date of last update |  |



## Enum: VerificationStatusEnum

| Name | Value |
|---- | -----|
| PENDING | &quot;pending&quot; |
| VERIFIED | &quot;verified&quot; |
| FAILING | &quot;failing&quot; |
| EXPIRED | &quot;expired&quot; |



## Enum: SourceEnum

| Name | Value |
|---- | -----|
| MANUAL | &quot;manual&quot; |
| MIGRATION | &quot;migration&quot; |
| OAUTH_AUTO | &quot;oauth_auto&quot; |




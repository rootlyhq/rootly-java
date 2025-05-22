

# NewSecretDataAttributes


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**kind** | [**KindEnum**](#KindEnum) | The kind of the secret |  [optional] |
|**name** | **String** | The name of the secret |  |
|**secret** | **String** | The secret |  |
|**hashicorpVaultMount** | **String** | The HashiCorp Vault secret mount path |  [optional] |
|**hashicorpVaultPath** | **String** | The HashiCorp Vault secret path |  [optional] |
|**hashicorpVaultVersion** | **String** | The HashiCorp Vault secret version |  [optional] |



## Enum: KindEnum

| Name | Value |
|---- | -----|
| BUILT_IN | &quot;built_in&quot; |
| HASHICORP_VAULT | &quot;hashicorp_vault&quot; |




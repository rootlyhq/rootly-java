

# Secret


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**name** | **String** | The name of the secret |  |
|**secret** | **String** | The redacted secret |  [optional] |
|**hashicorpVaultMount** | **String** | The HashiCorp Vault secret mount path |  [optional] |
|**hashicorpVaultPath** | **String** | The HashiCorp Vault secret path |  [optional] |
|**hashicorpVaultVersion** | **Integer** | The HashiCorp Vault secret version |  [optional] |
|**ownerGroupIds** | **List&lt;String&gt;** | IDs of the teams whose members can see and pick this secret; their team admins can manage it. Empty means only users with the org Secrets permission can. Ignored unless team scoping is enabled for the organization. |  [optional] |
|**createdAt** | **String** | Date of creation |  |
|**updatedAt** | **String** | Date of last update |  |




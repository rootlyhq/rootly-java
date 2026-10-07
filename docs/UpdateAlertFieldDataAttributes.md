

# UpdateAlertFieldDataAttributes


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**slug** | **String** | Deprecated. &#x60;slug&#x60; is derived from &#x60;name&#x60;; any submitted value is ignored. This property will be removed from the request schema in a future version. |  [optional] |
|**name** | **String** | The name of the alert field |  [optional] |
|**ownerGroupIds** | **List&lt;String&gt;** | IDs of the teams that own the alert field. Callers with org-wide alert field permissions replace the full set. Callers without them may only add teams they administer, must leave at least one owner, and owners they do not administer are preserved. |  [optional] |




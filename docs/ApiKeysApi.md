# ApiKeysApi

All URIs are relative to *https://api.rootly.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createApiKey**](ApiKeysApi.md#createApiKey) | **POST** /v1/api_keys | Creates an API key |
| [**deleteApiKey**](ApiKeysApi.md#deleteApiKey) | **DELETE** /v1/api_keys/{id} | Revoke an API key |
| [**getApiKey**](ApiKeysApi.md#getApiKey) | **GET** /v1/api_keys/{id} | Retrieves an API key |
| [**listApiKeys**](ApiKeysApi.md#listApiKeys) | **GET** /v1/api_keys | List API keys |
| [**rotateApiKey**](ApiKeysApi.md#rotateApiKey) | **POST** /v1/api_keys/{id}/rotate | Rotate an API key |
| [**updateApiKey**](ApiKeysApi.md#updateApiKey) | **PUT** /v1/api_keys/{id} | Update an API key |


<a id="createApiKey"></a>
# **createApiKey**
> ApiKeyWithTokenResponse createApiKey(newApiKey)

Creates an API key

Creates a new API key and returns it with the plaintext token. **The token is only returned once** — store it securely, as it cannot be retrieved again.  **Kinds and required fields:** - &#x60;personal&#x60; — created for the authenticated user. No additional fields required. - &#x60;team&#x60; — scoped to a team (group). Requires &#x60;group_id&#x60;. A service account is automatically created with permissions derived from group membership. - &#x60;organization&#x60; — organization-wide access. Requires owner or admin role. Optionally set &#x60;role_id&#x60; and &#x60;on_call_role_id&#x60; to control the service account&#39;s permissions.  **Expiration:** All keys require an &#x60;expires_at&#x60; date set in the future (maximum 5 years). Names must be unique within their kind and scope. 

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.ApiKeysApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    ApiKeysApi apiInstance = new ApiKeysApi(defaultClient);
    NewApiKey newApiKey = new NewApiKey(); // NewApiKey | 
    try {
      ApiKeyWithTokenResponse result = apiInstance.createApiKey(newApiKey);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ApiKeysApi#createApiKey");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **newApiKey** | [**NewApiKey**](NewApiKey.md)|  | |

### Return type

[**ApiKeyWithTokenResponse**](ApiKeyWithTokenResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | API key created |  -  |
| **422** | invalid request |  -  |
| **401** | responds with unauthorized for invalid token |  -  |

<a id="deleteApiKey"></a>
# **deleteApiKey**
> ApiKeyResponse deleteApiKey(id)

Revoke an API key

Revoke an API key. The key is immediately invalidated and can no longer be used for authentication. This action cannot be undone.  For &#x60;team&#x60; and &#x60;organization&#x60; keys, the associated service account is also deleted. Any active sessions using this key will fail on the next request. 

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.ApiKeysApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    ApiKeysApi apiInstance = new ApiKeysApi(defaultClient);
    UUID id = UUID.randomUUID(); // UUID | 
    try {
      ApiKeyResponse result = apiInstance.deleteApiKey(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ApiKeysApi#deleteApiKey");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **UUID**|  | |

### Return type

[**ApiKeyResponse**](ApiKeyResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | API key revoked |  -  |
| **404** | API key not found |  -  |

<a id="getApiKey"></a>
# **getApiKey**
> ApiKeyResponse getApiKey(id, include)

Retrieves an API key

Retrieves a specific API key by its UUID. Returns key metadata including name, kind, expiration, last usage timestamp, and the grace period status — the secret token is never included.

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.ApiKeysApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    ApiKeysApi apiInstance = new ApiKeysApi(defaultClient);
    UUID id = UUID.randomUUID(); // UUID | 
    String include = "include_example"; // String | Comma-separated list of relationships to include (role, on_call_role, created_by, groups)
    try {
      ApiKeyResponse result = apiInstance.getApiKey(id, include);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ApiKeysApi#getApiKey");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **UUID**|  | |
| **include** | **String**| Comma-separated list of relationships to include (role, on_call_role, created_by, groups) | [optional] |

### Return type

[**ApiKeyResponse**](ApiKeyResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | API key found |  -  |
| **404** | API key not found |  -  |

<a id="listApiKeys"></a>
# **listApiKeys**
> ApiKeyList listApiKeys(include, pageNumber, pageSize, filterKind, filterSearch, filterName, filterUserId, filterGroupIds, filterRoleId, filterActive, filterExpired, filterCreatedAtGt, filterCreatedAtGte, filterCreatedAtLt, filterCreatedAtLte, filterExpiresAtGt, filterExpiresAtGte, filterExpiresAtLt, filterExpiresAtLte, filterLastUsedAtGt, filterLastUsedAtGte, filterLastUsedAtLt, filterLastUsedAtLte, sort)

List API keys

List API keys for the current organization. Returns key metadata including name, kind, expiration, and last usage — the secret token value is never included in the response.  **API key kinds:** - &#x60;personal&#x60; — tied to a specific user, inherits that user&#39;s permissions. - &#x60;team&#x60; — scoped to one or more teams (groups), creates a service account with permissions derived from group membership. - &#x60;organization&#x60; — organization-wide, creates a service account with a configurable role and on-call role.  **Automated rotation workflow:** Use &#x60;filter[expires_at][lt]&#x60; to find keys approaching expiration, then call the rotate endpoint to issue a new token before the old one expires. Combine with &#x60;filter[active]&#x3D;true&#x60; to exclude already-expired keys.  **Sorting:** Use the &#x60;sort&#x60; parameter with a field name (e.g., &#x60;sort&#x3D;expires_at&#x60;). Prefix with &#x60;-&#x60; for descending order (e.g., &#x60;sort&#x3D;-created_at&#x60;). Allowed fields: &#x60;name&#x60;, &#x60;kind&#x60;, &#x60;created_at&#x60;, &#x60;updated_at&#x60;, &#x60;expires_at&#x60;, &#x60;last_used_at&#x60;. 

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.ApiKeysApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    ApiKeysApi apiInstance = new ApiKeysApi(defaultClient);
    String include = "include_example"; // String | Comma-separated list of relationships to include (role, on_call_role, created_by, groups)
    Integer pageNumber = 56; // Integer | 
    Integer pageSize = 56; // Integer | 
    String filterKind = "filterKind_example"; // String | Filter by API key kind: personal, team, organization
    String filterSearch = "filterSearch_example"; // String | Search by name (case-insensitive partial match)
    String filterName = "filterName_example"; // String | Filter by exact name
    String filterUserId = "filterUserId_example"; // String | Filter by the user ID that owns the key
    String filterGroupIds = "filterGroupIds_example"; // String | Filter team keys by group IDs (comma-separated)
    String filterRoleId = "filterRoleId_example"; // String | Filter by role ID
    Boolean filterActive = true; // Boolean | When true, return only non-expired keys
    Boolean filterExpired = true; // Boolean | When true, return only expired keys
    String filterCreatedAtGt = "filterCreatedAtGt_example"; // String | Created after (ISO 8601)
    String filterCreatedAtGte = "filterCreatedAtGte_example"; // String | Created at or after (ISO 8601)
    String filterCreatedAtLt = "filterCreatedAtLt_example"; // String | Created before (ISO 8601)
    String filterCreatedAtLte = "filterCreatedAtLte_example"; // String | Created at or before (ISO 8601)
    String filterExpiresAtGt = "filterExpiresAtGt_example"; // String | Expires after (ISO 8601)
    String filterExpiresAtGte = "filterExpiresAtGte_example"; // String | Expires at or after (ISO 8601)
    String filterExpiresAtLt = "filterExpiresAtLt_example"; // String | Expires before (ISO 8601). Useful for finding keys approaching expiration.
    String filterExpiresAtLte = "filterExpiresAtLte_example"; // String | Expires at or before (ISO 8601)
    String filterLastUsedAtGt = "filterLastUsedAtGt_example"; // String | Last used after (ISO 8601)
    String filterLastUsedAtGte = "filterLastUsedAtGte_example"; // String | Last used at or after (ISO 8601)
    String filterLastUsedAtLt = "filterLastUsedAtLt_example"; // String | Last used before (ISO 8601)
    String filterLastUsedAtLte = "filterLastUsedAtLte_example"; // String | Last used at or before (ISO 8601)
    String sort = "sort_example"; // String | Sort by field. Prefix with - for descending (e.g., -created_at, expires_at)
    try {
      ApiKeyList result = apiInstance.listApiKeys(include, pageNumber, pageSize, filterKind, filterSearch, filterName, filterUserId, filterGroupIds, filterRoleId, filterActive, filterExpired, filterCreatedAtGt, filterCreatedAtGte, filterCreatedAtLt, filterCreatedAtLte, filterExpiresAtGt, filterExpiresAtGte, filterExpiresAtLt, filterExpiresAtLte, filterLastUsedAtGt, filterLastUsedAtGte, filterLastUsedAtLt, filterLastUsedAtLte, sort);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ApiKeysApi#listApiKeys");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **include** | **String**| Comma-separated list of relationships to include (role, on_call_role, created_by, groups) | [optional] |
| **pageNumber** | **Integer**|  | [optional] |
| **pageSize** | **Integer**|  | [optional] |
| **filterKind** | **String**| Filter by API key kind: personal, team, organization | [optional] |
| **filterSearch** | **String**| Search by name (case-insensitive partial match) | [optional] |
| **filterName** | **String**| Filter by exact name | [optional] |
| **filterUserId** | **String**| Filter by the user ID that owns the key | [optional] |
| **filterGroupIds** | **String**| Filter team keys by group IDs (comma-separated) | [optional] |
| **filterRoleId** | **String**| Filter by role ID | [optional] |
| **filterActive** | **Boolean**| When true, return only non-expired keys | [optional] |
| **filterExpired** | **Boolean**| When true, return only expired keys | [optional] |
| **filterCreatedAtGt** | **String**| Created after (ISO 8601) | [optional] |
| **filterCreatedAtGte** | **String**| Created at or after (ISO 8601) | [optional] |
| **filterCreatedAtLt** | **String**| Created before (ISO 8601) | [optional] |
| **filterCreatedAtLte** | **String**| Created at or before (ISO 8601) | [optional] |
| **filterExpiresAtGt** | **String**| Expires after (ISO 8601) | [optional] |
| **filterExpiresAtGte** | **String**| Expires at or after (ISO 8601) | [optional] |
| **filterExpiresAtLt** | **String**| Expires before (ISO 8601). Useful for finding keys approaching expiration. | [optional] |
| **filterExpiresAtLte** | **String**| Expires at or before (ISO 8601) | [optional] |
| **filterLastUsedAtGt** | **String**| Last used after (ISO 8601) | [optional] |
| **filterLastUsedAtGte** | **String**| Last used at or after (ISO 8601) | [optional] |
| **filterLastUsedAtLt** | **String**| Last used before (ISO 8601) | [optional] |
| **filterLastUsedAtLte** | **String**| Last used at or before (ISO 8601) | [optional] |
| **sort** | **String**| Sort by field. Prefix with - for descending (e.g., -created_at, expires_at) | [optional] |

### Return type

[**ApiKeyList**](ApiKeyList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | success |  -  |
| **401** | responds with unauthorized for invalid token |  -  |

<a id="rotateApiKey"></a>
# **rotateApiKey**
> ApiKeyWithTokenResponse rotateApiKey(id, rotateApiKey)

Rotate an API key

Rotate an API key&#39;s token. Issues a new secret token and returns it — **the new token is only shown once**, so store it securely.  **Self-only:** You can only rotate the API key that was used to authenticate this request. Attempting to rotate a different key returns &#x60;403 Forbidden&#x60;.  **Grace period:** When enabled for your organization, the previous token remains valid after rotation, giving you time to deploy the new token without downtime. Pass &#x60;grace_period_minutes&#x60; (integer, 0–1440, default 30) to control how long the old token stays valid. Set to 0 to immediately invalidate the old token. The &#x60;grace_period_ends_at&#x60; field in the response confirms the exact time the old token will stop working.  **Expiration:** Optionally provide a new &#x60;expires_at&#x60; date (ISO 8601, up to 5 years). Defaults to 90 days from now if omitted. Dates in the past are rejected.  **Typical rotation workflow:** 1. Call this endpoint to get a new token (optionally with a custom &#x60;grace_period_minutes&#x60;). 2. Deploy the new token to your systems. 3. The old token continues working for &#x60;grace_period_minutes&#x60; (if grace period is enabled). 4. After the grace period, the old token is automatically invalidated. 

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.ApiKeysApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    ApiKeysApi apiInstance = new ApiKeysApi(defaultClient);
    String id = "id_example"; // String | 
    RotateApiKey rotateApiKey = new RotateApiKey(); // RotateApiKey | 
    try {
      ApiKeyWithTokenResponse result = apiInstance.rotateApiKey(id, rotateApiKey);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ApiKeysApi#rotateApiKey");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**|  | |
| **rotateApiKey** | [**RotateApiKey**](RotateApiKey.md)|  | [optional] |

### Return type

[**ApiKeyWithTokenResponse**](ApiKeyWithTokenResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | API key rotated |  -  |
| **404** | API key not found |  -  |

<a id="updateApiKey"></a>
# **updateApiKey**
> ApiKeyResponse updateApiKey(id, updateApiKey)

Update an API key

Update an API key&#39;s mutable attributes: &#x60;name&#x60;, &#x60;description&#x60;, and &#x60;expires_at&#x60;.  The key&#39;s &#x60;kind&#x60;, &#x60;role_id&#x60;, &#x60;on_call_role_id&#x60;, and token cannot be changed after creation. To issue a new token, use the rotate endpoint. To change the role or kind, revoke the key and create a new one.  The new &#x60;expires_at&#x60; must be in the future and within 5 years. 

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.ApiKeysApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    ApiKeysApi apiInstance = new ApiKeysApi(defaultClient);
    UUID id = UUID.randomUUID(); // UUID | 
    UpdateApiKey updateApiKey = new UpdateApiKey(); // UpdateApiKey | 
    try {
      ApiKeyResponse result = apiInstance.updateApiKey(id, updateApiKey);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ApiKeysApi#updateApiKey");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **UUID**|  | |
| **updateApiKey** | [**UpdateApiKey**](UpdateApiKey.md)|  | |

### Return type

[**ApiKeyResponse**](ApiKeyResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | API key updated |  -  |
| **404** | API key not found |  -  |


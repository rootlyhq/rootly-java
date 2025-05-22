# AuthorizationsApi

All URIs are relative to *https://api.rootly.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createAuthorization**](AuthorizationsApi.md#createAuthorization) | **POST** /v1/authorizations | Creates an authorization |
| [**deleteAuthorization**](AuthorizationsApi.md#deleteAuthorization) | **DELETE** /v1/authorizations/{id} | Delete an authorization |
| [**getAuthorization**](AuthorizationsApi.md#getAuthorization) | **GET** /v1/authorizations/{id} | Retrieves an authorization |
| [**listAuthorizations**](AuthorizationsApi.md#listAuthorizations) | **GET** /v1/authorizations | List authorizations |
| [**updateAuthorization**](AuthorizationsApi.md#updateAuthorization) | **PUT** /v1/authorizations/{id} | Update an authorization |


<a id="createAuthorization"></a>
# **createAuthorization**
> AuthorizationResponse createAuthorization(newAuthorization)

Creates an authorization

Creates a new authorization from provided data

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.AuthorizationsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    AuthorizationsApi apiInstance = new AuthorizationsApi(defaultClient);
    NewAuthorization newAuthorization = new NewAuthorization(); // NewAuthorization | 
    try {
      AuthorizationResponse result = apiInstance.createAuthorization(newAuthorization);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AuthorizationsApi#createAuthorization");
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
| **newAuthorization** | [**NewAuthorization**](NewAuthorization.md)|  | |

### Return type

[**AuthorizationResponse**](AuthorizationResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | authorization created |  -  |
| **401** | responds with unauthorized for invalid token |  -  |

<a id="deleteAuthorization"></a>
# **deleteAuthorization**
> AuthorizationResponse deleteAuthorization(id)

Delete an authorization

Delete a specific authorization by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.AuthorizationsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    AuthorizationsApi apiInstance = new AuthorizationsApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      AuthorizationResponse result = apiInstance.deleteAuthorization(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AuthorizationsApi#deleteAuthorization");
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

### Return type

[**AuthorizationResponse**](AuthorizationResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | authorization deleted |  -  |
| **404** | resource not found |  -  |

<a id="getAuthorization"></a>
# **getAuthorization**
> AuthorizationResponse getAuthorization(id)

Retrieves an authorization

Retrieves a specific authorization by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.AuthorizationsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    AuthorizationsApi apiInstance = new AuthorizationsApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      AuthorizationResponse result = apiInstance.getAuthorization(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AuthorizationsApi#getAuthorization");
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

### Return type

[**AuthorizationResponse**](AuthorizationResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | authorization found |  -  |
| **404** | resource not found |  -  |

<a id="listAuthorizations"></a>
# **listAuthorizations**
> AuthorizationList listAuthorizations(include, pageNumber, pageSize, filterAuthorizableId, filterAuthorizableType, filterGranteeId, filterGranteeType, filterCreatedAtGt, filterCreatedAtGte, filterCreatedAtLt, filterCreatedAtLte, sort)

List authorizations

List authorizations

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.AuthorizationsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    AuthorizationsApi apiInstance = new AuthorizationsApi(defaultClient);
    String include = "include_example"; // String | 
    Integer pageNumber = 56; // Integer | 
    Integer pageSize = 56; // Integer | 
    String filterAuthorizableId = "filterAuthorizableId_example"; // String | 
    String filterAuthorizableType = "filterAuthorizableType_example"; // String | 
    String filterGranteeId = "filterGranteeId_example"; // String | 
    String filterGranteeType = "filterGranteeType_example"; // String | 
    String filterCreatedAtGt = "filterCreatedAtGt_example"; // String | 
    String filterCreatedAtGte = "filterCreatedAtGte_example"; // String | 
    String filterCreatedAtLt = "filterCreatedAtLt_example"; // String | 
    String filterCreatedAtLte = "filterCreatedAtLte_example"; // String | 
    String sort = "sort_example"; // String | 
    try {
      AuthorizationList result = apiInstance.listAuthorizations(include, pageNumber, pageSize, filterAuthorizableId, filterAuthorizableType, filterGranteeId, filterGranteeType, filterCreatedAtGt, filterCreatedAtGte, filterCreatedAtLt, filterCreatedAtLte, sort);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AuthorizationsApi#listAuthorizations");
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
| **include** | **String**|  | [optional] |
| **pageNumber** | **Integer**|  | [optional] |
| **pageSize** | **Integer**|  | [optional] |
| **filterAuthorizableId** | **String**|  | [optional] |
| **filterAuthorizableType** | **String**|  | [optional] |
| **filterGranteeId** | **String**|  | [optional] |
| **filterGranteeType** | **String**|  | [optional] |
| **filterCreatedAtGt** | **String**|  | [optional] |
| **filterCreatedAtGte** | **String**|  | [optional] |
| **filterCreatedAtLt** | **String**|  | [optional] |
| **filterCreatedAtLte** | **String**|  | [optional] |
| **sort** | **String**|  | [optional] |

### Return type

[**AuthorizationList**](AuthorizationList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | success |  -  |

<a id="updateAuthorization"></a>
# **updateAuthorization**
> AuthorizationResponse updateAuthorization(id, updateAuthorization)

Update an authorization

Update a specific authorization by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.AuthorizationsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    AuthorizationsApi apiInstance = new AuthorizationsApi(defaultClient);
    String id = "id_example"; // String | 
    UpdateAuthorization updateAuthorization = new UpdateAuthorization(); // UpdateAuthorization | 
    try {
      AuthorizationResponse result = apiInstance.updateAuthorization(id, updateAuthorization);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AuthorizationsApi#updateAuthorization");
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
| **updateAuthorization** | [**UpdateAuthorization**](UpdateAuthorization.md)|  | |

### Return type

[**AuthorizationResponse**](AuthorizationResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | authorization updated |  -  |
| **404** | resource not found |  -  |


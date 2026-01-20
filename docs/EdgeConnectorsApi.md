# EdgeConnectorsApi

All URIs are relative to *https://api.rootly.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**v1EdgeConnectorsGet**](EdgeConnectorsApi.md#v1EdgeConnectorsGet) | **GET** /v1/edge_connectors | List edge connectors |
| [**v1EdgeConnectorsIdDelete**](EdgeConnectorsApi.md#v1EdgeConnectorsIdDelete) | **DELETE** /v1/edge_connectors/{id} | Delete edge connector |
| [**v1EdgeConnectorsIdGet**](EdgeConnectorsApi.md#v1EdgeConnectorsIdGet) | **GET** /v1/edge_connectors/{id} | Show edge connector |
| [**v1EdgeConnectorsIdPatch**](EdgeConnectorsApi.md#v1EdgeConnectorsIdPatch) | **PATCH** /v1/edge_connectors/{id} | Update edge connector |
| [**v1EdgeConnectorsPost**](EdgeConnectorsApi.md#v1EdgeConnectorsPost) | **POST** /v1/edge_connectors | Create edge connector |


<a id="v1EdgeConnectorsGet"></a>
# **v1EdgeConnectorsGet**
> v1EdgeConnectorsGet(page, perPage, status, name)

List edge connectors

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.EdgeConnectorsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    EdgeConnectorsApi apiInstance = new EdgeConnectorsApi(defaultClient);
    Integer page = 56; // Integer | 
    Integer perPage = 56; // Integer | 
    String status = "status_example"; // String | Filter by status (active/paused)
    String name = "name_example"; // String | Filter by name (partial match)
    try {
      apiInstance.v1EdgeConnectorsGet(page, perPage, status, name);
    } catch (ApiException e) {
      System.err.println("Exception when calling EdgeConnectorsApi#v1EdgeConnectorsGet");
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
| **page** | **Integer**|  | [optional] |
| **perPage** | **Integer**|  | [optional] |
| **status** | **String**| Filter by status (active/paused) | [optional] |
| **name** | **String**| Filter by name (partial match) | [optional] |

### Return type

null (empty response body)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Filters by status |  -  |

<a id="v1EdgeConnectorsIdDelete"></a>
# **v1EdgeConnectorsIdDelete**
> v1EdgeConnectorsIdDelete(id)

Delete edge connector

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.EdgeConnectorsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    EdgeConnectorsApi apiInstance = new EdgeConnectorsApi(defaultClient);
    String id = "id_example"; // String | Edge connector ID
    try {
      apiInstance.v1EdgeConnectorsIdDelete(id);
    } catch (ApiException e) {
      System.err.println("Exception when calling EdgeConnectorsApi#v1EdgeConnectorsIdDelete");
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
| **id** | **String**| Edge connector ID | |

### Return type

null (empty response body)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Edge connector deleted |  -  |

<a id="v1EdgeConnectorsIdGet"></a>
# **v1EdgeConnectorsIdGet**
> v1EdgeConnectorsIdGet(id)

Show edge connector

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.EdgeConnectorsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    EdgeConnectorsApi apiInstance = new EdgeConnectorsApi(defaultClient);
    String id = "id_example"; // String | Edge connector ID
    try {
      apiInstance.v1EdgeConnectorsIdGet(id);
    } catch (ApiException e) {
      System.err.println("Exception when calling EdgeConnectorsApi#v1EdgeConnectorsIdGet");
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
| **id** | **String**| Edge connector ID | |

### Return type

null (empty response body)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Returns edge connector details |  -  |
| **404** | Edge connector not found |  -  |

<a id="v1EdgeConnectorsIdPatch"></a>
# **v1EdgeConnectorsIdPatch**
> v1EdgeConnectorsIdPatch(id, v1EdgeConnectorsIdPatchRequest)

Update edge connector

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.EdgeConnectorsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    EdgeConnectorsApi apiInstance = new EdgeConnectorsApi(defaultClient);
    String id = "id_example"; // String | Edge connector ID
    V1EdgeConnectorsIdPatchRequest v1EdgeConnectorsIdPatchRequest = new V1EdgeConnectorsIdPatchRequest(); // V1EdgeConnectorsIdPatchRequest | 
    try {
      apiInstance.v1EdgeConnectorsIdPatch(id, v1EdgeConnectorsIdPatchRequest);
    } catch (ApiException e) {
      System.err.println("Exception when calling EdgeConnectorsApi#v1EdgeConnectorsIdPatch");
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
| **id** | **String**| Edge connector ID | |
| **v1EdgeConnectorsIdPatchRequest** | [**V1EdgeConnectorsIdPatchRequest**](V1EdgeConnectorsIdPatchRequest.md)|  | [optional] |

### Return type

null (empty response body)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Edge connector updated |  -  |
| **422** | Invalid parameters |  -  |

<a id="v1EdgeConnectorsPost"></a>
# **v1EdgeConnectorsPost**
> v1EdgeConnectorsPost(v1EdgeConnectorsPostRequest)

Create edge connector

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.EdgeConnectorsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    EdgeConnectorsApi apiInstance = new EdgeConnectorsApi(defaultClient);
    V1EdgeConnectorsPostRequest v1EdgeConnectorsPostRequest = new V1EdgeConnectorsPostRequest(); // V1EdgeConnectorsPostRequest | 
    try {
      apiInstance.v1EdgeConnectorsPost(v1EdgeConnectorsPostRequest);
    } catch (ApiException e) {
      System.err.println("Exception when calling EdgeConnectorsApi#v1EdgeConnectorsPost");
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
| **v1EdgeConnectorsPostRequest** | [**V1EdgeConnectorsPostRequest**](V1EdgeConnectorsPostRequest.md)|  | [optional] |

### Return type

null (empty response body)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | Edge connector created |  -  |
| **422** | Invalid parameters |  -  |


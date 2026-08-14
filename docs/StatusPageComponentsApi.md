# StatusPageComponentsApi

All URIs are relative to *https://api.rootly.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createStatusPageComponent**](StatusPageComponentsApi.md#createStatusPageComponent) | **POST** /v1/status-pages/{status_page_id}/components | Creates a status page component |
| [**deleteStatusPageComponent**](StatusPageComponentsApi.md#deleteStatusPageComponent) | **DELETE** /v1/components/{id} | Delete a status page component |
| [**getStatusPageComponent**](StatusPageComponentsApi.md#getStatusPageComponent) | **GET** /v1/components/{id} | Retrieves a status page component |
| [**listStatusPageComponents**](StatusPageComponentsApi.md#listStatusPageComponents) | **GET** /v1/status-pages/{status_page_id}/components | List status page components |
| [**updateStatusPageComponent**](StatusPageComponentsApi.md#updateStatusPageComponent) | **PUT** /v1/components/{id} | Update a status page component |


<a id="createStatusPageComponent"></a>
# **createStatusPageComponent**
> StatusPageComponentResponse createStatusPageComponent(statusPageId, newStatusPageComponent)

Creates a status page component

Creates a new status page component from provided data

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.StatusPageComponentsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    StatusPageComponentsApi apiInstance = new StatusPageComponentsApi(defaultClient);
    String statusPageId = "statusPageId_example"; // String | 
    NewStatusPageComponent newStatusPageComponent = new NewStatusPageComponent(); // NewStatusPageComponent | 
    try {
      StatusPageComponentResponse result = apiInstance.createStatusPageComponent(statusPageId, newStatusPageComponent);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling StatusPageComponentsApi#createStatusPageComponent");
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
| **statusPageId** | **String**|  | |
| **newStatusPageComponent** | [**NewStatusPageComponent**](NewStatusPageComponent.md)|  | |

### Return type

[**StatusPageComponentResponse**](StatusPageComponentResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | catalog-backed component created |  -  |
| **422** | invalid request |  -  |
| **401** | responds with unauthorized for invalid token |  -  |

<a id="deleteStatusPageComponent"></a>
# **deleteStatusPageComponent**
> deleteStatusPageComponent(id)

Delete a status page component

Delete a status page component

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.StatusPageComponentsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    StatusPageComponentsApi apiInstance = new StatusPageComponentsApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      apiInstance.deleteStatusPageComponent(id);
    } catch (ApiException e) {
      System.err.println("Exception when calling StatusPageComponentsApi#deleteStatusPageComponent");
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

null (empty response body)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | catalog-backed component detached, source and catalog left intact |  -  |

<a id="getStatusPageComponent"></a>
# **getStatusPageComponent**
> StatusPageComponentResponse getStatusPageComponent(id, include)

Retrieves a status page component

Retrieves a status page component

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.StatusPageComponentsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    StatusPageComponentsApi apiInstance = new StatusPageComponentsApi(defaultClient);
    String id = "id_example"; // String | 
    String include = "include_example"; // String | 
    try {
      StatusPageComponentResponse result = apiInstance.getStatusPageComponent(id, include);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling StatusPageComponentsApi#getStatusPageComponent");
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
| **include** | **String**|  | [optional] |

### Return type

[**StatusPageComponentResponse**](StatusPageComponentResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | success |  -  |
| **404** | responds with not found for another team&#39;s token |  -  |

<a id="listStatusPageComponents"></a>
# **listStatusPageComponents**
> StatusPageComponentList listStatusPageComponents(statusPageId, include, pageNumber, pageSize)

List status page components

List status page components

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.StatusPageComponentsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    StatusPageComponentsApi apiInstance = new StatusPageComponentsApi(defaultClient);
    String statusPageId = "statusPageId_example"; // String | 
    String include = "include_example"; // String | 
    Integer pageNumber = 56; // Integer | 
    Integer pageSize = 56; // Integer | 
    try {
      StatusPageComponentList result = apiInstance.listStatusPageComponents(statusPageId, include, pageNumber, pageSize);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling StatusPageComponentsApi#listStatusPageComponents");
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
| **statusPageId** | **String**|  | |
| **include** | **String**|  | [optional] |
| **pageNumber** | **Integer**|  | [optional] |
| **pageSize** | **Integer**|  | [optional] |

### Return type

[**StatusPageComponentList**](StatusPageComponentList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | success |  -  |

<a id="updateStatusPageComponent"></a>
# **updateStatusPageComponent**
> StatusPageComponentResponse updateStatusPageComponent(id, updateStatusPageComponent)

Update a status page component

Update a status page component

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.StatusPageComponentsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    StatusPageComponentsApi apiInstance = new StatusPageComponentsApi(defaultClient);
    String id = "id_example"; // String | 
    UpdateStatusPageComponent updateStatusPageComponent = new UpdateStatusPageComponent(); // UpdateStatusPageComponent | 
    try {
      StatusPageComponentResponse result = apiInstance.updateStatusPageComponent(id, updateStatusPageComponent);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling StatusPageComponentsApi#updateStatusPageComponent");
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
| **updateStatusPageComponent** | [**UpdateStatusPageComponent**](UpdateStatusPageComponent.md)|  | |

### Return type

[**StatusPageComponentResponse**](StatusPageComponentResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | catalog-backed component ignores name and description overrides |  -  |
| **422** | invalid position rejected |  -  |


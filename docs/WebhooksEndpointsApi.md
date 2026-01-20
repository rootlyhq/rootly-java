# WebhooksEndpointsApi

All URIs are relative to *https://api.rootly.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createWebhooksEndpoint**](WebhooksEndpointsApi.md#createWebhooksEndpoint) | **POST** /v1/webhooks/endpoints | Creates a webhook endpoint |
| [**deleteWebhooksEndpoint**](WebhooksEndpointsApi.md#deleteWebhooksEndpoint) | **DELETE** /v1/webhooks/endpoints/{id} | Delete a webhook endpoint |
| [**getWebhooksEndpoint**](WebhooksEndpointsApi.md#getWebhooksEndpoint) | **GET** /v1/webhooks/endpoints/{id} | Retrieves a webhook endpoint |
| [**listWebhooksEndpoints**](WebhooksEndpointsApi.md#listWebhooksEndpoints) | **GET** /v1/webhooks/endpoints | List webhook endpoints |
| [**updateWebhooksEndpoint**](WebhooksEndpointsApi.md#updateWebhooksEndpoint) | **PUT** /v1/webhooks/endpoints/{id} | Update a webhook endpoint |


<a id="createWebhooksEndpoint"></a>
# **createWebhooksEndpoint**
> WebhooksEndpointResponse createWebhooksEndpoint(newWebhooksEndpoint)

Creates a webhook endpoint

Creates a new webhook endpoint from provided data

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.WebhooksEndpointsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    WebhooksEndpointsApi apiInstance = new WebhooksEndpointsApi(defaultClient);
    NewWebhooksEndpoint newWebhooksEndpoint = new NewWebhooksEndpoint(); // NewWebhooksEndpoint | 
    try {
      WebhooksEndpointResponse result = apiInstance.createWebhooksEndpoint(newWebhooksEndpoint);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling WebhooksEndpointsApi#createWebhooksEndpoint");
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
| **newWebhooksEndpoint** | [**NewWebhooksEndpoint**](NewWebhooksEndpoint.md)|  | |

### Return type

[**WebhooksEndpointResponse**](WebhooksEndpointResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | webhooks_endpoint created |  -  |
| **422** | invalid request |  -  |
| **401** | responds with unauthorized for invalid token |  -  |

<a id="deleteWebhooksEndpoint"></a>
# **deleteWebhooksEndpoint**
> WebhooksEndpointResponse deleteWebhooksEndpoint(id)

Delete a webhook endpoint

Delete a specific webhook endpoint by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.WebhooksEndpointsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    WebhooksEndpointsApi apiInstance = new WebhooksEndpointsApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      WebhooksEndpointResponse result = apiInstance.deleteWebhooksEndpoint(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling WebhooksEndpointsApi#deleteWebhooksEndpoint");
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

[**WebhooksEndpointResponse**](WebhooksEndpointResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | webhooks_endpoint deleted |  -  |
| **404** | hidden endpoint not accessible |  -  |

<a id="getWebhooksEndpoint"></a>
# **getWebhooksEndpoint**
> WebhooksEndpointResponse getWebhooksEndpoint(id)

Retrieves a webhook endpoint

Retrieves a specific webhook endpoint by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.WebhooksEndpointsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    WebhooksEndpointsApi apiInstance = new WebhooksEndpointsApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      WebhooksEndpointResponse result = apiInstance.getWebhooksEndpoint(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling WebhooksEndpointsApi#getWebhooksEndpoint");
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

[**WebhooksEndpointResponse**](WebhooksEndpointResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | webhooks_endpoint found |  -  |
| **404** | hidden endpoint not accessible |  -  |

<a id="listWebhooksEndpoints"></a>
# **listWebhooksEndpoints**
> WebhooksEndpointList listWebhooksEndpoints(include, pageNumber, pageSize, filterSlug, filterName)

List webhook endpoints

List webhook endpoints

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.WebhooksEndpointsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    WebhooksEndpointsApi apiInstance = new WebhooksEndpointsApi(defaultClient);
    String include = "include_example"; // String | 
    Integer pageNumber = 56; // Integer | 
    Integer pageSize = 56; // Integer | 
    String filterSlug = "filterSlug_example"; // String | 
    String filterName = "filterName_example"; // String | 
    try {
      WebhooksEndpointList result = apiInstance.listWebhooksEndpoints(include, pageNumber, pageSize, filterSlug, filterName);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling WebhooksEndpointsApi#listWebhooksEndpoints");
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
| **filterSlug** | **String**|  | [optional] |
| **filterName** | **String**|  | [optional] |

### Return type

[**WebhooksEndpointList**](WebhooksEndpointList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | excludes hidden endpoints from listing |  -  |

<a id="updateWebhooksEndpoint"></a>
# **updateWebhooksEndpoint**
> WebhooksEndpointResponse updateWebhooksEndpoint(id, updateWebhooksEndpoint)

Update a webhook endpoint

Update a specific webhook endpoint by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.WebhooksEndpointsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    WebhooksEndpointsApi apiInstance = new WebhooksEndpointsApi(defaultClient);
    String id = "id_example"; // String | 
    UpdateWebhooksEndpoint updateWebhooksEndpoint = new UpdateWebhooksEndpoint(); // UpdateWebhooksEndpoint | 
    try {
      WebhooksEndpointResponse result = apiInstance.updateWebhooksEndpoint(id, updateWebhooksEndpoint);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling WebhooksEndpointsApi#updateWebhooksEndpoint");
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
| **updateWebhooksEndpoint** | [**UpdateWebhooksEndpoint**](UpdateWebhooksEndpoint.md)|  | |

### Return type

[**WebhooksEndpointResponse**](WebhooksEndpointResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | webhooks_endpoint updated |  -  |
| **404** | hidden endpoint not accessible |  -  |


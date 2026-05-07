# EdgeConnectorsApi

All URIs are relative to *https://api.rootly.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createEdgeConnector**](EdgeConnectorsApi.md#createEdgeConnector) | **POST** /v1/edge_connectors | Create edge connector |
| [**deleteEdgeConnector**](EdgeConnectorsApi.md#deleteEdgeConnector) | **DELETE** /v1/edge_connectors/{id} | Delete edge connector |
| [**getEdgeConnector**](EdgeConnectorsApi.md#getEdgeConnector) | **GET** /v1/edge_connectors/{id} | Show edge connector |
| [**listEdgeConnectors**](EdgeConnectorsApi.md#listEdgeConnectors) | **GET** /v1/edge_connectors | List edge connectors |
| [**updateEdgeConnector**](EdgeConnectorsApi.md#updateEdgeConnector) | **PATCH** /v1/edge_connectors/{id} | Update edge connector |


<a id="createEdgeConnector"></a>
# **createEdgeConnector**
> createEdgeConnector(createEdgeConnectorRequest)

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
    CreateEdgeConnectorRequest createEdgeConnectorRequest = new CreateEdgeConnectorRequest(); // CreateEdgeConnectorRequest | 
    try {
      apiInstance.createEdgeConnector(createEdgeConnectorRequest);
    } catch (ApiException e) {
      System.err.println("Exception when calling EdgeConnectorsApi#createEdgeConnector");
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
| **createEdgeConnectorRequest** | [**CreateEdgeConnectorRequest**](CreateEdgeConnectorRequest.md)|  | [optional] |

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

<a id="deleteEdgeConnector"></a>
# **deleteEdgeConnector**
> deleteEdgeConnector(id)

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
      apiInstance.deleteEdgeConnector(id);
    } catch (ApiException e) {
      System.err.println("Exception when calling EdgeConnectorsApi#deleteEdgeConnector");
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

<a id="getEdgeConnector"></a>
# **getEdgeConnector**
> getEdgeConnector(id)

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
      apiInstance.getEdgeConnector(id);
    } catch (ApiException e) {
      System.err.println("Exception when calling EdgeConnectorsApi#getEdgeConnector");
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

<a id="listEdgeConnectors"></a>
# **listEdgeConnectors**
> listEdgeConnectors(page, perPage, status, name)

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
      apiInstance.listEdgeConnectors(page, perPage, status, name);
    } catch (ApiException e) {
      System.err.println("Exception when calling EdgeConnectorsApi#listEdgeConnectors");
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

<a id="updateEdgeConnector"></a>
# **updateEdgeConnector**
> updateEdgeConnector(id, updateEdgeConnectorRequest)

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
    UpdateEdgeConnectorRequest updateEdgeConnectorRequest = new UpdateEdgeConnectorRequest(); // UpdateEdgeConnectorRequest | 
    try {
      apiInstance.updateEdgeConnector(id, updateEdgeConnectorRequest);
    } catch (ApiException e) {
      System.err.println("Exception when calling EdgeConnectorsApi#updateEdgeConnector");
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
| **updateEdgeConnectorRequest** | [**UpdateEdgeConnectorRequest**](UpdateEdgeConnectorRequest.md)|  | [optional] |

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


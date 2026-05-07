# EdgeConnectorActionsApi

All URIs are relative to *https://api.rootly.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createEdgeConnectorAction**](EdgeConnectorActionsApi.md#createEdgeConnectorAction) | **POST** /v1/edge_connectors/{edge_connector_id}/actions | Create edge connector action |
| [**deleteEdgeConnectorAction**](EdgeConnectorActionsApi.md#deleteEdgeConnectorAction) | **DELETE** /v1/edge_connectors/{edge_connector_id}/actions/{id} | Delete edge connector action |
| [**getEdgeConnectorAction**](EdgeConnectorActionsApi.md#getEdgeConnectorAction) | **GET** /v1/edge_connectors/{edge_connector_id}/actions/{id} | Show edge connector action |
| [**listEdgeConnectorActions**](EdgeConnectorActionsApi.md#listEdgeConnectorActions) | **GET** /v1/edge_connectors/{edge_connector_id}/actions | List edge connector actions |
| [**updateEdgeConnectorAction**](EdgeConnectorActionsApi.md#updateEdgeConnectorAction) | **PATCH** /v1/edge_connectors/{edge_connector_id}/actions/{id} | Update edge connector action |


<a id="createEdgeConnectorAction"></a>
# **createEdgeConnectorAction**
> createEdgeConnectorAction(edgeConnectorId, createEdgeConnectorActionRequest)

Create edge connector action

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.EdgeConnectorActionsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    EdgeConnectorActionsApi apiInstance = new EdgeConnectorActionsApi(defaultClient);
    String edgeConnectorId = "edgeConnectorId_example"; // String | Edge connector ID
    CreateEdgeConnectorActionRequest createEdgeConnectorActionRequest = new CreateEdgeConnectorActionRequest(); // CreateEdgeConnectorActionRequest | 
    try {
      apiInstance.createEdgeConnectorAction(edgeConnectorId, createEdgeConnectorActionRequest);
    } catch (ApiException e) {
      System.err.println("Exception when calling EdgeConnectorActionsApi#createEdgeConnectorAction");
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
| **edgeConnectorId** | **String**| Edge connector ID | |
| **createEdgeConnectorActionRequest** | [**CreateEdgeConnectorActionRequest**](CreateEdgeConnectorActionRequest.md)|  | [optional] |

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
| **201** | Action created |  -  |
| **422** | Invalid parameters |  -  |

<a id="deleteEdgeConnectorAction"></a>
# **deleteEdgeConnectorAction**
> deleteEdgeConnectorAction(edgeConnectorId, id)

Delete edge connector action

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.EdgeConnectorActionsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    EdgeConnectorActionsApi apiInstance = new EdgeConnectorActionsApi(defaultClient);
    String edgeConnectorId = "edgeConnectorId_example"; // String | Edge connector ID
    GetAlertFieldIdParameter id = new GetAlertFieldIdParameter(); // GetAlertFieldIdParameter | 
    try {
      apiInstance.deleteEdgeConnectorAction(edgeConnectorId, id);
    } catch (ApiException e) {
      System.err.println("Exception when calling EdgeConnectorActionsApi#deleteEdgeConnectorAction");
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
| **edgeConnectorId** | **String**| Edge connector ID | |
| **id** | [**GetAlertFieldIdParameter**](.md)|  | |

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
| **200** | Action deleted |  -  |

<a id="getEdgeConnectorAction"></a>
# **getEdgeConnectorAction**
> getEdgeConnectorAction(edgeConnectorId, id)

Show edge connector action

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.EdgeConnectorActionsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    EdgeConnectorActionsApi apiInstance = new EdgeConnectorActionsApi(defaultClient);
    String edgeConnectorId = "edgeConnectorId_example"; // String | Edge connector ID
    GetAlertFieldIdParameter id = new GetAlertFieldIdParameter(); // GetAlertFieldIdParameter | 
    try {
      apiInstance.getEdgeConnectorAction(edgeConnectorId, id);
    } catch (ApiException e) {
      System.err.println("Exception when calling EdgeConnectorActionsApi#getEdgeConnectorAction");
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
| **edgeConnectorId** | **String**| Edge connector ID | |
| **id** | [**GetAlertFieldIdParameter**](.md)|  | |

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
| **200** | Returns action details |  -  |
| **404** | Action not found |  -  |

<a id="listEdgeConnectorActions"></a>
# **listEdgeConnectorActions**
> listEdgeConnectorActions(edgeConnectorId)

List edge connector actions

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.EdgeConnectorActionsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    EdgeConnectorActionsApi apiInstance = new EdgeConnectorActionsApi(defaultClient);
    String edgeConnectorId = "edgeConnectorId_example"; // String | Edge connector ID
    try {
      apiInstance.listEdgeConnectorActions(edgeConnectorId);
    } catch (ApiException e) {
      System.err.println("Exception when calling EdgeConnectorActionsApi#listEdgeConnectorActions");
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
| **edgeConnectorId** | **String**| Edge connector ID | |

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
| **200** | Returns list of actions |  -  |
| **404** | Edge connector not found |  -  |

<a id="updateEdgeConnectorAction"></a>
# **updateEdgeConnectorAction**
> updateEdgeConnectorAction(edgeConnectorId, id, updateEdgeConnectorActionRequest)

Update edge connector action

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.EdgeConnectorActionsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    EdgeConnectorActionsApi apiInstance = new EdgeConnectorActionsApi(defaultClient);
    String edgeConnectorId = "edgeConnectorId_example"; // String | Edge connector ID
    GetAlertFieldIdParameter id = new GetAlertFieldIdParameter(); // GetAlertFieldIdParameter | 
    UpdateEdgeConnectorActionRequest updateEdgeConnectorActionRequest = new UpdateEdgeConnectorActionRequest(); // UpdateEdgeConnectorActionRequest | 
    try {
      apiInstance.updateEdgeConnectorAction(edgeConnectorId, id, updateEdgeConnectorActionRequest);
    } catch (ApiException e) {
      System.err.println("Exception when calling EdgeConnectorActionsApi#updateEdgeConnectorAction");
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
| **edgeConnectorId** | **String**| Edge connector ID | |
| **id** | [**GetAlertFieldIdParameter**](.md)|  | |
| **updateEdgeConnectorActionRequest** | [**UpdateEdgeConnectorActionRequest**](UpdateEdgeConnectorActionRequest.md)|  | [optional] |

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
| **200** | Action updated |  -  |


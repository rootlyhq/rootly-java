# EdgeConnectorActionsApi

All URIs are relative to *https://api.rootly.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**v1EdgeConnectorsEdgeConnectorIdActionsGet**](EdgeConnectorActionsApi.md#v1EdgeConnectorsEdgeConnectorIdActionsGet) | **GET** /v1/edge_connectors/{edge_connector_id}/actions | List edge connector actions |
| [**v1EdgeConnectorsEdgeConnectorIdActionsIdDelete**](EdgeConnectorActionsApi.md#v1EdgeConnectorsEdgeConnectorIdActionsIdDelete) | **DELETE** /v1/edge_connectors/{edge_connector_id}/actions/{id} | Delete edge connector action |
| [**v1EdgeConnectorsEdgeConnectorIdActionsIdGet**](EdgeConnectorActionsApi.md#v1EdgeConnectorsEdgeConnectorIdActionsIdGet) | **GET** /v1/edge_connectors/{edge_connector_id}/actions/{id} | Show edge connector action |
| [**v1EdgeConnectorsEdgeConnectorIdActionsIdPatch**](EdgeConnectorActionsApi.md#v1EdgeConnectorsEdgeConnectorIdActionsIdPatch) | **PATCH** /v1/edge_connectors/{edge_connector_id}/actions/{id} | Update edge connector action |
| [**v1EdgeConnectorsEdgeConnectorIdActionsPost**](EdgeConnectorActionsApi.md#v1EdgeConnectorsEdgeConnectorIdActionsPost) | **POST** /v1/edge_connectors/{edge_connector_id}/actions | Create edge connector action |


<a id="v1EdgeConnectorsEdgeConnectorIdActionsGet"></a>
# **v1EdgeConnectorsEdgeConnectorIdActionsGet**
> v1EdgeConnectorsEdgeConnectorIdActionsGet(edgeConnectorId)

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
      apiInstance.v1EdgeConnectorsEdgeConnectorIdActionsGet(edgeConnectorId);
    } catch (ApiException e) {
      System.err.println("Exception when calling EdgeConnectorActionsApi#v1EdgeConnectorsEdgeConnectorIdActionsGet");
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

<a id="v1EdgeConnectorsEdgeConnectorIdActionsIdDelete"></a>
# **v1EdgeConnectorsEdgeConnectorIdActionsIdDelete**
> v1EdgeConnectorsEdgeConnectorIdActionsIdDelete(edgeConnectorId, id)

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
      apiInstance.v1EdgeConnectorsEdgeConnectorIdActionsIdDelete(edgeConnectorId, id);
    } catch (ApiException e) {
      System.err.println("Exception when calling EdgeConnectorActionsApi#v1EdgeConnectorsEdgeConnectorIdActionsIdDelete");
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

<a id="v1EdgeConnectorsEdgeConnectorIdActionsIdGet"></a>
# **v1EdgeConnectorsEdgeConnectorIdActionsIdGet**
> v1EdgeConnectorsEdgeConnectorIdActionsIdGet(edgeConnectorId, id)

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
      apiInstance.v1EdgeConnectorsEdgeConnectorIdActionsIdGet(edgeConnectorId, id);
    } catch (ApiException e) {
      System.err.println("Exception when calling EdgeConnectorActionsApi#v1EdgeConnectorsEdgeConnectorIdActionsIdGet");
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

<a id="v1EdgeConnectorsEdgeConnectorIdActionsIdPatch"></a>
# **v1EdgeConnectorsEdgeConnectorIdActionsIdPatch**
> v1EdgeConnectorsEdgeConnectorIdActionsIdPatch(edgeConnectorId, id, v1EdgeConnectorsEdgeConnectorIdActionsIdPatchRequest)

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
    V1EdgeConnectorsEdgeConnectorIdActionsIdPatchRequest v1EdgeConnectorsEdgeConnectorIdActionsIdPatchRequest = new V1EdgeConnectorsEdgeConnectorIdActionsIdPatchRequest(); // V1EdgeConnectorsEdgeConnectorIdActionsIdPatchRequest | 
    try {
      apiInstance.v1EdgeConnectorsEdgeConnectorIdActionsIdPatch(edgeConnectorId, id, v1EdgeConnectorsEdgeConnectorIdActionsIdPatchRequest);
    } catch (ApiException e) {
      System.err.println("Exception when calling EdgeConnectorActionsApi#v1EdgeConnectorsEdgeConnectorIdActionsIdPatch");
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
| **v1EdgeConnectorsEdgeConnectorIdActionsIdPatchRequest** | [**V1EdgeConnectorsEdgeConnectorIdActionsIdPatchRequest**](V1EdgeConnectorsEdgeConnectorIdActionsIdPatchRequest.md)|  | [optional] |

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

<a id="v1EdgeConnectorsEdgeConnectorIdActionsPost"></a>
# **v1EdgeConnectorsEdgeConnectorIdActionsPost**
> v1EdgeConnectorsEdgeConnectorIdActionsPost(edgeConnectorId, v1EdgeConnectorsEdgeConnectorIdActionsPostRequest)

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
    V1EdgeConnectorsEdgeConnectorIdActionsPostRequest v1EdgeConnectorsEdgeConnectorIdActionsPostRequest = new V1EdgeConnectorsEdgeConnectorIdActionsPostRequest(); // V1EdgeConnectorsEdgeConnectorIdActionsPostRequest | 
    try {
      apiInstance.v1EdgeConnectorsEdgeConnectorIdActionsPost(edgeConnectorId, v1EdgeConnectorsEdgeConnectorIdActionsPostRequest);
    } catch (ApiException e) {
      System.err.println("Exception when calling EdgeConnectorActionsApi#v1EdgeConnectorsEdgeConnectorIdActionsPost");
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
| **v1EdgeConnectorsEdgeConnectorIdActionsPostRequest** | [**V1EdgeConnectorsEdgeConnectorIdActionsPostRequest**](V1EdgeConnectorsEdgeConnectorIdActionsPostRequest.md)|  | [optional] |

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


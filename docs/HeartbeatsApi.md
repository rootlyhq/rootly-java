# HeartbeatsApi

All URIs are relative to *https://api.rootly.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createHeartbeat**](HeartbeatsApi.md#createHeartbeat) | **POST** /v1/heartbeats | Creates a heartbeat |
| [**deleteHeartbeat**](HeartbeatsApi.md#deleteHeartbeat) | **DELETE** /v1/heartbeats/{id} | Delete a heartbeat |
| [**getHeartbeat**](HeartbeatsApi.md#getHeartbeat) | **GET** /v1/heartbeats/{id} | Retrieves a heartbeat |
| [**listHeartbeats**](HeartbeatsApi.md#listHeartbeats) | **GET** /v1/heartbeats | List heartbeats |
| [**pingHeartbeat**](HeartbeatsApi.md#pingHeartbeat) | **POST** /v1/heartbeats/{heartbeat_id}/ping | Ping a heartbeat |
| [**updateHeartbeat**](HeartbeatsApi.md#updateHeartbeat) | **PUT** /v1/heartbeats/{id} | Update a heartbeat |


<a id="createHeartbeat"></a>
# **createHeartbeat**
> HeartbeatResponse createHeartbeat(newHeartbeat)

Creates a heartbeat

Creates a new heartbeat from provided data

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.HeartbeatsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    HeartbeatsApi apiInstance = new HeartbeatsApi(defaultClient);
    NewHeartbeat newHeartbeat = new NewHeartbeat(); // NewHeartbeat | 
    try {
      HeartbeatResponse result = apiInstance.createHeartbeat(newHeartbeat);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling HeartbeatsApi#createHeartbeat");
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
| **newHeartbeat** | [**NewHeartbeat**](NewHeartbeat.md)|  | |

### Return type

[**HeartbeatResponse**](HeartbeatResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | heartbeat created |  -  |
| **422** | interval less than 60 seconds |  -  |
| **401** | responds with unauthorized for invalid token |  -  |

<a id="deleteHeartbeat"></a>
# **deleteHeartbeat**
> HeartbeatResponse deleteHeartbeat(id)

Delete a heartbeat

Delete a specific heartbeat by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.HeartbeatsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    HeartbeatsApi apiInstance = new HeartbeatsApi(defaultClient);
    GetAlertFieldIdParameter id = new GetAlertFieldIdParameter(); // GetAlertFieldIdParameter | 
    try {
      HeartbeatResponse result = apiInstance.deleteHeartbeat(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling HeartbeatsApi#deleteHeartbeat");
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
| **id** | [**GetAlertFieldIdParameter**](.md)|  | |

### Return type

[**HeartbeatResponse**](HeartbeatResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | heartbeat deleted |  -  |
| **404** | resource not found |  -  |

<a id="getHeartbeat"></a>
# **getHeartbeat**
> HeartbeatResponse getHeartbeat(id)

Retrieves a heartbeat

Retrieves a specific heartbeat by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.HeartbeatsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    HeartbeatsApi apiInstance = new HeartbeatsApi(defaultClient);
    GetAlertFieldIdParameter id = new GetAlertFieldIdParameter(); // GetAlertFieldIdParameter | 
    try {
      HeartbeatResponse result = apiInstance.getHeartbeat(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling HeartbeatsApi#getHeartbeat");
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
| **id** | [**GetAlertFieldIdParameter**](.md)|  | |

### Return type

[**HeartbeatResponse**](HeartbeatResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | heartbeat found by slug |  -  |
| **404** | resource not found |  -  |

<a id="listHeartbeats"></a>
# **listHeartbeats**
> HeartbeatList listHeartbeats(include, pageNumber, pageSize, filterSearch, filterSlug, filterName, filterCreatedAtGt, filterCreatedAtGte, filterCreatedAtLt, filterCreatedAtLte)

List heartbeats

List heartbeats

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.HeartbeatsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    HeartbeatsApi apiInstance = new HeartbeatsApi(defaultClient);
    String include = "include_example"; // String | 
    Integer pageNumber = 56; // Integer | 
    Integer pageSize = 56; // Integer | 
    String filterSearch = "filterSearch_example"; // String | 
    String filterSlug = "filterSlug_example"; // String | 
    String filterName = "filterName_example"; // String | 
    String filterCreatedAtGt = "filterCreatedAtGt_example"; // String | 
    String filterCreatedAtGte = "filterCreatedAtGte_example"; // String | 
    String filterCreatedAtLt = "filterCreatedAtLt_example"; // String | 
    String filterCreatedAtLte = "filterCreatedAtLte_example"; // String | 
    try {
      HeartbeatList result = apiInstance.listHeartbeats(include, pageNumber, pageSize, filterSearch, filterSlug, filterName, filterCreatedAtGt, filterCreatedAtGte, filterCreatedAtLt, filterCreatedAtLte);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling HeartbeatsApi#listHeartbeats");
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
| **filterSearch** | **String**|  | [optional] |
| **filterSlug** | **String**|  | [optional] |
| **filterName** | **String**|  | [optional] |
| **filterCreatedAtGt** | **String**|  | [optional] |
| **filterCreatedAtGte** | **String**|  | [optional] |
| **filterCreatedAtLt** | **String**|  | [optional] |
| **filterCreatedAtLte** | **String**|  | [optional] |

### Return type

[**HeartbeatList**](HeartbeatList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | filter by name |  -  |

<a id="pingHeartbeat"></a>
# **pingHeartbeat**
> pingHeartbeat(heartbeatId)

Ping a heartbeat

Ping a specific heartbeat by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.HeartbeatsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    HeartbeatsApi apiInstance = new HeartbeatsApi(defaultClient);
    String heartbeatId = "heartbeatId_example"; // String | 
    try {
      apiInstance.pingHeartbeat(heartbeatId);
    } catch (ApiException e) {
      System.err.println("Exception when calling HeartbeatsApi#pingHeartbeat");
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
| **heartbeatId** | **String**|  | |

### Return type

null (empty response body)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **204** | create ping |  -  |
| **404** | resource not found |  -  |

<a id="updateHeartbeat"></a>
# **updateHeartbeat**
> HeartbeatResponse updateHeartbeat(id, updateHeartbeat)

Update a heartbeat

Update a specific heartbeat by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.HeartbeatsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    HeartbeatsApi apiInstance = new HeartbeatsApi(defaultClient);
    GetAlertFieldIdParameter id = new GetAlertFieldIdParameter(); // GetAlertFieldIdParameter | 
    UpdateHeartbeat updateHeartbeat = new UpdateHeartbeat(); // UpdateHeartbeat | 
    try {
      HeartbeatResponse result = apiInstance.updateHeartbeat(id, updateHeartbeat);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling HeartbeatsApi#updateHeartbeat");
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
| **id** | [**GetAlertFieldIdParameter**](.md)|  | |
| **updateHeartbeat** | [**UpdateHeartbeat**](UpdateHeartbeat.md)|  | |

### Return type

[**HeartbeatResponse**](HeartbeatResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | heartbeat updated |  -  |
| **404** | resource not found |  -  |
| **422** | invalid enum value |  -  |


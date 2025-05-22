# AlertEventsApi

All URIs are relative to *https://api.rootly.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createAlertEvent**](AlertEventsApi.md#createAlertEvent) | **POST** /v1/alerts/{alert_id}/events | Create alert event |
| [**deleteAlertEvent**](AlertEventsApi.md#deleteAlertEvent) | **DELETE** /v1/alert_events/{id} | Delete alert event |
| [**getAlertEvent**](AlertEventsApi.md#getAlertEvent) | **GET** /v1/alert_events/{id} | Retrieve alert event |
| [**listAlertEvents**](AlertEventsApi.md#listAlertEvents) | **GET** /v1/alerts/{alert_id}/events | List alert events |
| [**updateAlertEvent**](AlertEventsApi.md#updateAlertEvent) | **PATCH** /v1/alert_events/{id} | Update alert event |


<a id="createAlertEvent"></a>
# **createAlertEvent**
> AlertEventResponse createAlertEvent(alertId, newAlertEvent)

Create alert event

Creates a new alert event

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.AlertEventsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    AlertEventsApi apiInstance = new AlertEventsApi(defaultClient);
    String alertId = "alertId_example"; // String | 
    NewAlertEvent newAlertEvent = new NewAlertEvent(); // NewAlertEvent | 
    try {
      AlertEventResponse result = apiInstance.createAlertEvent(alertId, newAlertEvent);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AlertEventsApi#createAlertEvent");
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
| **alertId** | **String**|  | |
| **newAlertEvent** | [**NewAlertEvent**](NewAlertEvent.md)|  | [optional] |

### Return type

[**AlertEventResponse**](AlertEventResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | alert event created with Rootly bot user |  -  |
| **422** | invalid request |  -  |

<a id="deleteAlertEvent"></a>
# **deleteAlertEvent**
> deleteAlertEvent(id)

Delete alert event

Deletes a specific alert event

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.AlertEventsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    AlertEventsApi apiInstance = new AlertEventsApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      apiInstance.deleteAlertEvent(id);
    } catch (ApiException e) {
      System.err.println("Exception when calling AlertEventsApi#deleteAlertEvent");
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
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | alert event deleted |  -  |
| **404** | alert event not found |  -  |

<a id="getAlertEvent"></a>
# **getAlertEvent**
> AlertEventResponse getAlertEvent(id)

Retrieve alert event

Retrieves a specific alert_event by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.AlertEventsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    AlertEventsApi apiInstance = new AlertEventsApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      AlertEventResponse result = apiInstance.getAlertEvent(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AlertEventsApi#getAlertEvent");
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

[**AlertEventResponse**](AlertEventResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | alert_event found |  -  |
| **404** | alert_event not found |  -  |

<a id="listAlertEvents"></a>
# **listAlertEvents**
> AlertEventList listAlertEvents(alertId, include, pageNumber, pageSize, filterKind, filterAction)

List alert events

List alert_events

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.AlertEventsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    AlertEventsApi apiInstance = new AlertEventsApi(defaultClient);
    String alertId = "alertId_example"; // String | 
    String include = "include_example"; // String | 
    Integer pageNumber = 56; // Integer | 
    Integer pageSize = 56; // Integer | 
    String filterKind = "filterKind_example"; // String | 
    String filterAction = "filterAction_example"; // String | 
    try {
      AlertEventList result = apiInstance.listAlertEvents(alertId, include, pageNumber, pageSize, filterKind, filterAction);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AlertEventsApi#listAlertEvents");
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
| **alertId** | **String**|  | |
| **include** | **String**|  | [optional] |
| **pageNumber** | **Integer**|  | [optional] |
| **pageSize** | **Integer**|  | [optional] |
| **filterKind** | **String**|  | [optional] |
| **filterAction** | **String**|  | [optional] |

### Return type

[**AlertEventList**](AlertEventList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | success |  -  |

<a id="updateAlertEvent"></a>
# **updateAlertEvent**
> AlertEventResponse updateAlertEvent(id, updateAlertEvent)

Update alert event

Updates a specific alert event

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.AlertEventsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    AlertEventsApi apiInstance = new AlertEventsApi(defaultClient);
    String id = "id_example"; // String | 
    UpdateAlertEvent updateAlertEvent = new UpdateAlertEvent(); // UpdateAlertEvent | 
    try {
      AlertEventResponse result = apiInstance.updateAlertEvent(id, updateAlertEvent);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AlertEventsApi#updateAlertEvent");
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
| **updateAlertEvent** | [**UpdateAlertEvent**](UpdateAlertEvent.md)|  | [optional] |

### Return type

[**AlertEventResponse**](AlertEventResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | alert event updated |  -  |
| **422** | invalid request |  -  |


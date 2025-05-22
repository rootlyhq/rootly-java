# IncidentStatusPageEventsApi

All URIs are relative to *https://api.rootly.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createIncidentStatusPage**](IncidentStatusPageEventsApi.md#createIncidentStatusPage) | **POST** /v1/incidents/{incident_id}/status-page-events | Creates an incident status page event |
| [**deleteIncidentStatusPage**](IncidentStatusPageEventsApi.md#deleteIncidentStatusPage) | **DELETE** /v1/status-page-events/{id} | Delete an incident status page event |
| [**getIncidentStatusPages**](IncidentStatusPageEventsApi.md#getIncidentStatusPages) | **GET** /v1/status-page-events/{id} | Retrieves an incident status page event |
| [**listIncidentStatusPages**](IncidentStatusPageEventsApi.md#listIncidentStatusPages) | **GET** /v1/incidents/{incident_id}/status-page-events | List incident status page events |
| [**updateIncidentStatusPage**](IncidentStatusPageEventsApi.md#updateIncidentStatusPage) | **PUT** /v1/status-page-events/{id} | Update an incident status page event |


<a id="createIncidentStatusPage"></a>
# **createIncidentStatusPage**
> IncidentStatusPageEventResponse createIncidentStatusPage(incidentId, newIncidentStatusPageEvent)

Creates an incident status page event

Creates a new event from provided data

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.IncidentStatusPageEventsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    IncidentStatusPageEventsApi apiInstance = new IncidentStatusPageEventsApi(defaultClient);
    String incidentId = "incidentId_example"; // String | 
    NewIncidentStatusPageEvent newIncidentStatusPageEvent = new NewIncidentStatusPageEvent(); // NewIncidentStatusPageEvent | 
    try {
      IncidentStatusPageEventResponse result = apiInstance.createIncidentStatusPage(incidentId, newIncidentStatusPageEvent);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling IncidentStatusPageEventsApi#createIncidentStatusPage");
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
| **incidentId** | **String**|  | |
| **newIncidentStatusPageEvent** | [**NewIncidentStatusPageEvent**](NewIncidentStatusPageEvent.md)|  | |

### Return type

[**IncidentStatusPageEventResponse**](IncidentStatusPageEventResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | incident_status_page_event created |  -  |
| **422** | invalid request |  -  |
| **401** | responds with unauthorized for invalid token |  -  |

<a id="deleteIncidentStatusPage"></a>
# **deleteIncidentStatusPage**
> IncidentStatusPageEventResponse deleteIncidentStatusPage(id)

Delete an incident status page event

Delete a specific incident status page event by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.IncidentStatusPageEventsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    IncidentStatusPageEventsApi apiInstance = new IncidentStatusPageEventsApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      IncidentStatusPageEventResponse result = apiInstance.deleteIncidentStatusPage(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling IncidentStatusPageEventsApi#deleteIncidentStatusPage");
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

[**IncidentStatusPageEventResponse**](IncidentStatusPageEventResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | incident_status_page_event deleted |  -  |
| **404** | resource not found |  -  |

<a id="getIncidentStatusPages"></a>
# **getIncidentStatusPages**
> IncidentStatusPageEventResponse getIncidentStatusPages(id)

Retrieves an incident status page event

Retrieves a specific incident_status_page_event by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.IncidentStatusPageEventsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    IncidentStatusPageEventsApi apiInstance = new IncidentStatusPageEventsApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      IncidentStatusPageEventResponse result = apiInstance.getIncidentStatusPages(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling IncidentStatusPageEventsApi#getIncidentStatusPages");
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

[**IncidentStatusPageEventResponse**](IncidentStatusPageEventResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | incident_status_page_event found |  -  |
| **404** | resource not found |  -  |

<a id="listIncidentStatusPages"></a>
# **listIncidentStatusPages**
> IncidentStatusPageEventList listIncidentStatusPages(incidentId, include, pageNumber, pageSize)

List incident status page events

List incident status page events

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.IncidentStatusPageEventsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    IncidentStatusPageEventsApi apiInstance = new IncidentStatusPageEventsApi(defaultClient);
    String incidentId = "incidentId_example"; // String | 
    String include = "include_example"; // String | 
    Integer pageNumber = 56; // Integer | 
    Integer pageSize = 56; // Integer | 
    try {
      IncidentStatusPageEventList result = apiInstance.listIncidentStatusPages(incidentId, include, pageNumber, pageSize);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling IncidentStatusPageEventsApi#listIncidentStatusPages");
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
| **incidentId** | **String**|  | |
| **include** | **String**|  | [optional] |
| **pageNumber** | **Integer**|  | [optional] |
| **pageSize** | **Integer**|  | [optional] |

### Return type

[**IncidentStatusPageEventList**](IncidentStatusPageEventList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | success |  -  |

<a id="updateIncidentStatusPage"></a>
# **updateIncidentStatusPage**
> IncidentStatusPageEventResponse updateIncidentStatusPage(id, updateIncidentStatusPageEvent)

Update an incident status page event

Update a specific incident status page event by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.IncidentStatusPageEventsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    IncidentStatusPageEventsApi apiInstance = new IncidentStatusPageEventsApi(defaultClient);
    String id = "id_example"; // String | 
    UpdateIncidentStatusPageEvent updateIncidentStatusPageEvent = new UpdateIncidentStatusPageEvent(); // UpdateIncidentStatusPageEvent | 
    try {
      IncidentStatusPageEventResponse result = apiInstance.updateIncidentStatusPage(id, updateIncidentStatusPageEvent);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling IncidentStatusPageEventsApi#updateIncidentStatusPage");
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
| **updateIncidentStatusPageEvent** | [**UpdateIncidentStatusPageEvent**](UpdateIncidentStatusPageEvent.md)|  | |

### Return type

[**IncidentStatusPageEventResponse**](IncidentStatusPageEventResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | incident_status_page_event updated |  -  |
| **404** | resource not found |  -  |


# IncidentEventsApi

All URIs are relative to *https://api.rootly.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createIncidentEvent**](IncidentEventsApi.md#createIncidentEvent) | **POST** /v1/incidents/{incident_id}/events | Creates an incident event |
| [**deleteIncidentEvent**](IncidentEventsApi.md#deleteIncidentEvent) | **DELETE** /v1/events/{id} | Delete an incident event |
| [**getIncidentEvents**](IncidentEventsApi.md#getIncidentEvents) | **GET** /v1/events/{id} | Retrieves an incident event |
| [**listIncidentEvents**](IncidentEventsApi.md#listIncidentEvents) | **GET** /v1/incidents/{incident_id}/events | List incident events |
| [**updateIncidentEvent**](IncidentEventsApi.md#updateIncidentEvent) | **PUT** /v1/events/{id} | Update an incident event |


<a id="createIncidentEvent"></a>
# **createIncidentEvent**
> IncidentEventResponse createIncidentEvent(incidentId, newIncidentEvent)

Creates an incident event

Creates a new event from provided data

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.IncidentEventsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    IncidentEventsApi apiInstance = new IncidentEventsApi(defaultClient);
    String incidentId = "incidentId_example"; // String | 
    NewIncidentEvent newIncidentEvent = new NewIncidentEvent(); // NewIncidentEvent | 
    try {
      IncidentEventResponse result = apiInstance.createIncidentEvent(incidentId, newIncidentEvent);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling IncidentEventsApi#createIncidentEvent");
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
| **newIncidentEvent** | [**NewIncidentEvent**](NewIncidentEvent.md)|  | |

### Return type

[**IncidentEventResponse**](IncidentEventResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | incident_event created |  -  |
| **422** | invalid request |  -  |
| **401** | responds with unauthorized for invalid token |  -  |

<a id="deleteIncidentEvent"></a>
# **deleteIncidentEvent**
> IncidentEventResponse deleteIncidentEvent(id)

Delete an incident event

Delete a specific incident event by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.IncidentEventsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    IncidentEventsApi apiInstance = new IncidentEventsApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      IncidentEventResponse result = apiInstance.deleteIncidentEvent(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling IncidentEventsApi#deleteIncidentEvent");
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

[**IncidentEventResponse**](IncidentEventResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | incident_event deleted |  -  |
| **404** | resource not found |  -  |

<a id="getIncidentEvents"></a>
# **getIncidentEvents**
> IncidentEventResponse getIncidentEvents(id)

Retrieves an incident event

Retrieves a specific incident_event by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.IncidentEventsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    IncidentEventsApi apiInstance = new IncidentEventsApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      IncidentEventResponse result = apiInstance.getIncidentEvents(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling IncidentEventsApi#getIncidentEvents");
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

[**IncidentEventResponse**](IncidentEventResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | incident_event found |  -  |
| **404** | resource not found |  -  |

<a id="listIncidentEvents"></a>
# **listIncidentEvents**
> IncidentEventList listIncidentEvents(incidentId, include, pageNumber, pageSize)

List incident events

List incident events

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.IncidentEventsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    IncidentEventsApi apiInstance = new IncidentEventsApi(defaultClient);
    String incidentId = "incidentId_example"; // String | 
    String include = "include_example"; // String | 
    Integer pageNumber = 56; // Integer | 
    Integer pageSize = 56; // Integer | 
    try {
      IncidentEventList result = apiInstance.listIncidentEvents(incidentId, include, pageNumber, pageSize);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling IncidentEventsApi#listIncidentEvents");
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

[**IncidentEventList**](IncidentEventList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | success |  -  |

<a id="updateIncidentEvent"></a>
# **updateIncidentEvent**
> IncidentEventResponse updateIncidentEvent(id, updateIncidentEvent)

Update an incident event

Update a specific incident event by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.IncidentEventsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    IncidentEventsApi apiInstance = new IncidentEventsApi(defaultClient);
    String id = "id_example"; // String | 
    UpdateIncidentEvent updateIncidentEvent = new UpdateIncidentEvent(); // UpdateIncidentEvent | 
    try {
      IncidentEventResponse result = apiInstance.updateIncidentEvent(id, updateIncidentEvent);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling IncidentEventsApi#updateIncidentEvent");
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
| **updateIncidentEvent** | [**UpdateIncidentEvent**](UpdateIncidentEvent.md)|  | |

### Return type

[**IncidentEventResponse**](IncidentEventResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | incident_event updated |  -  |
| **404** | resource not found |  -  |


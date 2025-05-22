# IncidentEventServicesApi

All URIs are relative to *https://api.rootly.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createIncidentEventService**](IncidentEventServicesApi.md#createIncidentEventService) | **POST** /v1/events/{incident_event_id}/services | Creates an incident event service |
| [**deleteIncidentEventService**](IncidentEventServicesApi.md#deleteIncidentEventService) | **DELETE** /v1/incident_event_services/{id} | Delete an incident event functionalitu |
| [**getIncidentEventServices**](IncidentEventServicesApi.md#getIncidentEventServices) | **GET** /v1/incident_event_services/{id} | Retrieves an incident event service |
| [**listIncidentEventServices**](IncidentEventServicesApi.md#listIncidentEventServices) | **GET** /v1/events/{incident_event_id}/services | List incident event services |
| [**updateIncidentEventService**](IncidentEventServicesApi.md#updateIncidentEventService) | **PUT** /v1/incident_event_services/{id} | Update an incident event |


<a id="createIncidentEventService"></a>
# **createIncidentEventService**
> IncidentEventServiceResponse createIncidentEventService(incidentEventId, newIncidentEventService)

Creates an incident event service

Creates a new event service from provided data

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.IncidentEventServicesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    IncidentEventServicesApi apiInstance = new IncidentEventServicesApi(defaultClient);
    String incidentEventId = "incidentEventId_example"; // String | 
    NewIncidentEventService newIncidentEventService = new NewIncidentEventService(); // NewIncidentEventService | 
    try {
      IncidentEventServiceResponse result = apiInstance.createIncidentEventService(incidentEventId, newIncidentEventService);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling IncidentEventServicesApi#createIncidentEventService");
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
| **incidentEventId** | **String**|  | |
| **newIncidentEventService** | [**NewIncidentEventService**](NewIncidentEventService.md)|  | |

### Return type

[**IncidentEventServiceResponse**](IncidentEventServiceResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | incident_event_service created |  -  |
| **422** | invalid request |  -  |
| **401** | responds with unauthorized for invalid token |  -  |

<a id="deleteIncidentEventService"></a>
# **deleteIncidentEventService**
> IncidentEventServiceResponse deleteIncidentEventService(id)

Delete an incident event functionalitu

Delete a specific incident event service by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.IncidentEventServicesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    IncidentEventServicesApi apiInstance = new IncidentEventServicesApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      IncidentEventServiceResponse result = apiInstance.deleteIncidentEventService(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling IncidentEventServicesApi#deleteIncidentEventService");
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

[**IncidentEventServiceResponse**](IncidentEventServiceResponse.md)

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

<a id="getIncidentEventServices"></a>
# **getIncidentEventServices**
> IncidentEventServiceResponse getIncidentEventServices(id)

Retrieves an incident event service

Retrieves a specific incident_event_service by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.IncidentEventServicesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    IncidentEventServicesApi apiInstance = new IncidentEventServicesApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      IncidentEventServiceResponse result = apiInstance.getIncidentEventServices(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling IncidentEventServicesApi#getIncidentEventServices");
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

[**IncidentEventServiceResponse**](IncidentEventServiceResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | incident_event_service found |  -  |
| **404** | resource not found |  -  |

<a id="listIncidentEventServices"></a>
# **listIncidentEventServices**
> IncidentEventServiceList listIncidentEventServices(incidentEventId, include, pageNumber, pageSize)

List incident event services

List incident event services

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.IncidentEventServicesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    IncidentEventServicesApi apiInstance = new IncidentEventServicesApi(defaultClient);
    String incidentEventId = "incidentEventId_example"; // String | 
    String include = "include_example"; // String | 
    Integer pageNumber = 56; // Integer | 
    Integer pageSize = 56; // Integer | 
    try {
      IncidentEventServiceList result = apiInstance.listIncidentEventServices(incidentEventId, include, pageNumber, pageSize);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling IncidentEventServicesApi#listIncidentEventServices");
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
| **incidentEventId** | **String**|  | |
| **include** | **String**|  | [optional] |
| **pageNumber** | **Integer**|  | [optional] |
| **pageSize** | **Integer**|  | [optional] |

### Return type

[**IncidentEventServiceList**](IncidentEventServiceList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | success |  -  |

<a id="updateIncidentEventService"></a>
# **updateIncidentEventService**
> IncidentEventServiceResponse updateIncidentEventService(id, updateIncidentEventService)

Update an incident event

Update a specific incident event service by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.IncidentEventServicesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    IncidentEventServicesApi apiInstance = new IncidentEventServicesApi(defaultClient);
    String id = "id_example"; // String | 
    UpdateIncidentEventService updateIncidentEventService = new UpdateIncidentEventService(); // UpdateIncidentEventService | 
    try {
      IncidentEventServiceResponse result = apiInstance.updateIncidentEventService(id, updateIncidentEventService);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling IncidentEventServicesApi#updateIncidentEventService");
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
| **updateIncidentEventService** | [**UpdateIncidentEventService**](UpdateIncidentEventService.md)|  | |

### Return type

[**IncidentEventServiceResponse**](IncidentEventServiceResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | incident_event_service updated |  -  |
| **404** | resource not found |  -  |


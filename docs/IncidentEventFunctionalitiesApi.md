# IncidentEventFunctionalitiesApi

All URIs are relative to *https://api.rootly.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createIncidentEventFunctionality**](IncidentEventFunctionalitiesApi.md#createIncidentEventFunctionality) | **POST** /v1/events/{incident_event_id}/functionalities | Creates an incident event functionality |
| [**deleteIncidentEventFunctionality**](IncidentEventFunctionalitiesApi.md#deleteIncidentEventFunctionality) | **DELETE** /v1/incident_event_functionalities/{id} | Delete an incident event functionality |
| [**getIncidentEventFunctionalities**](IncidentEventFunctionalitiesApi.md#getIncidentEventFunctionalities) | **GET** /v1/incident_event_functionalities/{id} | Retrieves an incident event functionality |
| [**listIncidentEventFunctionalities**](IncidentEventFunctionalitiesApi.md#listIncidentEventFunctionalities) | **GET** /v1/events/{incident_event_id}/functionalities | List incident event functionalities |
| [**updateIncidentEventFunctionality**](IncidentEventFunctionalitiesApi.md#updateIncidentEventFunctionality) | **PUT** /v1/incident_event_functionalities/{id} | Update an incident event |


<a id="createIncidentEventFunctionality"></a>
# **createIncidentEventFunctionality**
> IncidentEventFunctionalityResponse createIncidentEventFunctionality(incidentEventId, newIncidentEventFunctionality)

Creates an incident event functionality

Creates a new event functionality from provided data

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.IncidentEventFunctionalitiesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    IncidentEventFunctionalitiesApi apiInstance = new IncidentEventFunctionalitiesApi(defaultClient);
    String incidentEventId = "incidentEventId_example"; // String | 
    NewIncidentEventFunctionality newIncidentEventFunctionality = new NewIncidentEventFunctionality(); // NewIncidentEventFunctionality | 
    try {
      IncidentEventFunctionalityResponse result = apiInstance.createIncidentEventFunctionality(incidentEventId, newIncidentEventFunctionality);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling IncidentEventFunctionalitiesApi#createIncidentEventFunctionality");
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
| **newIncidentEventFunctionality** | [**NewIncidentEventFunctionality**](NewIncidentEventFunctionality.md)|  | |

### Return type

[**IncidentEventFunctionalityResponse**](IncidentEventFunctionalityResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | incident_event_functionality created |  -  |
| **422** | invalid request |  -  |
| **401** | responds with unauthorized for invalid token |  -  |

<a id="deleteIncidentEventFunctionality"></a>
# **deleteIncidentEventFunctionality**
> IncidentEventFunctionalityResponse deleteIncidentEventFunctionality(id)

Delete an incident event functionality

Delete a specific incident event functionality by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.IncidentEventFunctionalitiesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    IncidentEventFunctionalitiesApi apiInstance = new IncidentEventFunctionalitiesApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      IncidentEventFunctionalityResponse result = apiInstance.deleteIncidentEventFunctionality(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling IncidentEventFunctionalitiesApi#deleteIncidentEventFunctionality");
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

[**IncidentEventFunctionalityResponse**](IncidentEventFunctionalityResponse.md)

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

<a id="getIncidentEventFunctionalities"></a>
# **getIncidentEventFunctionalities**
> IncidentEventFunctionalityResponse getIncidentEventFunctionalities(id)

Retrieves an incident event functionality

Retrieves a specific incident_event_functionality by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.IncidentEventFunctionalitiesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    IncidentEventFunctionalitiesApi apiInstance = new IncidentEventFunctionalitiesApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      IncidentEventFunctionalityResponse result = apiInstance.getIncidentEventFunctionalities(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling IncidentEventFunctionalitiesApi#getIncidentEventFunctionalities");
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

[**IncidentEventFunctionalityResponse**](IncidentEventFunctionalityResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | incident_event_functionality found |  -  |
| **404** | resource not found |  -  |

<a id="listIncidentEventFunctionalities"></a>
# **listIncidentEventFunctionalities**
> IncidentEventFunctionalityList listIncidentEventFunctionalities(incidentEventId, include, pageNumber, pageSize)

List incident event functionalities

List incident event functionalities

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.IncidentEventFunctionalitiesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    IncidentEventFunctionalitiesApi apiInstance = new IncidentEventFunctionalitiesApi(defaultClient);
    String incidentEventId = "incidentEventId_example"; // String | 
    String include = "include_example"; // String | 
    Integer pageNumber = 56; // Integer | 
    Integer pageSize = 56; // Integer | 
    try {
      IncidentEventFunctionalityList result = apiInstance.listIncidentEventFunctionalities(incidentEventId, include, pageNumber, pageSize);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling IncidentEventFunctionalitiesApi#listIncidentEventFunctionalities");
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

[**IncidentEventFunctionalityList**](IncidentEventFunctionalityList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | success |  -  |

<a id="updateIncidentEventFunctionality"></a>
# **updateIncidentEventFunctionality**
> IncidentEventFunctionalityResponse updateIncidentEventFunctionality(id, updateIncidentEventFunctionality)

Update an incident event

Update a specific incident event functionality by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.IncidentEventFunctionalitiesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    IncidentEventFunctionalitiesApi apiInstance = new IncidentEventFunctionalitiesApi(defaultClient);
    String id = "id_example"; // String | 
    UpdateIncidentEventFunctionality updateIncidentEventFunctionality = new UpdateIncidentEventFunctionality(); // UpdateIncidentEventFunctionality | 
    try {
      IncidentEventFunctionalityResponse result = apiInstance.updateIncidentEventFunctionality(id, updateIncidentEventFunctionality);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling IncidentEventFunctionalitiesApi#updateIncidentEventFunctionality");
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
| **updateIncidentEventFunctionality** | [**UpdateIncidentEventFunctionality**](UpdateIncidentEventFunctionality.md)|  | |

### Return type

[**IncidentEventFunctionalityResponse**](IncidentEventFunctionalityResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | incident_event_functionality updated |  -  |
| **404** | resource not found |  -  |


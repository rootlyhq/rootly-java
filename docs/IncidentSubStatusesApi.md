# IncidentSubStatusesApi

All URIs are relative to *https://api.rootly.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createIncidentSubStatus**](IncidentSubStatusesApi.md#createIncidentSubStatus) | **POST** /v1/incidents/{incident_id}/sub_statuses | Creates a sub-status assignment |
| [**deleteIncidentSubStatus**](IncidentSubStatusesApi.md#deleteIncidentSubStatus) | **DELETE** /v1/incident_sub_statuses/{id} | Delete an incident_sub_status |
| [**getIncidentSubStatus**](IncidentSubStatusesApi.md#getIncidentSubStatus) | **GET** /v1/incident_sub_statuses/{id} | Retrieves incident_sub_status |
| [**listIncidentSubStatuses**](IncidentSubStatusesApi.md#listIncidentSubStatuses) | **GET** /v1/incidents/{incident_id}/sub_statuses | List incident_sub_statuses |
| [**updateIncidentSubStatus**](IncidentSubStatusesApi.md#updateIncidentSubStatus) | **PUT** /v1/incident_sub_statuses/{id} | Update incident_sub_status |


<a id="createIncidentSubStatus"></a>
# **createIncidentSubStatus**
> IncidentSubStatusResponse createIncidentSubStatus(incidentId, newIncidentSubStatus)

Creates a sub-status assignment

Creates a new sub-status assignment from provided data

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.IncidentSubStatusesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    IncidentSubStatusesApi apiInstance = new IncidentSubStatusesApi(defaultClient);
    String incidentId = "incidentId_example"; // String | 
    NewIncidentSubStatus newIncidentSubStatus = new NewIncidentSubStatus(); // NewIncidentSubStatus | 
    try {
      IncidentSubStatusResponse result = apiInstance.createIncidentSubStatus(incidentId, newIncidentSubStatus);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling IncidentSubStatusesApi#createIncidentSubStatus");
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
| **newIncidentSubStatus** | [**NewIncidentSubStatus**](NewIncidentSubStatus.md)|  | |

### Return type

[**IncidentSubStatusResponse**](IncidentSubStatusResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | incident_sub_status created |  -  |
| **401** | responds with unauthorized for invalid token |  -  |

<a id="deleteIncidentSubStatus"></a>
# **deleteIncidentSubStatus**
> IncidentSubStatusResponse deleteIncidentSubStatus(id)

Delete an incident_sub_status

Delete a specific incident_sub_status by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.IncidentSubStatusesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    IncidentSubStatusesApi apiInstance = new IncidentSubStatusesApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      IncidentSubStatusResponse result = apiInstance.deleteIncidentSubStatus(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling IncidentSubStatusesApi#deleteIncidentSubStatus");
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

[**IncidentSubStatusResponse**](IncidentSubStatusResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | incident_sub_status deleted |  -  |
| **404** | resource not found |  -  |

<a id="getIncidentSubStatus"></a>
# **getIncidentSubStatus**
> IncidentSubStatusResponse getIncidentSubStatus(id, include)

Retrieves incident_sub_status

Retrieves a specific incident_sub_status by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.IncidentSubStatusesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    IncidentSubStatusesApi apiInstance = new IncidentSubStatusesApi(defaultClient);
    String id = "id_example"; // String | 
    String include = "sub_status"; // String | comma separated if needed. eg: sub_status,assigned_by_user
    try {
      IncidentSubStatusResponse result = apiInstance.getIncidentSubStatus(id, include);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling IncidentSubStatusesApi#getIncidentSubStatus");
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
| **include** | **String**| comma separated if needed. eg: sub_status,assigned_by_user | [optional] [enum: sub_status, assigned_by_user] |

### Return type

[**IncidentSubStatusResponse**](IncidentSubStatusResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | sub_status found |  -  |

<a id="listIncidentSubStatuses"></a>
# **listIncidentSubStatuses**
> IncidentSubStatusList listIncidentSubStatuses(incidentId, include, sort, pageNumber, pageSize, filterSubStatusId, filterAssignedAtGt, filterAssignedAtGte, filterAssignedAtLt, filterAssignedAtLte)

List incident_sub_statuses

List incident_sub_statuses

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.IncidentSubStatusesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    IncidentSubStatusesApi apiInstance = new IncidentSubStatusesApi(defaultClient);
    String incidentId = "incidentId_example"; // String | 
    String include = "sub_status"; // String | comma separated if needed. eg: sub_status,assigned_by_user
    String sort = "created_at"; // String | comma separated if needed. eg: created_at,updated_at
    Integer pageNumber = 56; // Integer | 
    Integer pageSize = 56; // Integer | 
    String filterSubStatusId = "filterSubStatusId_example"; // String | 
    String filterAssignedAtGt = "filterAssignedAtGt_example"; // String | 
    String filterAssignedAtGte = "filterAssignedAtGte_example"; // String | 
    String filterAssignedAtLt = "filterAssignedAtLt_example"; // String | 
    String filterAssignedAtLte = "filterAssignedAtLte_example"; // String | 
    try {
      IncidentSubStatusList result = apiInstance.listIncidentSubStatuses(incidentId, include, sort, pageNumber, pageSize, filterSubStatusId, filterAssignedAtGt, filterAssignedAtGte, filterAssignedAtLt, filterAssignedAtLte);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling IncidentSubStatusesApi#listIncidentSubStatuses");
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
| **include** | **String**| comma separated if needed. eg: sub_status,assigned_by_user | [optional] [enum: sub_status, assigned_by_user] |
| **sort** | **String**| comma separated if needed. eg: created_at,updated_at | [optional] [enum: created_at, -created_at, updated_at, -updated_at, assigned_at, -assigned_at] |
| **pageNumber** | **Integer**|  | [optional] |
| **pageSize** | **Integer**|  | [optional] |
| **filterSubStatusId** | **String**|  | [optional] |
| **filterAssignedAtGt** | **String**|  | [optional] |
| **filterAssignedAtGte** | **String**|  | [optional] |
| **filterAssignedAtLt** | **String**|  | [optional] |
| **filterAssignedAtLte** | **String**|  | [optional] |

### Return type

[**IncidentSubStatusList**](IncidentSubStatusList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | success |  -  |

<a id="updateIncidentSubStatus"></a>
# **updateIncidentSubStatus**
> IncidentSubStatusResponse updateIncidentSubStatus(id, updateIncidentSubStatus)

Update incident_sub_status

Update a specific incident_sub_status by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.IncidentSubStatusesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    IncidentSubStatusesApi apiInstance = new IncidentSubStatusesApi(defaultClient);
    String id = "id_example"; // String | 
    UpdateIncidentSubStatus updateIncidentSubStatus = new UpdateIncidentSubStatus(); // UpdateIncidentSubStatus | 
    try {
      IncidentSubStatusResponse result = apiInstance.updateIncidentSubStatus(id, updateIncidentSubStatus);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling IncidentSubStatusesApi#updateIncidentSubStatus");
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
| **updateIncidentSubStatus** | [**UpdateIncidentSubStatus**](UpdateIncidentSubStatus.md)|  | |

### Return type

[**IncidentSubStatusResponse**](IncidentSubStatusResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | incident_sub_status updated |  -  |


# SchedulesApi

All URIs are relative to *https://api.rootly.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createSchedule**](SchedulesApi.md#createSchedule) | **POST** /v1/schedules | Creates a schedule |
| [**deleteSchedule**](SchedulesApi.md#deleteSchedule) | **DELETE** /v1/schedules/{id} | Delete a schedule |
| [**getSchedule**](SchedulesApi.md#getSchedule) | **GET** /v1/schedules/{id} | Retrieves a schedule |
| [**listSchedules**](SchedulesApi.md#listSchedules) | **GET** /v1/schedules | List schedules |
| [**updateSchedule**](SchedulesApi.md#updateSchedule) | **PUT** /v1/schedules/{id} | Update a schedule |


<a id="createSchedule"></a>
# **createSchedule**
> ScheduleResponse createSchedule(newSchedule)

Creates a schedule

Creates a new schedule from provided data

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.SchedulesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    SchedulesApi apiInstance = new SchedulesApi(defaultClient);
    NewSchedule newSchedule = new NewSchedule(); // NewSchedule | 
    try {
      ScheduleResponse result = apiInstance.createSchedule(newSchedule);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling SchedulesApi#createSchedule");
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
| **newSchedule** | [**NewSchedule**](NewSchedule.md)|  | |

### Return type

[**ScheduleResponse**](ScheduleResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | schedule created |  -  |
| **422** | invalid request |  -  |
| **401** | responds with unauthorized for invalid token |  -  |

<a id="deleteSchedule"></a>
# **deleteSchedule**
> ScheduleResponse deleteSchedule(id)

Delete a schedule

Delete a specific schedule by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.SchedulesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    SchedulesApi apiInstance = new SchedulesApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      ScheduleResponse result = apiInstance.deleteSchedule(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling SchedulesApi#deleteSchedule");
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

[**ScheduleResponse**](ScheduleResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | schedule deleted |  -  |
| **404** | resource not found |  -  |

<a id="getSchedule"></a>
# **getSchedule**
> ScheduleResponse getSchedule(id)

Retrieves a schedule

Retrieves a specific schedule by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.SchedulesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    SchedulesApi apiInstance = new SchedulesApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      ScheduleResponse result = apiInstance.getSchedule(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling SchedulesApi#getSchedule");
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

[**ScheduleResponse**](ScheduleResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | schedule found |  -  |
| **404** | resource not found |  -  |

<a id="listSchedules"></a>
# **listSchedules**
> ScheduleList listSchedules(include, filterSearch, filterName, filterCreatedAtGt, filterCreatedAtGte, filterCreatedAtLt, filterCreatedAtLte, pageNumber, pageSize)

List schedules

List schedules

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.SchedulesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    SchedulesApi apiInstance = new SchedulesApi(defaultClient);
    String include = "include_example"; // String | 
    String filterSearch = "filterSearch_example"; // String | 
    String filterName = "filterName_example"; // String | 
    String filterCreatedAtGt = "filterCreatedAtGt_example"; // String | 
    String filterCreatedAtGte = "filterCreatedAtGte_example"; // String | 
    String filterCreatedAtLt = "filterCreatedAtLt_example"; // String | 
    String filterCreatedAtLte = "filterCreatedAtLte_example"; // String | 
    Integer pageNumber = 56; // Integer | 
    Integer pageSize = 56; // Integer | 
    try {
      ScheduleList result = apiInstance.listSchedules(include, filterSearch, filterName, filterCreatedAtGt, filterCreatedAtGte, filterCreatedAtLt, filterCreatedAtLte, pageNumber, pageSize);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling SchedulesApi#listSchedules");
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
| **filterSearch** | **String**|  | [optional] |
| **filterName** | **String**|  | [optional] |
| **filterCreatedAtGt** | **String**|  | [optional] |
| **filterCreatedAtGte** | **String**|  | [optional] |
| **filterCreatedAtLt** | **String**|  | [optional] |
| **filterCreatedAtLte** | **String**|  | [optional] |
| **pageNumber** | **Integer**|  | [optional] |
| **pageSize** | **Integer**|  | [optional] |

### Return type

[**ScheduleList**](ScheduleList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | success |  -  |

<a id="updateSchedule"></a>
# **updateSchedule**
> ScheduleResponse updateSchedule(id, updateSchedule)

Update a schedule

Updates a specific schedule by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.SchedulesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    SchedulesApi apiInstance = new SchedulesApi(defaultClient);
    String id = "id_example"; // String | 
    UpdateSchedule updateSchedule = new UpdateSchedule(); // UpdateSchedule | 
    try {
      ScheduleResponse result = apiInstance.updateSchedule(id, updateSchedule);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling SchedulesApi#updateSchedule");
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
| **updateSchedule** | [**UpdateSchedule**](UpdateSchedule.md)|  | |

### Return type

[**ScheduleResponse**](ScheduleResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | schedule updated |  -  |
| **404** | resource not found |  -  |


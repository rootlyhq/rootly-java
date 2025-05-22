# ScheduleRotationActiveDaysApi

All URIs are relative to *https://api.rootly.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createScheduleRotationActiveDay**](ScheduleRotationActiveDaysApi.md#createScheduleRotationActiveDay) | **POST** /v1/schedule_rotations/{schedule_rotation_id}/schedule_rotation_active_days | Creates a schedule rotation active day |
| [**deleteScheduleRotationActiveDay**](ScheduleRotationActiveDaysApi.md#deleteScheduleRotationActiveDay) | **DELETE** /v1/schedule_rotation_active_days/{id} | Delete a schedule rotation active day |
| [**getScheduleRotationActiveDay**](ScheduleRotationActiveDaysApi.md#getScheduleRotationActiveDay) | **GET** /v1/schedule_rotation_active_days/{id} | Retrieves a schedule rotation active day |
| [**listScheduleRotationActiveDays**](ScheduleRotationActiveDaysApi.md#listScheduleRotationActiveDays) | **GET** /v1/schedule_rotations/{schedule_rotation_id}/schedule_rotation_active_days | List schedule rotation active days |
| [**updateScheduleRotationActiveDay**](ScheduleRotationActiveDaysApi.md#updateScheduleRotationActiveDay) | **PUT** /v1/schedule_rotation_active_days/{id} | Update a schedule rotation active day |


<a id="createScheduleRotationActiveDay"></a>
# **createScheduleRotationActiveDay**
> ScheduleRotationActiveDayResponse createScheduleRotationActiveDay(scheduleRotationId, newScheduleRotationActiveDay)

Creates a schedule rotation active day

Creates a new schedule rotation active day from provided data

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.ScheduleRotationActiveDaysApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    ScheduleRotationActiveDaysApi apiInstance = new ScheduleRotationActiveDaysApi(defaultClient);
    String scheduleRotationId = "scheduleRotationId_example"; // String | 
    NewScheduleRotationActiveDay newScheduleRotationActiveDay = new NewScheduleRotationActiveDay(); // NewScheduleRotationActiveDay | 
    try {
      ScheduleRotationActiveDayResponse result = apiInstance.createScheduleRotationActiveDay(scheduleRotationId, newScheduleRotationActiveDay);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ScheduleRotationActiveDaysApi#createScheduleRotationActiveDay");
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
| **scheduleRotationId** | **String**|  | |
| **newScheduleRotationActiveDay** | [**NewScheduleRotationActiveDay**](NewScheduleRotationActiveDay.md)|  | |

### Return type

[**ScheduleRotationActiveDayResponse**](ScheduleRotationActiveDayResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | schedule_rotation_active_day created |  -  |
| **422** | invalid request |  -  |
| **401** | responds with unauthorized for invalid token |  -  |

<a id="deleteScheduleRotationActiveDay"></a>
# **deleteScheduleRotationActiveDay**
> ScheduleRotationActiveDayResponse deleteScheduleRotationActiveDay(id)

Delete a schedule rotation active day

Delete a specific schedule rotation active day

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.ScheduleRotationActiveDaysApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    ScheduleRotationActiveDaysApi apiInstance = new ScheduleRotationActiveDaysApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      ScheduleRotationActiveDayResponse result = apiInstance.deleteScheduleRotationActiveDay(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ScheduleRotationActiveDaysApi#deleteScheduleRotationActiveDay");
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

[**ScheduleRotationActiveDayResponse**](ScheduleRotationActiveDayResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | schedule_rotation_active_day deleted |  -  |
| **404** | resource not found |  -  |

<a id="getScheduleRotationActiveDay"></a>
# **getScheduleRotationActiveDay**
> ScheduleRotationActiveDayResponse getScheduleRotationActiveDay(id)

Retrieves a schedule rotation active day

Retrieves a specific schedule rotation active day by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.ScheduleRotationActiveDaysApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    ScheduleRotationActiveDaysApi apiInstance = new ScheduleRotationActiveDaysApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      ScheduleRotationActiveDayResponse result = apiInstance.getScheduleRotationActiveDay(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ScheduleRotationActiveDaysApi#getScheduleRotationActiveDay");
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

[**ScheduleRotationActiveDayResponse**](ScheduleRotationActiveDayResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | schedule_rotation_active_day found |  -  |
| **404** | resource not found |  -  |

<a id="listScheduleRotationActiveDays"></a>
# **listScheduleRotationActiveDays**
> ScheduleRotationActiveDayList listScheduleRotationActiveDays(scheduleRotationId, include, pageNumber, pageSize)

List schedule rotation active days

List schedule rotation active days

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.ScheduleRotationActiveDaysApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    ScheduleRotationActiveDaysApi apiInstance = new ScheduleRotationActiveDaysApi(defaultClient);
    String scheduleRotationId = "scheduleRotationId_example"; // String | 
    String include = "include_example"; // String | 
    Integer pageNumber = 56; // Integer | 
    Integer pageSize = 56; // Integer | 
    try {
      ScheduleRotationActiveDayList result = apiInstance.listScheduleRotationActiveDays(scheduleRotationId, include, pageNumber, pageSize);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ScheduleRotationActiveDaysApi#listScheduleRotationActiveDays");
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
| **scheduleRotationId** | **String**|  | |
| **include** | **String**|  | [optional] |
| **pageNumber** | **Integer**|  | [optional] |
| **pageSize** | **Integer**|  | [optional] |

### Return type

[**ScheduleRotationActiveDayList**](ScheduleRotationActiveDayList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | success |  -  |

<a id="updateScheduleRotationActiveDay"></a>
# **updateScheduleRotationActiveDay**
> ScheduleRotationActiveDayResponse updateScheduleRotationActiveDay(id, updateScheduleRotationActiveDay)

Update a schedule rotation active day

Update a specific schedule rotation active day by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.ScheduleRotationActiveDaysApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    ScheduleRotationActiveDaysApi apiInstance = new ScheduleRotationActiveDaysApi(defaultClient);
    String id = "id_example"; // String | 
    UpdateScheduleRotationActiveDay updateScheduleRotationActiveDay = new UpdateScheduleRotationActiveDay(); // UpdateScheduleRotationActiveDay | 
    try {
      ScheduleRotationActiveDayResponse result = apiInstance.updateScheduleRotationActiveDay(id, updateScheduleRotationActiveDay);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ScheduleRotationActiveDaysApi#updateScheduleRotationActiveDay");
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
| **updateScheduleRotationActiveDay** | [**UpdateScheduleRotationActiveDay**](UpdateScheduleRotationActiveDay.md)|  | |

### Return type

[**ScheduleRotationActiveDayResponse**](ScheduleRotationActiveDayResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | schedule_rotation_active_day updated |  -  |
| **404** | resource not found |  -  |


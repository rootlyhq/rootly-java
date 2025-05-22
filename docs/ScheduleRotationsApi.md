# ScheduleRotationsApi

All URIs are relative to *https://api.rootly.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createScheduleRotation**](ScheduleRotationsApi.md#createScheduleRotation) | **POST** /v1/schedules/{schedule_id}/schedule_rotations | Creates a schedule rotation |
| [**deleteScheduleRotation**](ScheduleRotationsApi.md#deleteScheduleRotation) | **DELETE** /v1/schedule_rotations/{id} | Delete a schedule rotation |
| [**getScheduleRotation**](ScheduleRotationsApi.md#getScheduleRotation) | **GET** /v1/schedule_rotations/{id} | Retrieves a schedule rotation |
| [**listScheduleRotations**](ScheduleRotationsApi.md#listScheduleRotations) | **GET** /v1/schedules/{schedule_id}/schedule_rotations | List schedule rotations |
| [**updateScheduleRotation**](ScheduleRotationsApi.md#updateScheduleRotation) | **PUT** /v1/schedule_rotations/{id} | Update a schedule rotation |


<a id="createScheduleRotation"></a>
# **createScheduleRotation**
> ScheduleRotationResponse createScheduleRotation(scheduleId, newScheduleRotation)

Creates a schedule rotation

Creates a new schedule rotation from provided data

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.ScheduleRotationsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    ScheduleRotationsApi apiInstance = new ScheduleRotationsApi(defaultClient);
    String scheduleId = "scheduleId_example"; // String | 
    NewScheduleRotation newScheduleRotation = new NewScheduleRotation(); // NewScheduleRotation | 
    try {
      ScheduleRotationResponse result = apiInstance.createScheduleRotation(scheduleId, newScheduleRotation);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ScheduleRotationsApi#createScheduleRotation");
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
| **scheduleId** | **String**|  | |
| **newScheduleRotation** | [**NewScheduleRotation**](NewScheduleRotation.md)|  | |

### Return type

[**ScheduleRotationResponse**](ScheduleRotationResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | schedule_rotation created with custom active times |  -  |
| **422** | invalid request |  -  |
| **401** | responds with unauthorized for invalid token |  -  |

<a id="deleteScheduleRotation"></a>
# **deleteScheduleRotation**
> ScheduleRotationResponse deleteScheduleRotation(id)

Delete a schedule rotation

Delete a specific schedule rotation by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.ScheduleRotationsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    ScheduleRotationsApi apiInstance = new ScheduleRotationsApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      ScheduleRotationResponse result = apiInstance.deleteScheduleRotation(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ScheduleRotationsApi#deleteScheduleRotation");
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

[**ScheduleRotationResponse**](ScheduleRotationResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | schedule_rotation deleted |  -  |
| **404** | resource not found |  -  |

<a id="getScheduleRotation"></a>
# **getScheduleRotation**
> ScheduleRotationResponse getScheduleRotation(id)

Retrieves a schedule rotation

Retrieves a specific schedule rotation by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.ScheduleRotationsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    ScheduleRotationsApi apiInstance = new ScheduleRotationsApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      ScheduleRotationResponse result = apiInstance.getScheduleRotation(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ScheduleRotationsApi#getScheduleRotation");
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

[**ScheduleRotationResponse**](ScheduleRotationResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | schedule_rotation found |  -  |
| **404** | resource not found |  -  |

<a id="listScheduleRotations"></a>
# **listScheduleRotations**
> ScheduleRotationList listScheduleRotations(scheduleId, include, pageNumber, pageSize, sort)

List schedule rotations

List schedule rotations

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.ScheduleRotationsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    ScheduleRotationsApi apiInstance = new ScheduleRotationsApi(defaultClient);
    String scheduleId = "scheduleId_example"; // String | 
    String include = "include_example"; // String | 
    Integer pageNumber = 56; // Integer | 
    Integer pageSize = 56; // Integer | 
    String sort = "sort_example"; // String | 
    try {
      ScheduleRotationList result = apiInstance.listScheduleRotations(scheduleId, include, pageNumber, pageSize, sort);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ScheduleRotationsApi#listScheduleRotations");
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
| **scheduleId** | **String**|  | |
| **include** | **String**|  | [optional] |
| **pageNumber** | **Integer**|  | [optional] |
| **pageSize** | **Integer**|  | [optional] |
| **sort** | **String**|  | [optional] |

### Return type

[**ScheduleRotationList**](ScheduleRotationList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | success |  -  |

<a id="updateScheduleRotation"></a>
# **updateScheduleRotation**
> ScheduleRotationResponse updateScheduleRotation(id, updateScheduleRotation)

Update a schedule rotation

Update a specific schedule rotation by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.ScheduleRotationsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    ScheduleRotationsApi apiInstance = new ScheduleRotationsApi(defaultClient);
    String id = "id_example"; // String | 
    UpdateScheduleRotation updateScheduleRotation = new UpdateScheduleRotation(); // UpdateScheduleRotation | 
    try {
      ScheduleRotationResponse result = apiInstance.updateScheduleRotation(id, updateScheduleRotation);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ScheduleRotationsApi#updateScheduleRotation");
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
| **updateScheduleRotation** | [**UpdateScheduleRotation**](UpdateScheduleRotation.md)|  | |

### Return type

[**ScheduleRotationResponse**](ScheduleRotationResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | schedule_rotation updated |  -  |
| **404** | resource not found |  -  |


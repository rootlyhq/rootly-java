# OverrideShiftsApi

All URIs are relative to *https://api.rootly.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createOverrideShift**](OverrideShiftsApi.md#createOverrideShift) | **POST** /v1/schedules/{schedule_id}/override_shifts | creates an override shift |
| [**deleteOnCallShadow**](OverrideShiftsApi.md#deleteOnCallShadow) | **DELETE** /v1/on_call_shadows/{id} | Delete an on call shadow configuration |
| [**deleteOverrideShift**](OverrideShiftsApi.md#deleteOverrideShift) | **DELETE** /v1/override_shifts/{id} | Delete an override shift |
| [**getOverrideShift**](OverrideShiftsApi.md#getOverrideShift) | **GET** /v1/override_shifts/{id} | Retrieves an override shift |
| [**listOverrideShifts**](OverrideShiftsApi.md#listOverrideShifts) | **GET** /v1/schedules/{schedule_id}/override_shifts | List override shifts |
| [**updateOverrideShift**](OverrideShiftsApi.md#updateOverrideShift) | **PUT** /v1/override_shifts/{id} | Update an override shift |


<a id="createOverrideShift"></a>
# **createOverrideShift**
> OverrideShiftResponse createOverrideShift(scheduleId, newOverrideShift)

creates an override shift

Creates a new override shift from provided data

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.OverrideShiftsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    OverrideShiftsApi apiInstance = new OverrideShiftsApi(defaultClient);
    String scheduleId = "scheduleId_example"; // String | 
    NewOverrideShift newOverrideShift = new NewOverrideShift(); // NewOverrideShift | 
    try {
      OverrideShiftResponse result = apiInstance.createOverrideShift(scheduleId, newOverrideShift);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling OverrideShiftsApi#createOverrideShift");
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
| **newOverrideShift** | [**NewOverrideShift**](NewOverrideShift.md)|  | |

### Return type

[**OverrideShiftResponse**](OverrideShiftResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | override_shift created |  -  |
| **422** | invalid request |  -  |
| **401** | responds with unauthorized for invalid token |  -  |

<a id="deleteOnCallShadow"></a>
# **deleteOnCallShadow**
> OnCallShadowResponse deleteOnCallShadow(id)

Delete an on call shadow configuration

Delete a specific on call shadow configuration by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.OverrideShiftsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    OverrideShiftsApi apiInstance = new OverrideShiftsApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      OnCallShadowResponse result = apiInstance.deleteOnCallShadow(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling OverrideShiftsApi#deleteOnCallShadow");
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

[**OnCallShadowResponse**](OnCallShadowResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | override shift deleted |  -  |
| **404** | resource not found |  -  |

<a id="deleteOverrideShift"></a>
# **deleteOverrideShift**
> OverrideShiftResponse deleteOverrideShift(id)

Delete an override shift

Delete a specific override shift by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.OverrideShiftsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    OverrideShiftsApi apiInstance = new OverrideShiftsApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      OverrideShiftResponse result = apiInstance.deleteOverrideShift(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling OverrideShiftsApi#deleteOverrideShift");
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

[**OverrideShiftResponse**](OverrideShiftResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | override shift deleted |  -  |
| **404** | resource not found |  -  |

<a id="getOverrideShift"></a>
# **getOverrideShift**
> OverrideShiftResponse getOverrideShift(id)

Retrieves an override shift

Retrieves a specific override shift by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.OverrideShiftsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    OverrideShiftsApi apiInstance = new OverrideShiftsApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      OverrideShiftResponse result = apiInstance.getOverrideShift(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling OverrideShiftsApi#getOverrideShift");
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

[**OverrideShiftResponse**](OverrideShiftResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | override shift found |  -  |
| **404** | resource not found |  -  |

<a id="listOverrideShifts"></a>
# **listOverrideShifts**
> OverrideShiftList listOverrideShifts(scheduleId, include, pageNumber, pageSize)

List override shifts

List override shifts

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.OverrideShiftsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    OverrideShiftsApi apiInstance = new OverrideShiftsApi(defaultClient);
    String scheduleId = "scheduleId_example"; // String | 
    String include = "include_example"; // String | 
    Integer pageNumber = 56; // Integer | 
    Integer pageSize = 56; // Integer | 
    try {
      OverrideShiftList result = apiInstance.listOverrideShifts(scheduleId, include, pageNumber, pageSize);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling OverrideShiftsApi#listOverrideShifts");
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

### Return type

[**OverrideShiftList**](OverrideShiftList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | success |  -  |

<a id="updateOverrideShift"></a>
# **updateOverrideShift**
> OverrideShiftResponse updateOverrideShift(id, updateOverrideShift)

Update an override shift

Update a specific override shift by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.OverrideShiftsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    OverrideShiftsApi apiInstance = new OverrideShiftsApi(defaultClient);
    String id = "id_example"; // String | 
    UpdateOverrideShift updateOverrideShift = new UpdateOverrideShift(); // UpdateOverrideShift | 
    try {
      OverrideShiftResponse result = apiInstance.updateOverrideShift(id, updateOverrideShift);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling OverrideShiftsApi#updateOverrideShift");
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
| **updateOverrideShift** | [**UpdateOverrideShift**](UpdateOverrideShift.md)|  | |

### Return type

[**OverrideShiftResponse**](OverrideShiftResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | override shift updated |  -  |
| **404** | resource not found |  -  |


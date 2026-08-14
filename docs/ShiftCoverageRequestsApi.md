# ShiftCoverageRequestsApi

All URIs are relative to *https://api.rootly.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createShiftCoverageRequest**](ShiftCoverageRequestsApi.md#createShiftCoverageRequest) | **POST** /v1/schedules/{schedule_id}/shift_coverage_requests | creates shift coverage requests |
| [**deleteShiftCoverageRequest**](ShiftCoverageRequestsApi.md#deleteShiftCoverageRequest) | **DELETE** /v1/shift_coverage_requests/{id} | deletes a shift coverage request |
| [**getShiftCoverageRequest**](ShiftCoverageRequestsApi.md#getShiftCoverageRequest) | **GET** /v1/shift_coverage_requests/{id} | retrieves a shift coverage request |
| [**listShiftCoverageRequests**](ShiftCoverageRequestsApi.md#listShiftCoverageRequests) | **GET** /v1/schedules/{schedule_id}/shift_coverage_requests | list shift coverage requests |


<a id="createShiftCoverageRequest"></a>
# **createShiftCoverageRequest**
> ShiftCoverageRequestList createShiftCoverageRequest(scheduleId, newShiftCoverageRequest)

creates shift coverage requests

Creates coverage requests for the shifts overlapping the requested time range. A range can span multiple consecutive shifts (e.g. across a handoff), so one or more coverage requests may be created; the response is always a list. A coverage request broadcasts to schedule members so someone can volunteer to cover the shift.

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.ShiftCoverageRequestsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    ShiftCoverageRequestsApi apiInstance = new ShiftCoverageRequestsApi(defaultClient);
    String scheduleId = "scheduleId_example"; // String | 
    NewShiftCoverageRequest newShiftCoverageRequest = new NewShiftCoverageRequest(); // NewShiftCoverageRequest | 
    try {
      ShiftCoverageRequestList result = apiInstance.createShiftCoverageRequest(scheduleId, newShiftCoverageRequest);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ShiftCoverageRequestsApi#createShiftCoverageRequest");
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
| **newShiftCoverageRequest** | [**NewShiftCoverageRequest**](NewShiftCoverageRequest.md)|  | |

### Return type

[**ShiftCoverageRequestList**](ShiftCoverageRequestList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | without override permission, can request coverage for own shift |  -  |
| **422** | without override permission, cannot request coverage for another user&#39;s shift |  -  |

<a id="deleteShiftCoverageRequest"></a>
# **deleteShiftCoverageRequest**
> ShiftCoverageRequestResponse deleteShiftCoverageRequest(id)

deletes a shift coverage request

Deletes a shift coverage request.

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.ShiftCoverageRequestsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    ShiftCoverageRequestsApi apiInstance = new ShiftCoverageRequestsApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      ShiftCoverageRequestResponse result = apiInstance.deleteShiftCoverageRequest(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ShiftCoverageRequestsApi#deleteShiftCoverageRequest");
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

[**ShiftCoverageRequestResponse**](ShiftCoverageRequestResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | shift_coverage_request deleted |  -  |

<a id="getShiftCoverageRequest"></a>
# **getShiftCoverageRequest**
> ShiftCoverageRequestResponse getShiftCoverageRequest(id)

retrieves a shift coverage request

Retrieves a specific shift coverage request.

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.ShiftCoverageRequestsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    ShiftCoverageRequestsApi apiInstance = new ShiftCoverageRequestsApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      ShiftCoverageRequestResponse result = apiInstance.getShiftCoverageRequest(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ShiftCoverageRequestsApi#getShiftCoverageRequest");
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

[**ShiftCoverageRequestResponse**](ShiftCoverageRequestResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | shift_coverage_request found |  -  |

<a id="listShiftCoverageRequests"></a>
# **listShiftCoverageRequests**
> ShiftCoverageRequestList listShiftCoverageRequests(scheduleId)

list shift coverage requests

List active shift coverage requests for a schedule.

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.ShiftCoverageRequestsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    ShiftCoverageRequestsApi apiInstance = new ShiftCoverageRequestsApi(defaultClient);
    String scheduleId = "scheduleId_example"; // String | 
    try {
      ShiftCoverageRequestList result = apiInstance.listShiftCoverageRequests(scheduleId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ShiftCoverageRequestsApi#listShiftCoverageRequests");
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

### Return type

[**ShiftCoverageRequestList**](ShiftCoverageRequestList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | shift_coverage_requests listed |  -  |


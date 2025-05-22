# ShiftsApi

All URIs are relative to *https://api.rootly.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**getScheduleShifts**](ShiftsApi.md#getScheduleShifts) | **GET** /v1/schedules/{id}/shifts | Retrieves a schedule shifts |
| [**listShifts**](ShiftsApi.md#listShifts) | **GET** /v1/shifts | List shifts |


<a id="getScheduleShifts"></a>
# **getScheduleShifts**
> ShiftList getScheduleShifts(id, to, from)

Retrieves a schedule shifts

Retrieves schedule shifts

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.ShiftsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    ShiftsApi apiInstance = new ShiftsApi(defaultClient);
    String id = "id_example"; // String | 
    String to = "to_example"; // String | 
    String from = "from_example"; // String | 
    try {
      ShiftList result = apiInstance.getScheduleShifts(id, to, from);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ShiftsApi#getScheduleShifts");
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
| **to** | **String**|  | [optional] |
| **from** | **String**|  | [optional] |

### Return type

[**ShiftList**](ShiftList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | schedule shifts found |  -  |
| **404** | resource not found |  -  |

<a id="listShifts"></a>
# **listShifts**
> ShiftList listShifts(include, to, from, userIds, scheduleIds)

List shifts

List shifts

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.ShiftsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    ShiftsApi apiInstance = new ShiftsApi(defaultClient);
    String include = "shift_override"; // String | comma separated if needed. eg: shift_override,user
    String to = "to_example"; // String | Start range for shifts
    String from = "from_example"; // String | End range for shifts
    List<Integer> userIds = Arrays.asList(); // List<Integer> | 
    List<String> scheduleIds = Arrays.asList(); // List<String> | 
    try {
      ShiftList result = apiInstance.listShifts(include, to, from, userIds, scheduleIds);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ShiftsApi#listShifts");
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
| **include** | **String**| comma separated if needed. eg: shift_override,user | [optional] [enum: shift_override, user] |
| **to** | **String**| Start range for shifts | [optional] |
| **from** | **String**| End range for shifts | [optional] |
| **userIds** | [**List&lt;Integer&gt;**](Integer.md)|  | [optional] |
| **scheduleIds** | [**List&lt;String&gt;**](String.md)|  | [optional] |

### Return type

[**ShiftList**](ShiftList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | success |  -  |
| **404** | resource not found |  -  |


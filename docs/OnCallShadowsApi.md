# OnCallShadowsApi

All URIs are relative to *https://api.rootly.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createOnCallShadow**](OnCallShadowsApi.md#createOnCallShadow) | **POST** /v1/schedules/{schedule_id}/on_call_shadows | creates an shadow configuration |
| [**getOnCallShadow**](OnCallShadowsApi.md#getOnCallShadow) | **GET** /v1/on_call_shadows/{id} | Retrieves an On Call Shadow configuration by ID |
| [**listOnCallShadows**](OnCallShadowsApi.md#listOnCallShadows) | **GET** /v1/schedules/{schedule_id}/on_call_shadows | List On Call Shadows for Shift |
| [**updateOnCallShadow**](OnCallShadowsApi.md#updateOnCallShadow) | **PUT** /v1/on_call_shadows/{id} | Update an On Call Shadow configuration |


<a id="createOnCallShadow"></a>
# **createOnCallShadow**
> OnCallShadowResponse createOnCallShadow(scheduleId, newOnCallShadow)

creates an shadow configuration

Creates a new on call shadow configuration from provided data

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.OnCallShadowsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    OnCallShadowsApi apiInstance = new OnCallShadowsApi(defaultClient);
    String scheduleId = "scheduleId_example"; // String | 
    NewOnCallShadow newOnCallShadow = new NewOnCallShadow(); // NewOnCallShadow | 
    try {
      OnCallShadowResponse result = apiInstance.createOnCallShadow(scheduleId, newOnCallShadow);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling OnCallShadowsApi#createOnCallShadow");
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
| **newOnCallShadow** | [**NewOnCallShadow**](NewOnCallShadow.md)|  | |

### Return type

[**OnCallShadowResponse**](OnCallShadowResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | shadow shift is created |  -  |
| **422** | invalid request |  -  |
| **401** | responds with unauthorized for invalid token |  -  |

<a id="getOnCallShadow"></a>
# **getOnCallShadow**
> OnCallShadowResponse getOnCallShadow(id)

Retrieves an On Call Shadow configuration by ID

Retrieves a specific On Call Shadow configuration by ID

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.OnCallShadowsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    OnCallShadowsApi apiInstance = new OnCallShadowsApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      OnCallShadowResponse result = apiInstance.getOnCallShadow(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling OnCallShadowsApi#getOnCallShadow");
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
| **200** | override shift found |  -  |
| **404** | resource not found |  -  |

<a id="listOnCallShadows"></a>
# **listOnCallShadows**
> OnCallShadowsList listOnCallShadows(scheduleId, include, pageNumber, pageSize)

List On Call Shadows for Shift

List shadow shifts for schedule

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.OnCallShadowsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    OnCallShadowsApi apiInstance = new OnCallShadowsApi(defaultClient);
    String scheduleId = "scheduleId_example"; // String | 
    String include = "include_example"; // String | 
    Integer pageNumber = 56; // Integer | 
    Integer pageSize = 56; // Integer | 
    try {
      OnCallShadowsList result = apiInstance.listOnCallShadows(scheduleId, include, pageNumber, pageSize);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling OnCallShadowsApi#listOnCallShadows");
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

[**OnCallShadowsList**](OnCallShadowsList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | success |  -  |

<a id="updateOnCallShadow"></a>
# **updateOnCallShadow**
> OnCallShadowResponse updateOnCallShadow(id, updateOnCallShadow)

Update an On Call Shadow configuration

Update a specific on call shadow configuration by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.OnCallShadowsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    OnCallShadowsApi apiInstance = new OnCallShadowsApi(defaultClient);
    String id = "id_example"; // String | 
    UpdateOnCallShadow updateOnCallShadow = new UpdateOnCallShadow(); // UpdateOnCallShadow | 
    try {
      OnCallShadowResponse result = apiInstance.updateOnCallShadow(id, updateOnCallShadow);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling OnCallShadowsApi#updateOnCallShadow");
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
| **updateOnCallShadow** | [**UpdateOnCallShadow**](UpdateOnCallShadow.md)|  | |

### Return type

[**OnCallShadowResponse**](OnCallShadowResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | on call shadows configuration is is updated |  -  |
| **404** | resource not found |  -  |


# LiveCallRoutersApi

All URIs are relative to *https://api.rootly.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createLiveCallRouter**](LiveCallRoutersApi.md#createLiveCallRouter) | **POST** /v1/live_call_routers | Creates a Live Call Router |
| [**deleteLiveCallRouter**](LiveCallRoutersApi.md#deleteLiveCallRouter) | **DELETE** /v1/live_call_routers/{id} | Delete a Live Call Router |
| [**generatePhoneNumberLiveCallRouter**](LiveCallRoutersApi.md#generatePhoneNumberLiveCallRouter) | **GET** /v1/live_call_routers/generate_phone_number | Generates a phone number for Live Call Router |
| [**getLiveCallRouter**](LiveCallRoutersApi.md#getLiveCallRouter) | **GET** /v1/live_call_routers/{id} | Retrieves a Live Call Router |
| [**listLiveCallRouters**](LiveCallRoutersApi.md#listLiveCallRouters) | **GET** /v1/live_call_routers | List Live Call Routers |
| [**updateLiveCallRouter**](LiveCallRoutersApi.md#updateLiveCallRouter) | **PUT** /v1/live_call_routers/{id} | Update a Live Call Router |


<a id="createLiveCallRouter"></a>
# **createLiveCallRouter**
> LiveCallRouterResponse createLiveCallRouter(newLiveCallRouter)

Creates a Live Call Router

Creates a new Live Call Router from provided data

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.LiveCallRoutersApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    LiveCallRoutersApi apiInstance = new LiveCallRoutersApi(defaultClient);
    NewLiveCallRouter newLiveCallRouter = new NewLiveCallRouter(); // NewLiveCallRouter | 
    try {
      LiveCallRouterResponse result = apiInstance.createLiveCallRouter(newLiveCallRouter);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling LiveCallRoutersApi#createLiveCallRouter");
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
| **newLiveCallRouter** | [**NewLiveCallRouter**](NewLiveCallRouter.md)|  | |

### Return type

[**LiveCallRouterResponse**](LiveCallRouterResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | live_call_router created |  -  |
| **422** | invalid request |  -  |
| **401** | responds with unauthorized for invalid token |  -  |

<a id="deleteLiveCallRouter"></a>
# **deleteLiveCallRouter**
> LiveCallRouterResponse deleteLiveCallRouter(id)

Delete a Live Call Router

Delete a specific Live Call Router by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.LiveCallRoutersApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    LiveCallRoutersApi apiInstance = new LiveCallRoutersApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      LiveCallRouterResponse result = apiInstance.deleteLiveCallRouter(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling LiveCallRoutersApi#deleteLiveCallRouter");
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

[**LiveCallRouterResponse**](LiveCallRouterResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | live_call_router deleted |  -  |
| **404** | resource not found |  -  |

<a id="generatePhoneNumberLiveCallRouter"></a>
# **generatePhoneNumberLiveCallRouter**
> generatePhoneNumberLiveCallRouter(countryCode, phoneType)

Generates a phone number for Live Call Router

Generates a phone number for Live Call Router

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.LiveCallRoutersApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    LiveCallRoutersApi apiInstance = new LiveCallRoutersApi(defaultClient);
    String countryCode = "US"; // String | 
    String phoneType = "local"; // String | 
    try {
      apiInstance.generatePhoneNumberLiveCallRouter(countryCode, phoneType);
    } catch (ApiException e) {
      System.err.println("Exception when calling LiveCallRoutersApi#generatePhoneNumberLiveCallRouter");
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
| **countryCode** | **String**|  | [enum: US, GB, NZ, CA, AU] |
| **phoneType** | **String**|  | [enum: local, toll_free] |

### Return type

null (empty response body)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | live_call_router phone number |  -  |
| **422** | live_call_router without required params |  -  |

<a id="getLiveCallRouter"></a>
# **getLiveCallRouter**
> LiveCallRouterResponse getLiveCallRouter(id)

Retrieves a Live Call Router

Retrieves a specific Live Call Router by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.LiveCallRoutersApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    LiveCallRoutersApi apiInstance = new LiveCallRoutersApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      LiveCallRouterResponse result = apiInstance.getLiveCallRouter(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling LiveCallRoutersApi#getLiveCallRouter");
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

[**LiveCallRouterResponse**](LiveCallRouterResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | live_call_router found |  -  |
| **404** | resource not found |  -  |

<a id="listLiveCallRouters"></a>
# **listLiveCallRouters**
> LiveCallRouterList listLiveCallRouters(include, pageNumber, pageSize, filterSearch, filterName, filterSlug, filterCreatedAtGt, filterCreatedAtGte, filterCreatedAtLt, filterCreatedAtLte, sort)

List Live Call Routers

List Live Call Routers

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.LiveCallRoutersApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    LiveCallRoutersApi apiInstance = new LiveCallRoutersApi(defaultClient);
    String include = "include_example"; // String | 
    Integer pageNumber = 56; // Integer | 
    Integer pageSize = 56; // Integer | 
    String filterSearch = "filterSearch_example"; // String | 
    String filterName = "filterName_example"; // String | 
    String filterSlug = "filterSlug_example"; // String | 
    String filterCreatedAtGt = "filterCreatedAtGt_example"; // String | 
    String filterCreatedAtGte = "filterCreatedAtGte_example"; // String | 
    String filterCreatedAtLt = "filterCreatedAtLt_example"; // String | 
    String filterCreatedAtLte = "filterCreatedAtLte_example"; // String | 
    String sort = "sort_example"; // String | 
    try {
      LiveCallRouterList result = apiInstance.listLiveCallRouters(include, pageNumber, pageSize, filterSearch, filterName, filterSlug, filterCreatedAtGt, filterCreatedAtGte, filterCreatedAtLt, filterCreatedAtLte, sort);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling LiveCallRoutersApi#listLiveCallRouters");
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
| **pageNumber** | **Integer**|  | [optional] |
| **pageSize** | **Integer**|  | [optional] |
| **filterSearch** | **String**|  | [optional] |
| **filterName** | **String**|  | [optional] |
| **filterSlug** | **String**|  | [optional] |
| **filterCreatedAtGt** | **String**|  | [optional] |
| **filterCreatedAtGte** | **String**|  | [optional] |
| **filterCreatedAtLt** | **String**|  | [optional] |
| **filterCreatedAtLte** | **String**|  | [optional] |
| **sort** | **String**|  | [optional] |

### Return type

[**LiveCallRouterList**](LiveCallRouterList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | success |  -  |

<a id="updateLiveCallRouter"></a>
# **updateLiveCallRouter**
> LiveCallRouterResponse updateLiveCallRouter(id, updateLiveCallRouter)

Update a Live Call Router

Update a specific Live Call Router by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.LiveCallRoutersApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    LiveCallRoutersApi apiInstance = new LiveCallRoutersApi(defaultClient);
    String id = "id_example"; // String | 
    UpdateLiveCallRouter updateLiveCallRouter = new UpdateLiveCallRouter(); // UpdateLiveCallRouter | 
    try {
      LiveCallRouterResponse result = apiInstance.updateLiveCallRouter(id, updateLiveCallRouter);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling LiveCallRoutersApi#updateLiveCallRouter");
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
| **updateLiveCallRouter** | [**UpdateLiveCallRouter**](UpdateLiveCallRouter.md)|  | |

### Return type

[**LiveCallRouterResponse**](LiveCallRouterResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | live_call_router updated |  -  |
| **404** | resource not found |  -  |


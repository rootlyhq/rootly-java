# AlertRoutesApi

All URIs are relative to *https://api.rootly.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createAlertRoute**](AlertRoutesApi.md#createAlertRoute) | **POST** /v1/alert_routes | Creates an alert route |
| [**deleteAlertRoute**](AlertRoutesApi.md#deleteAlertRoute) | **DELETE** /v1/alert_routes/{id} | Delete an alert route |
| [**getAlertRoute**](AlertRoutesApi.md#getAlertRoute) | **GET** /v1/alert_routes/{id} | Get an alert route |
| [**listAlertRoutes**](AlertRoutesApi.md#listAlertRoutes) | **GET** /v1/alert_routes | List alert routes |
| [**updateAlertRoute**](AlertRoutesApi.md#updateAlertRoute) | **PUT** /v1/alert_routes/{id} | Update an alert route |


<a id="createAlertRoute"></a>
# **createAlertRoute**
> AlertRouteResponse createAlertRoute(newAlertRoute)

Creates an alert route

Creates a new alert route from provided data. **Note: This endpoint requires access to Advanced Alert Routing. If you&#39;re unsure whether you have access to this feature, please contact Rootly customer support.**  ## Asynchronous Rule Creation  For organizations with large numbers of routing rules, Rootly supports asynchronous rule processing to improve performance. When enabled, rule creation happens in the background.  **Important**: When async processing is enabled, the rules list in the API response will not be up-to-date immediately after creation. You should refetch the alert route after a few minutes to get the updated rules.  If you experience slow operations when managing alert routes with many rules, contact Rootly customer support to enable asynchronous rule processing for your organization.

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.AlertRoutesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    AlertRoutesApi apiInstance = new AlertRoutesApi(defaultClient);
    NewAlertRoute newAlertRoute = new NewAlertRoute(); // NewAlertRoute | 
    try {
      AlertRouteResponse result = apiInstance.createAlertRoute(newAlertRoute);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AlertRoutesApi#createAlertRoute");
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
| **newAlertRoute** | [**NewAlertRoute**](NewAlertRoute.md)|  | |

### Return type

[**AlertRouteResponse**](AlertRouteResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | unknown attribute filtered out gracefully |  -  |
| **422** | create: raises error when multiple fallback rules are present |  -  |
| **401** | unauthorized |  -  |

<a id="deleteAlertRoute"></a>
# **deleteAlertRoute**
> DeleteAlertRoute200Response deleteAlertRoute(id)

Delete an alert route

Delete a specific alert route by id. **Note: This endpoint requires access to Advanced Alert Routing. If you&#39;re unsure whether you have access to this feature, please contact Rootly customer support.**

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.AlertRoutesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    AlertRoutesApi apiInstance = new AlertRoutesApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      DeleteAlertRoute200Response result = apiInstance.deleteAlertRoute(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AlertRoutesApi#deleteAlertRoute");
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

[**DeleteAlertRoute200Response**](DeleteAlertRoute200Response.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | alert route deleted |  -  |
| **404** | cross-team access denied |  -  |
| **422** | destroy failed |  -  |
| **401** | unauthorized |  -  |

<a id="getAlertRoute"></a>
# **getAlertRoute**
> AlertRouteResponse getAlertRoute(id)

Get an alert route

Get a specific alert route by id. **Note: This endpoint requires access to Advanced Alert Routing. If you&#39;re unsure whether you have access to this feature, please contact Rootly customer support.**

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.AlertRoutesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    AlertRoutesApi apiInstance = new AlertRoutesApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      AlertRouteResponse result = apiInstance.getAlertRoute(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AlertRoutesApi#getAlertRoute");
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

[**AlertRouteResponse**](AlertRouteResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | alert route found |  -  |
| **404** | cross-team access denied |  -  |
| **401** | unauthorized |  -  |

<a id="listAlertRoutes"></a>
# **listAlertRoutes**
> AlertRouteList listAlertRoutes(pageNumber, pageSize, filterSearch, filterName, sort)

List alert routes

List all alert routes for the current team with filtering and pagination. **Note: This endpoint requires access to Advanced Alert Routing. If you&#39;re unsure whether you have access to this feature, please contact Rootly customer support.**

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.AlertRoutesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    AlertRoutesApi apiInstance = new AlertRoutesApi(defaultClient);
    Integer pageNumber = 56; // Integer | 
    Integer pageSize = 56; // Integer | 
    String filterSearch = "filterSearch_example"; // String | 
    String filterName = "filterName_example"; // String | 
    String sort = "sort_example"; // String | 
    try {
      AlertRouteList result = apiInstance.listAlertRoutes(pageNumber, pageSize, filterSearch, filterName, sort);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AlertRoutesApi#listAlertRoutes");
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
| **pageNumber** | **Integer**|  | [optional] |
| **pageSize** | **Integer**|  | [optional] |
| **filterSearch** | **String**|  | [optional] |
| **filterName** | **String**|  | [optional] |
| **sort** | **String**|  | [optional] |

### Return type

[**AlertRouteList**](AlertRouteList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | alert routes filtered by search |  -  |
| **401** | unauthorized |  -  |

<a id="updateAlertRoute"></a>
# **updateAlertRoute**
> AlertRouteResponse updateAlertRoute(id, updateAlertRoute)

Update an alert route

Update a specific alert route by id. **Note: This endpoint requires access to Advanced Alert Routing. If you&#39;re unsure whether you have access to this feature, please contact Rootly customer support.**  ## Asynchronous Rule Creation  For organizations with large numbers of routing rules, Rootly supports asynchronous rule processing to improve performance. When enabled, rule updates happen in the background.  **Important**: When async processing is enabled, the rules list in the API response will not be up-to-date immediately after update. You should refetch the alert route after a few minutes to get the updated rules.  If you experience slow operations when managing alert routes with many rules, contact Rootly customer support to enable asynchronous rule processing for your organization.

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.AlertRoutesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    AlertRoutesApi apiInstance = new AlertRoutesApi(defaultClient);
    String id = "id_example"; // String | 
    UpdateAlertRoute updateAlertRoute = new UpdateAlertRoute(); // UpdateAlertRoute | 
    try {
      AlertRouteResponse result = apiInstance.updateAlertRoute(id, updateAlertRoute);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AlertRoutesApi#updateAlertRoute");
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
| **updateAlertRoute** | [**UpdateAlertRoute**](UpdateAlertRoute.md)|  | |

### Return type

[**AlertRouteResponse**](AlertRouteResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | update: handles mixed position types correctly |  -  |
| **422** | update: raises error when multiple fallback rules are present |  -  |
| **404** | cross-team access denied |  -  |


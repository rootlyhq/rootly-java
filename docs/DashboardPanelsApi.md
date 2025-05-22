# DashboardPanelsApi

All URIs are relative to *https://api.rootly.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createDashboardPanel**](DashboardPanelsApi.md#createDashboardPanel) | **POST** /v1/dashboards/{dashboard_id}/panels | Creates a dashboard panel |
| [**deleteDashboardPanel**](DashboardPanelsApi.md#deleteDashboardPanel) | **DELETE** /v1/dashboard_panels/{id} | Delete a dashboard panel |
| [**duplicateDashboardPanel**](DashboardPanelsApi.md#duplicateDashboardPanel) | **POST** /v1/dashboard_panels/{id}/duplicate | Duplicates a dashboard panel |
| [**getDashboardPanel**](DashboardPanelsApi.md#getDashboardPanel) | **GET** /v1/dashboard_panels/{id} | Retrieves a dashboard panel |
| [**listDashboardPanels**](DashboardPanelsApi.md#listDashboardPanels) | **GET** /v1/dashboards/{dashboard_id}/panels | List dashboard panels |
| [**updateDashboardPanel**](DashboardPanelsApi.md#updateDashboardPanel) | **PUT** /v1/dashboard_panels/{id} | Update a dashboard panel |


<a id="createDashboardPanel"></a>
# **createDashboardPanel**
> DashboardPanelResponse createDashboardPanel(dashboardId, newDashboardPanel)

Creates a dashboard panel

Creates a new dashboard panel from provided data

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.DashboardPanelsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    DashboardPanelsApi apiInstance = new DashboardPanelsApi(defaultClient);
    String dashboardId = "dashboardId_example"; // String | 
    NewDashboardPanel newDashboardPanel = new NewDashboardPanel(); // NewDashboardPanel | 
    try {
      DashboardPanelResponse result = apiInstance.createDashboardPanel(dashboardId, newDashboardPanel);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling DashboardPanelsApi#createDashboardPanel");
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
| **dashboardId** | **String**|  | |
| **newDashboardPanel** | [**NewDashboardPanel**](NewDashboardPanel.md)|  | |

### Return type

[**DashboardPanelResponse**](DashboardPanelResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | dashboard panel created |  -  |
| **401** | responds with unauthorized for invalid token |  -  |

<a id="deleteDashboardPanel"></a>
# **deleteDashboardPanel**
> DashboardPanelResponse deleteDashboardPanel(id)

Delete a dashboard panel

Delete a specific dashboard panel by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.DashboardPanelsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    DashboardPanelsApi apiInstance = new DashboardPanelsApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      DashboardPanelResponse result = apiInstance.deleteDashboardPanel(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling DashboardPanelsApi#deleteDashboardPanel");
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

[**DashboardPanelResponse**](DashboardPanelResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | dashboard panel deleted |  -  |

<a id="duplicateDashboardPanel"></a>
# **duplicateDashboardPanel**
> DashboardPanelResponse duplicateDashboardPanel(id)

Duplicates a dashboard panel

Duplicates a dashboard panel

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.DashboardPanelsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    DashboardPanelsApi apiInstance = new DashboardPanelsApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      DashboardPanelResponse result = apiInstance.duplicateDashboardPanel(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling DashboardPanelsApi#duplicateDashboardPanel");
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

[**DashboardPanelResponse**](DashboardPanelResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | dashboard panel created |  -  |
| **401** | responds with unauthorized for invalid token |  -  |

<a id="getDashboardPanel"></a>
# **getDashboardPanel**
> DashboardPanelResponse getDashboardPanel(id, range, period, timeZone)

Retrieves a dashboard panel

Retrieves a specific dashboard panel by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.DashboardPanelsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    DashboardPanelsApi apiInstance = new DashboardPanelsApi(defaultClient);
    String id = "id_example"; // String | 
    String range = "range_example"; // String | Date range for panel data, ISO8601 timestamps separated by the word 'to'. Ex: '2022-06-19T11:28:46.029Z to 2022-07-18T21:58:46.029Z'.
    String period = "period_example"; // String | The time period to group data by. Accepts 'day', 'week', and 'month'
    String timeZone = "timeZone_example"; // String | The time zone to use for period
    try {
      DashboardPanelResponse result = apiInstance.getDashboardPanel(id, range, period, timeZone);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling DashboardPanelsApi#getDashboardPanel");
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
| **range** | **String**| Date range for panel data, ISO8601 timestamps separated by the word &#39;to&#39;. Ex: &#39;2022-06-19T11:28:46.029Z to 2022-07-18T21:58:46.029Z&#39;. | [optional] |
| **period** | **String**| The time period to group data by. Accepts &#39;day&#39;, &#39;week&#39;, and &#39;month&#39; | [optional] |
| **timeZone** | **String**| The time zone to use for period | [optional] |

### Return type

[**DashboardPanelResponse**](DashboardPanelResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | dashboard panel found |  -  |

<a id="listDashboardPanels"></a>
# **listDashboardPanels**
> DashboardPanelList listDashboardPanels(dashboardId, include, pageNumber, pageSize)

List dashboard panels

List dashboard panels

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.DashboardPanelsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    DashboardPanelsApi apiInstance = new DashboardPanelsApi(defaultClient);
    String dashboardId = "dashboardId_example"; // String | 
    String include = "include_example"; // String | 
    Integer pageNumber = 56; // Integer | 
    Integer pageSize = 56; // Integer | 
    try {
      DashboardPanelList result = apiInstance.listDashboardPanels(dashboardId, include, pageNumber, pageSize);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling DashboardPanelsApi#listDashboardPanels");
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
| **dashboardId** | **String**|  | |
| **include** | **String**|  | [optional] |
| **pageNumber** | **Integer**|  | [optional] |
| **pageSize** | **Integer**|  | [optional] |

### Return type

[**DashboardPanelList**](DashboardPanelList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | success |  -  |

<a id="updateDashboardPanel"></a>
# **updateDashboardPanel**
> DashboardPanelResponse updateDashboardPanel(id, updateDashboardPanel)

Update a dashboard panel

Update a specific dashboard panel by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.DashboardPanelsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    DashboardPanelsApi apiInstance = new DashboardPanelsApi(defaultClient);
    String id = "id_example"; // String | 
    UpdateDashboardPanel updateDashboardPanel = new UpdateDashboardPanel(); // UpdateDashboardPanel | 
    try {
      DashboardPanelResponse result = apiInstance.updateDashboardPanel(id, updateDashboardPanel);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling DashboardPanelsApi#updateDashboardPanel");
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
| **updateDashboardPanel** | [**UpdateDashboardPanel**](UpdateDashboardPanel.md)|  | |

### Return type

[**DashboardPanelResponse**](DashboardPanelResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | dashboard panel updated |  -  |


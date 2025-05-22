# AlertSourcesApi

All URIs are relative to *https://api.rootly.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createAlertSource**](AlertSourcesApi.md#createAlertSource) | **POST** /v1/alert_sources | Creates an alert source |
| [**deleteAlertSource**](AlertSourcesApi.md#deleteAlertSource) | **DELETE** /v1/alert_sources/{id} | Delete an alert source |
| [**getAlertSource**](AlertSourcesApi.md#getAlertSource) | **GET** /v1/alert_sources/{id} | Retrieves an alert source |
| [**listAlertSources**](AlertSourcesApi.md#listAlertSources) | **GET** /v1/alert_sources | List alert sources |
| [**updateAlertSource**](AlertSourcesApi.md#updateAlertSource) | **PUT** /v1/alert_sources/{id} | Update an alert source |


<a id="createAlertSource"></a>
# **createAlertSource**
> AlertsSourceResponse createAlertSource(newAlertsSource)

Creates an alert source

Creates a new alert source from provided data

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.AlertSourcesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    AlertSourcesApi apiInstance = new AlertSourcesApi(defaultClient);
    NewAlertsSource newAlertsSource = new NewAlertsSource(); // NewAlertsSource | 
    try {
      AlertsSourceResponse result = apiInstance.createAlertSource(newAlertsSource);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AlertSourcesApi#createAlertSource");
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
| **newAlertsSource** | [**NewAlertsSource**](NewAlertsSource.md)|  | |

### Return type

[**AlertsSourceResponse**](AlertsSourceResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | alert source created with resolution rule |  -  |
| **422** | invalid request |  -  |
| **401** | responds with unauthorized for invalid token |  -  |

<a id="deleteAlertSource"></a>
# **deleteAlertSource**
> AlertsSourceResponse deleteAlertSource(id)

Delete an alert source

Delete a specific alert source by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.AlertSourcesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    AlertSourcesApi apiInstance = new AlertSourcesApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      AlertsSourceResponse result = apiInstance.deleteAlertSource(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AlertSourcesApi#deleteAlertSource");
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

[**AlertsSourceResponse**](AlertsSourceResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | alert source deleted |  -  |
| **404** | resource not found |  -  |

<a id="getAlertSource"></a>
# **getAlertSource**
> AlertsSourceResponse getAlertSource(id)

Retrieves an alert source

Retrieves a specific alert source by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.AlertSourcesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    AlertSourcesApi apiInstance = new AlertSourcesApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      AlertsSourceResponse result = apiInstance.getAlertSource(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AlertSourcesApi#getAlertSource");
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

[**AlertsSourceResponse**](AlertsSourceResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | alert source found |  -  |
| **404** | resource not found |  -  |

<a id="listAlertSources"></a>
# **listAlertSources**
> AlertsSourceList listAlertSources(include, pageNumber, pageSize, filterSearch, filterStatuses, filterSourceTypes, sort)

List alert sources

List alert sources

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.AlertSourcesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    AlertSourcesApi apiInstance = new AlertSourcesApi(defaultClient);
    String include = "include_example"; // String | 
    Integer pageNumber = 56; // Integer | 
    Integer pageSize = 56; // Integer | 
    String filterSearch = "filterSearch_example"; // String | 
    String filterStatuses = "filterStatuses_example"; // String | 
    String filterSourceTypes = "filterSourceTypes_example"; // String | 
    String sort = "sort_example"; // String | 
    try {
      AlertsSourceList result = apiInstance.listAlertSources(include, pageNumber, pageSize, filterSearch, filterStatuses, filterSourceTypes, sort);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AlertSourcesApi#listAlertSources");
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
| **filterStatuses** | **String**|  | [optional] |
| **filterSourceTypes** | **String**|  | [optional] |
| **sort** | **String**|  | [optional] |

### Return type

[**AlertsSourceList**](AlertsSourceList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | success |  -  |

<a id="updateAlertSource"></a>
# **updateAlertSource**
> AlertsSourceResponse updateAlertSource(id, updateAlertsSource)

Update an alert source

Update a specific alert source by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.AlertSourcesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    AlertSourcesApi apiInstance = new AlertSourcesApi(defaultClient);
    String id = "id_example"; // String | 
    UpdateAlertsSource updateAlertsSource = new UpdateAlertsSource(); // UpdateAlertsSource | 
    try {
      AlertsSourceResponse result = apiInstance.updateAlertSource(id, updateAlertsSource);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AlertSourcesApi#updateAlertSource");
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
| **updateAlertsSource** | [**UpdateAlertsSource**](UpdateAlertsSource.md)|  | |

### Return type

[**AlertsSourceResponse**](AlertsSourceResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | alert source updated |  -  |
| **404** | resource not found |  -  |


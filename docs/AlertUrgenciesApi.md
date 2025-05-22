# AlertUrgenciesApi

All URIs are relative to *https://api.rootly.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createAlertUrgency**](AlertUrgenciesApi.md#createAlertUrgency) | **POST** /v1/alert_urgencies | Creates an alert urgency |
| [**deleteAlertUrgency**](AlertUrgenciesApi.md#deleteAlertUrgency) | **DELETE** /v1/alert_urgencies/{id} | Delete an alert urgency |
| [**getAlertUrgency**](AlertUrgenciesApi.md#getAlertUrgency) | **GET** /v1/alert_urgencies/{id} | Retrieves an alert urgency |
| [**listAlertUrgencies**](AlertUrgenciesApi.md#listAlertUrgencies) | **GET** /v1/alert_urgencies | List alert urgencies |
| [**updateAlertUrgency**](AlertUrgenciesApi.md#updateAlertUrgency) | **PUT** /v1/alert_urgencies/{id} | Update an alert urgency |


<a id="createAlertUrgency"></a>
# **createAlertUrgency**
> AlertUrgencyResponse createAlertUrgency(newAlertUrgency)

Creates an alert urgency

Creates a new alert urgency from provided data

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.AlertUrgenciesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    AlertUrgenciesApi apiInstance = new AlertUrgenciesApi(defaultClient);
    NewAlertUrgency newAlertUrgency = new NewAlertUrgency(); // NewAlertUrgency | 
    try {
      AlertUrgencyResponse result = apiInstance.createAlertUrgency(newAlertUrgency);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AlertUrgenciesApi#createAlertUrgency");
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
| **newAlertUrgency** | [**NewAlertUrgency**](NewAlertUrgency.md)|  | |

### Return type

[**AlertUrgencyResponse**](AlertUrgencyResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | alert urgency created |  -  |
| **422** | invalid request |  -  |
| **401** | responds with unauthorized for invalid token |  -  |

<a id="deleteAlertUrgency"></a>
# **deleteAlertUrgency**
> AlertUrgencyResponse deleteAlertUrgency(id)

Delete an alert urgency

Delete a specific alert urgency by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.AlertUrgenciesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    AlertUrgenciesApi apiInstance = new AlertUrgenciesApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      AlertUrgencyResponse result = apiInstance.deleteAlertUrgency(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AlertUrgenciesApi#deleteAlertUrgency");
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

[**AlertUrgencyResponse**](AlertUrgencyResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | alert urgency deleted |  -  |
| **404** | resource not found |  -  |

<a id="getAlertUrgency"></a>
# **getAlertUrgency**
> AlertUrgencyResponse getAlertUrgency(id)

Retrieves an alert urgency

Retrieves a specific alert urgency by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.AlertUrgenciesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    AlertUrgenciesApi apiInstance = new AlertUrgenciesApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      AlertUrgencyResponse result = apiInstance.getAlertUrgency(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AlertUrgenciesApi#getAlertUrgency");
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

[**AlertUrgencyResponse**](AlertUrgencyResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | alert urgency found |  -  |
| **404** | resource not found |  -  |

<a id="listAlertUrgencies"></a>
# **listAlertUrgencies**
> AlertUrgencyList listAlertUrgencies(include, pageNumber, pageSize, filterSearch, filterName, filterCreatedAtGt, filterCreatedAtGte, filterCreatedAtLt, filterCreatedAtLte, sort)

List alert urgencies

List alert urgencies

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.AlertUrgenciesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    AlertUrgenciesApi apiInstance = new AlertUrgenciesApi(defaultClient);
    String include = "include_example"; // String | 
    Integer pageNumber = 56; // Integer | 
    Integer pageSize = 56; // Integer | 
    String filterSearch = "filterSearch_example"; // String | 
    String filterName = "filterName_example"; // String | 
    String filterCreatedAtGt = "filterCreatedAtGt_example"; // String | 
    String filterCreatedAtGte = "filterCreatedAtGte_example"; // String | 
    String filterCreatedAtLt = "filterCreatedAtLt_example"; // String | 
    String filterCreatedAtLte = "filterCreatedAtLte_example"; // String | 
    String sort = "sort_example"; // String | 
    try {
      AlertUrgencyList result = apiInstance.listAlertUrgencies(include, pageNumber, pageSize, filterSearch, filterName, filterCreatedAtGt, filterCreatedAtGte, filterCreatedAtLt, filterCreatedAtLte, sort);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AlertUrgenciesApi#listAlertUrgencies");
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
| **filterCreatedAtGt** | **String**|  | [optional] |
| **filterCreatedAtGte** | **String**|  | [optional] |
| **filterCreatedAtLt** | **String**|  | [optional] |
| **filterCreatedAtLte** | **String**|  | [optional] |
| **sort** | **String**|  | [optional] |

### Return type

[**AlertUrgencyList**](AlertUrgencyList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | success |  -  |

<a id="updateAlertUrgency"></a>
# **updateAlertUrgency**
> AlertUrgencyResponse updateAlertUrgency(id, updateAlertUrgency)

Update an alert urgency

Update a specific alert urgency by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.AlertUrgenciesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    AlertUrgenciesApi apiInstance = new AlertUrgenciesApi(defaultClient);
    String id = "id_example"; // String | 
    UpdateAlertUrgency updateAlertUrgency = new UpdateAlertUrgency(); // UpdateAlertUrgency | 
    try {
      AlertUrgencyResponse result = apiInstance.updateAlertUrgency(id, updateAlertUrgency);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AlertUrgenciesApi#updateAlertUrgency");
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
| **updateAlertUrgency** | [**UpdateAlertUrgency**](UpdateAlertUrgency.md)|  | |

### Return type

[**AlertUrgencyResponse**](AlertUrgencyResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | alert urgency updated |  -  |
| **404** | resource not found |  -  |


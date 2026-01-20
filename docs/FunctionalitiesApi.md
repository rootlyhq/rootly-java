# FunctionalitiesApi

All URIs are relative to *https://api.rootly.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createFunctionality**](FunctionalitiesApi.md#createFunctionality) | **POST** /v1/functionalities | Creates a functionality |
| [**deleteFunctionality**](FunctionalitiesApi.md#deleteFunctionality) | **DELETE** /v1/functionalities/{id} | Delete a functionality |
| [**getFunctionality**](FunctionalitiesApi.md#getFunctionality) | **GET** /v1/functionalities/{id} | Retrieves a functionality |
| [**getFunctionalityIncidentsChart**](FunctionalitiesApi.md#getFunctionalityIncidentsChart) | **GET** /v1/functionalities/{id}/incidents_chart | Get functionality incidents chart |
| [**getFunctionalityUptimeChart**](FunctionalitiesApi.md#getFunctionalityUptimeChart) | **GET** /v1/functionalities/{id}/uptime_chart | Get functionality uptime chart |
| [**listFunctionalities**](FunctionalitiesApi.md#listFunctionalities) | **GET** /v1/functionalities | List functionalities |
| [**updateFunctionality**](FunctionalitiesApi.md#updateFunctionality) | **PUT** /v1/functionalities/{id} | Update a functionality |


<a id="createFunctionality"></a>
# **createFunctionality**
> FunctionalityResponse createFunctionality(newFunctionality)

Creates a functionality

Creates a new functionality from provided data

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.FunctionalitiesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    FunctionalitiesApi apiInstance = new FunctionalitiesApi(defaultClient);
    NewFunctionality newFunctionality = new NewFunctionality(); // NewFunctionality | 
    try {
      FunctionalityResponse result = apiInstance.createFunctionality(newFunctionality);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling FunctionalitiesApi#createFunctionality");
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
| **newFunctionality** | [**NewFunctionality**](NewFunctionality.md)|  | |

### Return type

[**FunctionalityResponse**](FunctionalityResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | functionality created |  -  |
| **422** | invalid request |  -  |
| **401** | responds with unauthorized for invalid token |  -  |

<a id="deleteFunctionality"></a>
# **deleteFunctionality**
> FunctionalityResponse deleteFunctionality(id)

Delete a functionality

Delete a specific functionality by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.FunctionalitiesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    FunctionalitiesApi apiInstance = new FunctionalitiesApi(defaultClient);
    GetAlertFieldIdParameter id = new GetAlertFieldIdParameter(); // GetAlertFieldIdParameter | 
    try {
      FunctionalityResponse result = apiInstance.deleteFunctionality(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling FunctionalitiesApi#deleteFunctionality");
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
| **id** | [**GetAlertFieldIdParameter**](.md)|  | |

### Return type

[**FunctionalityResponse**](FunctionalityResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | functionality deleted |  -  |
| **404** | resource not found |  -  |

<a id="getFunctionality"></a>
# **getFunctionality**
> FunctionalityResponse getFunctionality(id)

Retrieves a functionality

Retrieves a specific functionality by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.FunctionalitiesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    FunctionalitiesApi apiInstance = new FunctionalitiesApi(defaultClient);
    GetAlertFieldIdParameter id = new GetAlertFieldIdParameter(); // GetAlertFieldIdParameter | 
    try {
      FunctionalityResponse result = apiInstance.getFunctionality(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling FunctionalitiesApi#getFunctionality");
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
| **id** | [**GetAlertFieldIdParameter**](.md)|  | |

### Return type

[**FunctionalityResponse**](FunctionalityResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | functionality found |  -  |
| **404** | resource not found |  -  |

<a id="getFunctionalityIncidentsChart"></a>
# **getFunctionalityIncidentsChart**
> Object getFunctionalityIncidentsChart(id, period)

Get functionality incidents chart

Get functionality incidents chart

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.FunctionalitiesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    FunctionalitiesApi apiInstance = new FunctionalitiesApi(defaultClient);
    GetAlertFieldIdParameter id = new GetAlertFieldIdParameter(); // GetAlertFieldIdParameter | 
    String period = "period_example"; // String | 
    try {
      Object result = apiInstance.getFunctionalityIncidentsChart(id, period);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling FunctionalitiesApi#getFunctionalityIncidentsChart");
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
| **id** | [**GetAlertFieldIdParameter**](.md)|  | |
| **period** | **String**|  | |

### Return type

**Object**

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

<a id="getFunctionalityUptimeChart"></a>
# **getFunctionalityUptimeChart**
> Object getFunctionalityUptimeChart(id, period)

Get functionality uptime chart

Get functionality uptime chart

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.FunctionalitiesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    FunctionalitiesApi apiInstance = new FunctionalitiesApi(defaultClient);
    GetAlertFieldIdParameter id = new GetAlertFieldIdParameter(); // GetAlertFieldIdParameter | 
    String period = "period_example"; // String | 
    try {
      Object result = apiInstance.getFunctionalityUptimeChart(id, period);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling FunctionalitiesApi#getFunctionalityUptimeChart");
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
| **id** | [**GetAlertFieldIdParameter**](.md)|  | |
| **period** | **String**|  | [optional] |

### Return type

**Object**

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

<a id="listFunctionalities"></a>
# **listFunctionalities**
> FunctionalityList listFunctionalities(include, pageNumber, pageSize, filterSearch, filterName, filterBackstageId, filterCortexId, filterOpslevelId, filterExternalId, filterSlug, filterCreatedAtGt, filterCreatedAtGte, filterCreatedAtLt, filterCreatedAtLte, sort)

List functionalities

List functionalities

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.FunctionalitiesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    FunctionalitiesApi apiInstance = new FunctionalitiesApi(defaultClient);
    String include = "include_example"; // String | 
    Integer pageNumber = 56; // Integer | 
    Integer pageSize = 56; // Integer | 
    String filterSearch = "filterSearch_example"; // String | 
    String filterName = "filterName_example"; // String | 
    String filterBackstageId = "filterBackstageId_example"; // String | 
    String filterCortexId = "filterCortexId_example"; // String | 
    String filterOpslevelId = "filterOpslevelId_example"; // String | 
    String filterExternalId = "filterExternalId_example"; // String | 
    String filterSlug = "filterSlug_example"; // String | 
    String filterCreatedAtGt = "filterCreatedAtGt_example"; // String | 
    String filterCreatedAtGte = "filterCreatedAtGte_example"; // String | 
    String filterCreatedAtLt = "filterCreatedAtLt_example"; // String | 
    String filterCreatedAtLte = "filterCreatedAtLte_example"; // String | 
    String sort = "sort_example"; // String | 
    try {
      FunctionalityList result = apiInstance.listFunctionalities(include, pageNumber, pageSize, filterSearch, filterName, filterBackstageId, filterCortexId, filterOpslevelId, filterExternalId, filterSlug, filterCreatedAtGt, filterCreatedAtGte, filterCreatedAtLt, filterCreatedAtLte, sort);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling FunctionalitiesApi#listFunctionalities");
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
| **filterBackstageId** | **String**|  | [optional] |
| **filterCortexId** | **String**|  | [optional] |
| **filterOpslevelId** | **String**|  | [optional] |
| **filterExternalId** | **String**|  | [optional] |
| **filterSlug** | **String**|  | [optional] |
| **filterCreatedAtGt** | **String**|  | [optional] |
| **filterCreatedAtGte** | **String**|  | [optional] |
| **filterCreatedAtLt** | **String**|  | [optional] |
| **filterCreatedAtLte** | **String**|  | [optional] |
| **sort** | **String**|  | [optional] |

### Return type

[**FunctionalityList**](FunctionalityList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | success |  -  |

<a id="updateFunctionality"></a>
# **updateFunctionality**
> FunctionalityResponse updateFunctionality(id, updateFunctionality)

Update a functionality

Update a specific functionality by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.FunctionalitiesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    FunctionalitiesApi apiInstance = new FunctionalitiesApi(defaultClient);
    GetAlertFieldIdParameter id = new GetAlertFieldIdParameter(); // GetAlertFieldIdParameter | 
    UpdateFunctionality updateFunctionality = new UpdateFunctionality(); // UpdateFunctionality | 
    try {
      FunctionalityResponse result = apiInstance.updateFunctionality(id, updateFunctionality);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling FunctionalitiesApi#updateFunctionality");
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
| **id** | [**GetAlertFieldIdParameter**](.md)|  | |
| **updateFunctionality** | [**UpdateFunctionality**](UpdateFunctionality.md)|  | |

### Return type

[**FunctionalityResponse**](FunctionalityResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | functionality updated |  -  |
| **404** | resource not found |  -  |


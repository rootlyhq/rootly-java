# CommunicationsStagesApi

All URIs are relative to *https://api.rootly.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createCommunicationsStage**](CommunicationsStagesApi.md#createCommunicationsStage) | **POST** /v1/communications/stages | Creates a communications stage |
| [**deleteCommunicationsStage**](CommunicationsStagesApi.md#deleteCommunicationsStage) | **DELETE** /v1/communications/stages/{id} | Deletes a communications stage |
| [**getCommunicationsStage**](CommunicationsStagesApi.md#getCommunicationsStage) | **GET** /v1/communications/stages/{id} | Shows a communications stage |
| [**listCommunicationsStages**](CommunicationsStagesApi.md#listCommunicationsStages) | **GET** /v1/communications/stages | Lists communications stages |
| [**updateCommunicationsStage**](CommunicationsStagesApi.md#updateCommunicationsStage) | **PATCH** /v1/communications/stages/{id} | Updates a communications stage |


<a id="createCommunicationsStage"></a>
# **createCommunicationsStage**
> CommunicationsStageResponse createCommunicationsStage(newCommunicationsStage)

Creates a communications stage

Creates a new communications stage from provided data

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.CommunicationsStagesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    CommunicationsStagesApi apiInstance = new CommunicationsStagesApi(defaultClient);
    NewCommunicationsStage newCommunicationsStage = new NewCommunicationsStage(); // NewCommunicationsStage | 
    try {
      CommunicationsStageResponse result = apiInstance.createCommunicationsStage(newCommunicationsStage);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling CommunicationsStagesApi#createCommunicationsStage");
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
| **newCommunicationsStage** | [**NewCommunicationsStage**](NewCommunicationsStage.md)|  | |

### Return type

[**CommunicationsStageResponse**](CommunicationsStageResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | communications stage created |  -  |
| **422** | invalid request |  -  |
| **401** | unauthorized |  -  |

<a id="deleteCommunicationsStage"></a>
# **deleteCommunicationsStage**
> deleteCommunicationsStage(id)

Deletes a communications stage

Deletes a communications stage

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.CommunicationsStagesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    CommunicationsStagesApi apiInstance = new CommunicationsStagesApi(defaultClient);
    String id = "id_example"; // String | Communications Stage ID
    try {
      apiInstance.deleteCommunicationsStage(id);
    } catch (ApiException e) {
      System.err.println("Exception when calling CommunicationsStagesApi#deleteCommunicationsStage");
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
| **id** | **String**| Communications Stage ID | |

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
| **200** | communications stage deleted |  -  |
| **404** | communications stage not found |  -  |

<a id="getCommunicationsStage"></a>
# **getCommunicationsStage**
> CommunicationsStageResponse getCommunicationsStage(id)

Shows a communications stage

Shows details of a communications stage

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.CommunicationsStagesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    CommunicationsStagesApi apiInstance = new CommunicationsStagesApi(defaultClient);
    String id = "id_example"; // String | Communications Stage ID
    try {
      CommunicationsStageResponse result = apiInstance.getCommunicationsStage(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling CommunicationsStagesApi#getCommunicationsStage");
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
| **id** | **String**| Communications Stage ID | |

### Return type

[**CommunicationsStageResponse**](CommunicationsStageResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | communications stage found |  -  |
| **404** | resource not found |  -  |

<a id="listCommunicationsStages"></a>
# **listCommunicationsStages**
> CommunicationsStagesResponse listCommunicationsStages(pageNumber, pageSize, filterSearch, filterName, filterSlug, filterCreatedAtGt, filterCreatedAtGte, filterCreatedAtLt, filterCreatedAtLte, sort)

Lists communications stages

Lists communications stages

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.CommunicationsStagesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    CommunicationsStagesApi apiInstance = new CommunicationsStagesApi(defaultClient);
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
      CommunicationsStagesResponse result = apiInstance.listCommunicationsStages(pageNumber, pageSize, filterSearch, filterName, filterSlug, filterCreatedAtGt, filterCreatedAtGte, filterCreatedAtLt, filterCreatedAtLte, sort);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling CommunicationsStagesApi#listCommunicationsStages");
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
| **filterSlug** | **String**|  | [optional] |
| **filterCreatedAtGt** | **String**|  | [optional] |
| **filterCreatedAtGte** | **String**|  | [optional] |
| **filterCreatedAtLt** | **String**|  | [optional] |
| **filterCreatedAtLte** | **String**|  | [optional] |
| **sort** | **String**|  | [optional] |

### Return type

[**CommunicationsStagesResponse**](CommunicationsStagesResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | communications stages found |  -  |

<a id="updateCommunicationsStage"></a>
# **updateCommunicationsStage**
> CommunicationsStageResponse updateCommunicationsStage(id, updateCommunicationsStage)

Updates a communications stage

Updates a communications stage

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.CommunicationsStagesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    CommunicationsStagesApi apiInstance = new CommunicationsStagesApi(defaultClient);
    String id = "id_example"; // String | Communications Stage ID
    UpdateCommunicationsStage updateCommunicationsStage = new UpdateCommunicationsStage(); // UpdateCommunicationsStage | 
    try {
      CommunicationsStageResponse result = apiInstance.updateCommunicationsStage(id, updateCommunicationsStage);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling CommunicationsStagesApi#updateCommunicationsStage");
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
| **id** | **String**| Communications Stage ID | |
| **updateCommunicationsStage** | [**UpdateCommunicationsStage**](UpdateCommunicationsStage.md)|  | |

### Return type

[**CommunicationsStageResponse**](CommunicationsStageResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | communications stage updated |  -  |
| **422** | invalid request |  -  |


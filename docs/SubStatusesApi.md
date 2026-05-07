# SubStatusesApi

All URIs are relative to *https://api.rootly.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createSubStatus**](SubStatusesApi.md#createSubStatus) | **POST** /v1/sub_statuses | Creates a Sub-Status |
| [**deleteSubStatus**](SubStatusesApi.md#deleteSubStatus) | **DELETE** /v1/sub_statuses/{id} | Delete a Sub-Status |
| [**getSubStatus**](SubStatusesApi.md#getSubStatus) | **GET** /v1/sub_statuses/{id} | Retrieves a Sub-Status |
| [**listSubStatuses**](SubStatusesApi.md#listSubStatuses) | **GET** /v1/sub_statuses | List Sub-Statuses |
| [**updateSubStatus**](SubStatusesApi.md#updateSubStatus) | **PUT** /v1/sub_statuses/{id} | Update a Sub-Status |


<a id="createSubStatus"></a>
# **createSubStatus**
> SubStatusResponse createSubStatus(newSubStatus)

Creates a Sub-Status

Creates a new Sub-Status from provided data

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.SubStatusesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    SubStatusesApi apiInstance = new SubStatusesApi(defaultClient);
    NewSubStatus newSubStatus = new NewSubStatus(); // NewSubStatus | 
    try {
      SubStatusResponse result = apiInstance.createSubStatus(newSubStatus);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling SubStatusesApi#createSubStatus");
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
| **newSubStatus** | [**NewSubStatus**](NewSubStatus.md)|  | |

### Return type

[**SubStatusResponse**](SubStatusResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | sub_status created |  -  |
| **422** | invalid request |  -  |
| **401** | responds with unauthorized for invalid token |  -  |

<a id="deleteSubStatus"></a>
# **deleteSubStatus**
> SubStatusResponse deleteSubStatus(id)

Delete a Sub-Status

Delete a specific Sub-Status by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.SubStatusesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    SubStatusesApi apiInstance = new SubStatusesApi(defaultClient);
    GetAlertFieldIdParameter id = new GetAlertFieldIdParameter(); // GetAlertFieldIdParameter | 
    try {
      SubStatusResponse result = apiInstance.deleteSubStatus(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling SubStatusesApi#deleteSubStatus");
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

[**SubStatusResponse**](SubStatusResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | sub_status deleted |  -  |
| **404** | resource not found |  -  |

<a id="getSubStatus"></a>
# **getSubStatus**
> SubStatusResponse getSubStatus(id)

Retrieves a Sub-Status

Retrieves a specific Sub-Status by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.SubStatusesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    SubStatusesApi apiInstance = new SubStatusesApi(defaultClient);
    GetAlertFieldIdParameter id = new GetAlertFieldIdParameter(); // GetAlertFieldIdParameter | 
    try {
      SubStatusResponse result = apiInstance.getSubStatus(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling SubStatusesApi#getSubStatus");
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

[**SubStatusResponse**](SubStatusResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | sub_status found by slug |  -  |
| **404** | resource not found |  -  |

<a id="listSubStatuses"></a>
# **listSubStatuses**
> SubStatusList listSubStatuses(include, pageNumber, pageSize, filterSlug, filterName, filterParentStatus, filterCreatedAtGt, filterCreatedAtGte, filterCreatedAtLt, filterCreatedAtLte)

List Sub-Statuses

List Sub-Statuses

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.SubStatusesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    SubStatusesApi apiInstance = new SubStatusesApi(defaultClient);
    String include = "include_example"; // String | 
    Integer pageNumber = 56; // Integer | 
    Integer pageSize = 56; // Integer | 
    String filterSlug = "filterSlug_example"; // String | 
    String filterName = "filterName_example"; // String | 
    String filterParentStatus = "filterParentStatus_example"; // String | 
    String filterCreatedAtGt = "filterCreatedAtGt_example"; // String | 
    String filterCreatedAtGte = "filterCreatedAtGte_example"; // String | 
    String filterCreatedAtLt = "filterCreatedAtLt_example"; // String | 
    String filterCreatedAtLte = "filterCreatedAtLte_example"; // String | 
    try {
      SubStatusList result = apiInstance.listSubStatuses(include, pageNumber, pageSize, filterSlug, filterName, filterParentStatus, filterCreatedAtGt, filterCreatedAtGte, filterCreatedAtLt, filterCreatedAtLte);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling SubStatusesApi#listSubStatuses");
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
| **filterSlug** | **String**|  | [optional] |
| **filterName** | **String**|  | [optional] |
| **filterParentStatus** | **String**|  | [optional] |
| **filterCreatedAtGt** | **String**|  | [optional] |
| **filterCreatedAtGte** | **String**|  | [optional] |
| **filterCreatedAtLt** | **String**|  | [optional] |
| **filterCreatedAtLte** | **String**|  | [optional] |

### Return type

[**SubStatusList**](SubStatusList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | success |  -  |

<a id="updateSubStatus"></a>
# **updateSubStatus**
> SubStatusResponse updateSubStatus(id, updateSubStatus)

Update a Sub-Status

Update a specific Sub-Status by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.SubStatusesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    SubStatusesApi apiInstance = new SubStatusesApi(defaultClient);
    GetAlertFieldIdParameter id = new GetAlertFieldIdParameter(); // GetAlertFieldIdParameter | 
    UpdateSubStatus updateSubStatus = new UpdateSubStatus(); // UpdateSubStatus | 
    try {
      SubStatusResponse result = apiInstance.updateSubStatus(id, updateSubStatus);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling SubStatusesApi#updateSubStatus");
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
| **updateSubStatus** | [**UpdateSubStatus**](UpdateSubStatus.md)|  | |

### Return type

[**SubStatusResponse**](SubStatusResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | sub_status updated |  -  |
| **404** | resource not found |  -  |


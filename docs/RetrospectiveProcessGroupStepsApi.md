# RetrospectiveProcessGroupStepsApi

All URIs are relative to *https://api.rootly.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createRetrospectiveProcessGroupStep**](RetrospectiveProcessGroupStepsApi.md#createRetrospectiveProcessGroupStep) | **POST** /v1/retrospective_process_groups/{retrospective_process_group_id}/steps | Creates a retrospective process group step |
| [**deleteRetrospectiveProcessGroupStep**](RetrospectiveProcessGroupStepsApi.md#deleteRetrospectiveProcessGroupStep) | **DELETE** /v1/retrospective_process_group_steps/{id} | Delete a RetrospectiveProcessGroup Step |
| [**getRetrospectiveProcessGroupStep**](RetrospectiveProcessGroupStepsApi.md#getRetrospectiveProcessGroupStep) | **GET** /v1/retrospective_process_group_steps/{id} | Retrieves a RetrospectiveProcessGroup Step |
| [**listRetrospectiveProcessGroupSteps**](RetrospectiveProcessGroupStepsApi.md#listRetrospectiveProcessGroupSteps) | **GET** /v1/retrospective_process_groups/{retrospective_process_group_id}/steps | List RetrospectiveProcessGroup Steps |
| [**updateRetrospectiveProcessGroupStep**](RetrospectiveProcessGroupStepsApi.md#updateRetrospectiveProcessGroupStep) | **PUT** /v1/retrospective_process_group_steps/{id} | Update RetrospectiveProcessGroup Step |


<a id="createRetrospectiveProcessGroupStep"></a>
# **createRetrospectiveProcessGroupStep**
> RetrospectiveProcessGroupStepResponse createRetrospectiveProcessGroupStep(retrospectiveProcessGroupId, newRetrospectiveProcessGroupStep)

Creates a retrospective process group step

Creates a new retrospective process group step from provided data

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.RetrospectiveProcessGroupStepsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    RetrospectiveProcessGroupStepsApi apiInstance = new RetrospectiveProcessGroupStepsApi(defaultClient);
    String retrospectiveProcessGroupId = "retrospectiveProcessGroupId_example"; // String | 
    NewRetrospectiveProcessGroupStep newRetrospectiveProcessGroupStep = new NewRetrospectiveProcessGroupStep(); // NewRetrospectiveProcessGroupStep | 
    try {
      RetrospectiveProcessGroupStepResponse result = apiInstance.createRetrospectiveProcessGroupStep(retrospectiveProcessGroupId, newRetrospectiveProcessGroupStep);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling RetrospectiveProcessGroupStepsApi#createRetrospectiveProcessGroupStep");
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
| **retrospectiveProcessGroupId** | **String**|  | |
| **newRetrospectiveProcessGroupStep** | [**NewRetrospectiveProcessGroupStep**](NewRetrospectiveProcessGroupStep.md)|  | |

### Return type

[**RetrospectiveProcessGroupStepResponse**](RetrospectiveProcessGroupStepResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | retrospective_process_group_step created |  -  |
| **401** | responds with unauthorized for invalid token |  -  |

<a id="deleteRetrospectiveProcessGroupStep"></a>
# **deleteRetrospectiveProcessGroupStep**
> RetrospectiveProcessGroupStepResponse deleteRetrospectiveProcessGroupStep(id)

Delete a RetrospectiveProcessGroup Step

Delete a specific RetrospectiveProcessGroup Step by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.RetrospectiveProcessGroupStepsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    RetrospectiveProcessGroupStepsApi apiInstance = new RetrospectiveProcessGroupStepsApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      RetrospectiveProcessGroupStepResponse result = apiInstance.deleteRetrospectiveProcessGroupStep(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling RetrospectiveProcessGroupStepsApi#deleteRetrospectiveProcessGroupStep");
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

[**RetrospectiveProcessGroupStepResponse**](RetrospectiveProcessGroupStepResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | retrospective_process_group_step deleted |  -  |
| **404** | resource not found |  -  |

<a id="getRetrospectiveProcessGroupStep"></a>
# **getRetrospectiveProcessGroupStep**
> RetrospectiveProcessGroupStepResponse getRetrospectiveProcessGroupStep(id)

Retrieves a RetrospectiveProcessGroup Step

Retrieves a specific RetrospectiveProcessGroup Step by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.RetrospectiveProcessGroupStepsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    RetrospectiveProcessGroupStepsApi apiInstance = new RetrospectiveProcessGroupStepsApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      RetrospectiveProcessGroupStepResponse result = apiInstance.getRetrospectiveProcessGroupStep(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling RetrospectiveProcessGroupStepsApi#getRetrospectiveProcessGroupStep");
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

[**RetrospectiveProcessGroupStepResponse**](RetrospectiveProcessGroupStepResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | sub_status found |  -  |

<a id="listRetrospectiveProcessGroupSteps"></a>
# **listRetrospectiveProcessGroupSteps**
> RetrospectiveProcessGroupStepList listRetrospectiveProcessGroupSteps(retrospectiveProcessGroupId, include, pageNumber, pageSize, filterRetrospectiveStepId, filterCreatedAtGt, filterCreatedAtGte, filterCreatedAtLt, filterCreatedAtLte)

List RetrospectiveProcessGroup Steps

List RetrospectiveProcessGroup Steps

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.RetrospectiveProcessGroupStepsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    RetrospectiveProcessGroupStepsApi apiInstance = new RetrospectiveProcessGroupStepsApi(defaultClient);
    String retrospectiveProcessGroupId = "retrospectiveProcessGroupId_example"; // String | 
    String include = "include_example"; // String | 
    Integer pageNumber = 56; // Integer | 
    Integer pageSize = 56; // Integer | 
    String filterRetrospectiveStepId = "filterRetrospectiveStepId_example"; // String | 
    String filterCreatedAtGt = "filterCreatedAtGt_example"; // String | 
    String filterCreatedAtGte = "filterCreatedAtGte_example"; // String | 
    String filterCreatedAtLt = "filterCreatedAtLt_example"; // String | 
    String filterCreatedAtLte = "filterCreatedAtLte_example"; // String | 
    try {
      RetrospectiveProcessGroupStepList result = apiInstance.listRetrospectiveProcessGroupSteps(retrospectiveProcessGroupId, include, pageNumber, pageSize, filterRetrospectiveStepId, filterCreatedAtGt, filterCreatedAtGte, filterCreatedAtLt, filterCreatedAtLte);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling RetrospectiveProcessGroupStepsApi#listRetrospectiveProcessGroupSteps");
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
| **retrospectiveProcessGroupId** | **String**|  | |
| **include** | **String**|  | [optional] |
| **pageNumber** | **Integer**|  | [optional] |
| **pageSize** | **Integer**|  | [optional] |
| **filterRetrospectiveStepId** | **String**|  | [optional] |
| **filterCreatedAtGt** | **String**|  | [optional] |
| **filterCreatedAtGte** | **String**|  | [optional] |
| **filterCreatedAtLt** | **String**|  | [optional] |
| **filterCreatedAtLte** | **String**|  | [optional] |

### Return type

[**RetrospectiveProcessGroupStepList**](RetrospectiveProcessGroupStepList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | success |  -  |

<a id="updateRetrospectiveProcessGroupStep"></a>
# **updateRetrospectiveProcessGroupStep**
> RetrospectiveProcessGroupStepResponse updateRetrospectiveProcessGroupStep(id, updateRetrospectiveProcessGroupStep)

Update RetrospectiveProcessGroup Step

Update a specific RetrospectiveProcessGroup Step by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.RetrospectiveProcessGroupStepsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    RetrospectiveProcessGroupStepsApi apiInstance = new RetrospectiveProcessGroupStepsApi(defaultClient);
    String id = "id_example"; // String | 
    UpdateRetrospectiveProcessGroupStep updateRetrospectiveProcessGroupStep = new UpdateRetrospectiveProcessGroupStep(); // UpdateRetrospectiveProcessGroupStep | 
    try {
      RetrospectiveProcessGroupStepResponse result = apiInstance.updateRetrospectiveProcessGroupStep(id, updateRetrospectiveProcessGroupStep);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling RetrospectiveProcessGroupStepsApi#updateRetrospectiveProcessGroupStep");
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
| **updateRetrospectiveProcessGroupStep** | [**UpdateRetrospectiveProcessGroupStep**](UpdateRetrospectiveProcessGroupStep.md)|  | |

### Return type

[**RetrospectiveProcessGroupStepResponse**](RetrospectiveProcessGroupStepResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | retrospective_process_group_step updated |  -  |


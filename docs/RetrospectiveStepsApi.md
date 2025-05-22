# RetrospectiveStepsApi

All URIs are relative to *https://api.rootly.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createRetrospectiveStep**](RetrospectiveStepsApi.md#createRetrospectiveStep) | **POST** /v1/retrospective_processes/{retrospective_process_id}/retrospective_steps | Creates a retrospective step |
| [**deleteRetrospectiveStep**](RetrospectiveStepsApi.md#deleteRetrospectiveStep) | **DELETE** /v1/retrospective_steps/{id} | Delete a retrospective step |
| [**getRetrospectiveStep**](RetrospectiveStepsApi.md#getRetrospectiveStep) | **GET** /v1/retrospective_steps/{id} | Retrieves a retrospective step |
| [**listRetrospectiveSteps**](RetrospectiveStepsApi.md#listRetrospectiveSteps) | **GET** /v1/retrospective_processes/{retrospective_process_id}/retrospective_steps | List retrospective steps |
| [**updateRetrospectiveStep**](RetrospectiveStepsApi.md#updateRetrospectiveStep) | **PUT** /v1/retrospective_steps/{id} | Update a retrospective step |


<a id="createRetrospectiveStep"></a>
# **createRetrospectiveStep**
> RetrospectiveStepResponse createRetrospectiveStep(retrospectiveProcessId, newRetrospectiveStep)

Creates a retrospective step

Creates a new retrospective step from provided data

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.RetrospectiveStepsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    RetrospectiveStepsApi apiInstance = new RetrospectiveStepsApi(defaultClient);
    String retrospectiveProcessId = "retrospectiveProcessId_example"; // String | 
    NewRetrospectiveStep newRetrospectiveStep = new NewRetrospectiveStep(); // NewRetrospectiveStep | 
    try {
      RetrospectiveStepResponse result = apiInstance.createRetrospectiveStep(retrospectiveProcessId, newRetrospectiveStep);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling RetrospectiveStepsApi#createRetrospectiveStep");
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
| **retrospectiveProcessId** | **String**|  | |
| **newRetrospectiveStep** | [**NewRetrospectiveStep**](NewRetrospectiveStep.md)|  | |

### Return type

[**RetrospectiveStepResponse**](RetrospectiveStepResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | retrospective_step created |  -  |
| **422** | invalid request |  -  |
| **401** | responds with unauthorized for invalid token |  -  |

<a id="deleteRetrospectiveStep"></a>
# **deleteRetrospectiveStep**
> RetrospectiveStepResponse deleteRetrospectiveStep(id)

Delete a retrospective step

Delete a specific retrospective step by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.RetrospectiveStepsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    RetrospectiveStepsApi apiInstance = new RetrospectiveStepsApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      RetrospectiveStepResponse result = apiInstance.deleteRetrospectiveStep(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling RetrospectiveStepsApi#deleteRetrospectiveStep");
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

[**RetrospectiveStepResponse**](RetrospectiveStepResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | retrospective_step deleted |  -  |
| **404** | resource not found |  -  |

<a id="getRetrospectiveStep"></a>
# **getRetrospectiveStep**
> RetrospectiveStepResponse getRetrospectiveStep(id)

Retrieves a retrospective step

Retrieves a specific retrospective step by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.RetrospectiveStepsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    RetrospectiveStepsApi apiInstance = new RetrospectiveStepsApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      RetrospectiveStepResponse result = apiInstance.getRetrospectiveStep(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling RetrospectiveStepsApi#getRetrospectiveStep");
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

[**RetrospectiveStepResponse**](RetrospectiveStepResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | retrospective_step found |  -  |
| **404** | resource not found |  -  |

<a id="listRetrospectiveSteps"></a>
# **listRetrospectiveSteps**
> RetrospectiveStepList listRetrospectiveSteps(retrospectiveProcessId, include, pageNumber, pageSize, sort)

List retrospective steps

List retrospective steps

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.RetrospectiveStepsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    RetrospectiveStepsApi apiInstance = new RetrospectiveStepsApi(defaultClient);
    String retrospectiveProcessId = "retrospectiveProcessId_example"; // String | 
    String include = "include_example"; // String | 
    Integer pageNumber = 56; // Integer | 
    Integer pageSize = 56; // Integer | 
    String sort = "sort_example"; // String | 
    try {
      RetrospectiveStepList result = apiInstance.listRetrospectiveSteps(retrospectiveProcessId, include, pageNumber, pageSize, sort);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling RetrospectiveStepsApi#listRetrospectiveSteps");
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
| **retrospectiveProcessId** | **String**|  | |
| **include** | **String**|  | [optional] |
| **pageNumber** | **Integer**|  | [optional] |
| **pageSize** | **Integer**|  | [optional] |
| **sort** | **String**|  | [optional] |

### Return type

[**RetrospectiveStepList**](RetrospectiveStepList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | success |  -  |

<a id="updateRetrospectiveStep"></a>
# **updateRetrospectiveStep**
> RetrospectiveStepResponse updateRetrospectiveStep(id, updateRetrospectiveStep)

Update a retrospective step

Update a specific retrospective step by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.RetrospectiveStepsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    RetrospectiveStepsApi apiInstance = new RetrospectiveStepsApi(defaultClient);
    String id = "id_example"; // String | 
    UpdateRetrospectiveStep updateRetrospectiveStep = new UpdateRetrospectiveStep(); // UpdateRetrospectiveStep | 
    try {
      RetrospectiveStepResponse result = apiInstance.updateRetrospectiveStep(id, updateRetrospectiveStep);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling RetrospectiveStepsApi#updateRetrospectiveStep");
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
| **updateRetrospectiveStep** | [**UpdateRetrospectiveStep**](UpdateRetrospectiveStep.md)|  | |

### Return type

[**RetrospectiveStepResponse**](RetrospectiveStepResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | retrospective_step updated |  -  |
| **404** | resource not found |  -  |


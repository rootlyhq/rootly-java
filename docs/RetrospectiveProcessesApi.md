# RetrospectiveProcessesApi

All URIs are relative to *https://api.rootly.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createRetrospectiveProcess**](RetrospectiveProcessesApi.md#createRetrospectiveProcess) | **POST** /v1/retrospective_processes | Creates a retrospective process |
| [**deleteRetrospectiveProcess**](RetrospectiveProcessesApi.md#deleteRetrospectiveProcess) | **DELETE** /v1/retrospective_processes/{id} | Delete a retrospective process |
| [**getRetrospectiveProcess**](RetrospectiveProcessesApi.md#getRetrospectiveProcess) | **GET** /v1/retrospective_processes/{id} | Retrieves a retrospective process |
| [**listRetrospectiveProcesses**](RetrospectiveProcessesApi.md#listRetrospectiveProcesses) | **GET** /v1/retrospective_processes | List retrospective processes |
| [**updateRetrospectiveProcess**](RetrospectiveProcessesApi.md#updateRetrospectiveProcess) | **PUT** /v1/retrospective_processes/{id} | Update a retrospective process |


<a id="createRetrospectiveProcess"></a>
# **createRetrospectiveProcess**
> RetrospectiveProcessResponse createRetrospectiveProcess(newRetrospectiveProcess)

Creates a retrospective process

Creates a new retrospective process from provided data

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.RetrospectiveProcessesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    RetrospectiveProcessesApi apiInstance = new RetrospectiveProcessesApi(defaultClient);
    NewRetrospectiveProcess newRetrospectiveProcess = new NewRetrospectiveProcess(); // NewRetrospectiveProcess | 
    try {
      RetrospectiveProcessResponse result = apiInstance.createRetrospectiveProcess(newRetrospectiveProcess);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling RetrospectiveProcessesApi#createRetrospectiveProcess");
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
| **newRetrospectiveProcess** | [**NewRetrospectiveProcess**](NewRetrospectiveProcess.md)|  | |

### Return type

[**RetrospectiveProcessResponse**](RetrospectiveProcessResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | retrospective_process created |  -  |
| **422** | invalid request |  -  |
| **401** | responds with unauthorized for invalid token |  -  |

<a id="deleteRetrospectiveProcess"></a>
# **deleteRetrospectiveProcess**
> RetrospectiveProcessResponse deleteRetrospectiveProcess(id)

Delete a retrospective process

Delete a specific retrospective process by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.RetrospectiveProcessesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    RetrospectiveProcessesApi apiInstance = new RetrospectiveProcessesApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      RetrospectiveProcessResponse result = apiInstance.deleteRetrospectiveProcess(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling RetrospectiveProcessesApi#deleteRetrospectiveProcess");
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

[**RetrospectiveProcessResponse**](RetrospectiveProcessResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | retrospective_process deleted |  -  |
| **404** | resource not found |  -  |

<a id="getRetrospectiveProcess"></a>
# **getRetrospectiveProcess**
> RetrospectiveProcessResponse getRetrospectiveProcess(id, include)

Retrieves a retrospective process

Retrieves a specific retrospective process by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.RetrospectiveProcessesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    RetrospectiveProcessesApi apiInstance = new RetrospectiveProcessesApi(defaultClient);
    String id = "id_example"; // String | 
    String include = "retrospective_steps"; // String | comma separated if needed. eg: retrospective_steps,severities
    try {
      RetrospectiveProcessResponse result = apiInstance.getRetrospectiveProcess(id, include);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling RetrospectiveProcessesApi#getRetrospectiveProcess");
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
| **include** | **String**| comma separated if needed. eg: retrospective_steps,severities | [optional] [enum: retrospective_steps, severities, incident_types, groups] |

### Return type

[**RetrospectiveProcessResponse**](RetrospectiveProcessResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | retrospective_process found |  -  |
| **404** | resource not found |  -  |

<a id="listRetrospectiveProcesses"></a>
# **listRetrospectiveProcesses**
> RetrospectiveProcessList listRetrospectiveProcesses(include, pageNumber, pageSize)

List retrospective processes

List retrospective processes

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.RetrospectiveProcessesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    RetrospectiveProcessesApi apiInstance = new RetrospectiveProcessesApi(defaultClient);
    String include = "retrospective_steps"; // String | comma separated if needed. eg: retrospective_steps,severities
    Integer pageNumber = 56; // Integer | 
    Integer pageSize = 56; // Integer | 
    try {
      RetrospectiveProcessList result = apiInstance.listRetrospectiveProcesses(include, pageNumber, pageSize);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling RetrospectiveProcessesApi#listRetrospectiveProcesses");
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
| **include** | **String**| comma separated if needed. eg: retrospective_steps,severities | [optional] [enum: retrospective_steps, severities, incident_types, groups] |
| **pageNumber** | **Integer**|  | [optional] |
| **pageSize** | **Integer**|  | [optional] |

### Return type

[**RetrospectiveProcessList**](RetrospectiveProcessList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | success |  -  |

<a id="updateRetrospectiveProcess"></a>
# **updateRetrospectiveProcess**
> RetrospectiveProcessResponse updateRetrospectiveProcess(id, updateRetrospectiveProcess)

Update a retrospective process

Updates a specific retrospective process by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.RetrospectiveProcessesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    RetrospectiveProcessesApi apiInstance = new RetrospectiveProcessesApi(defaultClient);
    String id = "id_example"; // String | 
    UpdateRetrospectiveProcess updateRetrospectiveProcess = new UpdateRetrospectiveProcess(); // UpdateRetrospectiveProcess | 
    try {
      RetrospectiveProcessResponse result = apiInstance.updateRetrospectiveProcess(id, updateRetrospectiveProcess);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling RetrospectiveProcessesApi#updateRetrospectiveProcess");
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
| **updateRetrospectiveProcess** | [**UpdateRetrospectiveProcess**](UpdateRetrospectiveProcess.md)|  | |

### Return type

[**RetrospectiveProcessResponse**](RetrospectiveProcessResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | retrospective_process updated |  -  |
| **404** | resource not found |  -  |


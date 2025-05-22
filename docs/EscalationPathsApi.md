# EscalationPathsApi

All URIs are relative to *https://api.rootly.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createEscalationPath**](EscalationPathsApi.md#createEscalationPath) | **POST** /v1/escalation_policies/{escalation_policy_id}/escalation_paths | Creates an escalation path |
| [**deleteEscalationPath**](EscalationPathsApi.md#deleteEscalationPath) | **DELETE** /v1/escalation_paths/{id} | Delete an escalation path |
| [**getEscalationPath**](EscalationPathsApi.md#getEscalationPath) | **GET** /v1/escalation_paths/{id} | Retrieves an escalation path |
| [**listEscalationPaths**](EscalationPathsApi.md#listEscalationPaths) | **GET** /v1/escalation_policies/{escalation_policy_id}/escalation_paths | List escalation paths |
| [**updateEscalationPath**](EscalationPathsApi.md#updateEscalationPath) | **PUT** /v1/escalation_paths/{id} | Update an escalation path |


<a id="createEscalationPath"></a>
# **createEscalationPath**
> EscalationPolicyPathResponse createEscalationPath(escalationPolicyId, newEscalationPolicyPath)

Creates an escalation path

Creates a new escalation path from provided data

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.EscalationPathsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    EscalationPathsApi apiInstance = new EscalationPathsApi(defaultClient);
    String escalationPolicyId = "escalationPolicyId_example"; // String | 
    NewEscalationPolicyPath newEscalationPolicyPath = new NewEscalationPolicyPath(); // NewEscalationPolicyPath | 
    try {
      EscalationPolicyPathResponse result = apiInstance.createEscalationPath(escalationPolicyId, newEscalationPolicyPath);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling EscalationPathsApi#createEscalationPath");
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
| **escalationPolicyId** | **String**|  | |
| **newEscalationPolicyPath** | [**NewEscalationPolicyPath**](NewEscalationPolicyPath.md)|  | |

### Return type

[**EscalationPolicyPathResponse**](EscalationPolicyPathResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | escalation path created |  -  |
| **422** | invalid request |  -  |
| **401** | resource not found |  -  |

<a id="deleteEscalationPath"></a>
# **deleteEscalationPath**
> EscalationPolicyPathResponse deleteEscalationPath(id)

Delete an escalation path

Delete a specific escalation path by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.EscalationPathsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    EscalationPathsApi apiInstance = new EscalationPathsApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      EscalationPolicyPathResponse result = apiInstance.deleteEscalationPath(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling EscalationPathsApi#deleteEscalationPath");
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

[**EscalationPolicyPathResponse**](EscalationPolicyPathResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | escalation path deleted |  -  |
| **404** | resource not found |  -  |

<a id="getEscalationPath"></a>
# **getEscalationPath**
> EscalationPolicyPathResponse getEscalationPath(id, include)

Retrieves an escalation path

Retrieves a specific escalation path by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.EscalationPathsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    EscalationPathsApi apiInstance = new EscalationPathsApi(defaultClient);
    String id = "id_example"; // String | 
    String include = "escalation_policy_levels"; // String | comma separated if needed. eg: escalation_policy_levels
    try {
      EscalationPolicyPathResponse result = apiInstance.getEscalationPath(id, include);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling EscalationPathsApi#getEscalationPath");
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
| **include** | **String**| comma separated if needed. eg: escalation_policy_levels | [optional] [enum: escalation_policy_levels] |

### Return type

[**EscalationPolicyPathResponse**](EscalationPolicyPathResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | escalation path found |  -  |
| **404** | resource not found |  -  |

<a id="listEscalationPaths"></a>
# **listEscalationPaths**
> EscalationPolicyPathList listEscalationPaths(escalationPolicyId, include, pageNumber, pageSize)

List escalation paths

List escalation paths

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.EscalationPathsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    EscalationPathsApi apiInstance = new EscalationPathsApi(defaultClient);
    String escalationPolicyId = "escalationPolicyId_example"; // String | 
    String include = "escalation_policy_levels"; // String | comma separated if needed. eg: escalation_policy_levels
    Integer pageNumber = 56; // Integer | 
    Integer pageSize = 56; // Integer | 
    try {
      EscalationPolicyPathList result = apiInstance.listEscalationPaths(escalationPolicyId, include, pageNumber, pageSize);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling EscalationPathsApi#listEscalationPaths");
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
| **escalationPolicyId** | **String**|  | |
| **include** | **String**| comma separated if needed. eg: escalation_policy_levels | [optional] [enum: escalation_policy_levels] |
| **pageNumber** | **Integer**|  | [optional] |
| **pageSize** | **Integer**|  | [optional] |

### Return type

[**EscalationPolicyPathList**](EscalationPolicyPathList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | success |  -  |

<a id="updateEscalationPath"></a>
# **updateEscalationPath**
> EscalationPolicyPathResponse updateEscalationPath(id, updateEscalationPolicyPath)

Update an escalation path

Update a specific escalation path by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.EscalationPathsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    EscalationPathsApi apiInstance = new EscalationPathsApi(defaultClient);
    String id = "id_example"; // String | 
    UpdateEscalationPolicyPath updateEscalationPolicyPath = new UpdateEscalationPolicyPath(); // UpdateEscalationPolicyPath | 
    try {
      EscalationPolicyPathResponse result = apiInstance.updateEscalationPath(id, updateEscalationPolicyPath);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling EscalationPathsApi#updateEscalationPath");
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
| **updateEscalationPolicyPath** | [**UpdateEscalationPolicyPath**](UpdateEscalationPolicyPath.md)|  | |

### Return type

[**EscalationPolicyPathResponse**](EscalationPolicyPathResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | escalation policy updated |  -  |
| **404** | resource not found |  -  |


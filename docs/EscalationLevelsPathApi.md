# EscalationLevelsPathApi

All URIs are relative to *https://api.rootly.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createEscalationLevelPaths**](EscalationLevelsPathApi.md#createEscalationLevelPaths) | **POST** /v1/escalation_paths/{escalation_policy_path_id}/escalation_levels | Creates an escalation level for an Escalation Path |
| [**listEscalationLevelsPaths**](EscalationLevelsPathApi.md#listEscalationLevelsPaths) | **GET** /v1/escalation_paths/{escalation_policy_path_id}/escalation_levels | List escalation levels for an Escalation Path |


<a id="createEscalationLevelPaths"></a>
# **createEscalationLevelPaths**
> EscalationPolicyLevelResponse createEscalationLevelPaths(escalationPolicyPathId, newEscalationPolicyLevel)

Creates an escalation level for an Escalation Path

Creates a new escalation level from provided data

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.EscalationLevelsPathApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    EscalationLevelsPathApi apiInstance = new EscalationLevelsPathApi(defaultClient);
    String escalationPolicyPathId = "escalationPolicyPathId_example"; // String | 
    NewEscalationPolicyLevel newEscalationPolicyLevel = new NewEscalationPolicyLevel(); // NewEscalationPolicyLevel | 
    try {
      EscalationPolicyLevelResponse result = apiInstance.createEscalationLevelPaths(escalationPolicyPathId, newEscalationPolicyLevel);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling EscalationLevelsPathApi#createEscalationLevelPaths");
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
| **escalationPolicyPathId** | **String**|  | |
| **newEscalationPolicyLevel** | [**NewEscalationPolicyLevel**](NewEscalationPolicyLevel.md)|  | |

### Return type

[**EscalationPolicyLevelResponse**](EscalationPolicyLevelResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | escalation level created |  -  |
| **422** | invalid request |  -  |
| **401** | resource not found |  -  |

<a id="listEscalationLevelsPaths"></a>
# **listEscalationLevelsPaths**
> EscalationPolicyLevelList listEscalationLevelsPaths(escalationPolicyPathId, include, pageNumber, pageSize)

List escalation levels for an Escalation Path

List escalation levels

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.EscalationLevelsPathApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    EscalationLevelsPathApi apiInstance = new EscalationLevelsPathApi(defaultClient);
    String escalationPolicyPathId = "escalationPolicyPathId_example"; // String | 
    String include = "include_example"; // String | 
    Integer pageNumber = 56; // Integer | 
    Integer pageSize = 56; // Integer | 
    try {
      EscalationPolicyLevelList result = apiInstance.listEscalationLevelsPaths(escalationPolicyPathId, include, pageNumber, pageSize);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling EscalationLevelsPathApi#listEscalationLevelsPaths");
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
| **escalationPolicyPathId** | **String**|  | |
| **include** | **String**|  | [optional] |
| **pageNumber** | **Integer**|  | [optional] |
| **pageSize** | **Integer**|  | [optional] |

### Return type

[**EscalationPolicyLevelList**](EscalationPolicyLevelList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | success |  -  |


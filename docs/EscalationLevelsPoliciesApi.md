# EscalationLevelsPoliciesApi

All URIs are relative to *https://api.rootly.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createEscalationLevel**](EscalationLevelsPoliciesApi.md#createEscalationLevel) | **POST** /v1/escalation_policies/{escalation_policy_id}/escalation_levels | Creates an escalation level for an Escalation Policy |
| [**listEscalationLevels**](EscalationLevelsPoliciesApi.md#listEscalationLevels) | **GET** /v1/escalation_policies/{escalation_policy_id}/escalation_levels | List escalation levels for an Escalation Policy |


<a id="createEscalationLevel"></a>
# **createEscalationLevel**
> EscalationPolicyLevelResponse createEscalationLevel(escalationPolicyId, newEscalationPolicyLevel)

Creates an escalation level for an Escalation Policy

Creates a new escalation level from provided data

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.EscalationLevelsPoliciesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    EscalationLevelsPoliciesApi apiInstance = new EscalationLevelsPoliciesApi(defaultClient);
    String escalationPolicyId = "escalationPolicyId_example"; // String | 
    NewEscalationPolicyLevel newEscalationPolicyLevel = new NewEscalationPolicyLevel(); // NewEscalationPolicyLevel | 
    try {
      EscalationPolicyLevelResponse result = apiInstance.createEscalationLevel(escalationPolicyId, newEscalationPolicyLevel);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling EscalationLevelsPoliciesApi#createEscalationLevel");
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

<a id="listEscalationLevels"></a>
# **listEscalationLevels**
> EscalationPolicyLevelList listEscalationLevels(escalationPolicyId, include, pageNumber, pageSize)

List escalation levels for an Escalation Policy

List escalation levels

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.EscalationLevelsPoliciesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    EscalationLevelsPoliciesApi apiInstance = new EscalationLevelsPoliciesApi(defaultClient);
    String escalationPolicyId = "escalationPolicyId_example"; // String | 
    String include = "include_example"; // String | 
    Integer pageNumber = 56; // Integer | 
    Integer pageSize = 56; // Integer | 
    try {
      EscalationPolicyLevelList result = apiInstance.listEscalationLevels(escalationPolicyId, include, pageNumber, pageSize);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling EscalationLevelsPoliciesApi#listEscalationLevels");
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


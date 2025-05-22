# EscalationPoliciesApi

All URIs are relative to *https://api.rootly.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createEscalationPolicy**](EscalationPoliciesApi.md#createEscalationPolicy) | **POST** /v1/escalation_policies | Creates an escalation policy |
| [**deleteEscalationPolicy**](EscalationPoliciesApi.md#deleteEscalationPolicy) | **DELETE** /v1/escalation_policies/{id} | Delete an escalation policy |
| [**getEscalationPolicy**](EscalationPoliciesApi.md#getEscalationPolicy) | **GET** /v1/escalation_policies/{id} | Retrieves an escalation policy |
| [**listEscalationPolicies**](EscalationPoliciesApi.md#listEscalationPolicies) | **GET** /v1/escalation_policies | List escalation policies |
| [**updateEscalationPolicy**](EscalationPoliciesApi.md#updateEscalationPolicy) | **PUT** /v1/escalation_policies/{id} | Update an escalation policy |


<a id="createEscalationPolicy"></a>
# **createEscalationPolicy**
> EscalationPolicyResponse createEscalationPolicy(newEscalationPolicy)

Creates an escalation policy

Creates a new escalation policy from provided data

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.EscalationPoliciesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    EscalationPoliciesApi apiInstance = new EscalationPoliciesApi(defaultClient);
    NewEscalationPolicy newEscalationPolicy = new NewEscalationPolicy(); // NewEscalationPolicy | 
    try {
      EscalationPolicyResponse result = apiInstance.createEscalationPolicy(newEscalationPolicy);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling EscalationPoliciesApi#createEscalationPolicy");
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
| **newEscalationPolicy** | [**NewEscalationPolicy**](NewEscalationPolicy.md)|  | |

### Return type

[**EscalationPolicyResponse**](EscalationPolicyResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | escalation policy created |  -  |
| **422** | invalid request |  -  |
| **401** | responds with unauthorized for invalid token |  -  |

<a id="deleteEscalationPolicy"></a>
# **deleteEscalationPolicy**
> EscalationPolicyResponse deleteEscalationPolicy(id)

Delete an escalation policy

Delete a specific escalation policy by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.EscalationPoliciesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    EscalationPoliciesApi apiInstance = new EscalationPoliciesApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      EscalationPolicyResponse result = apiInstance.deleteEscalationPolicy(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling EscalationPoliciesApi#deleteEscalationPolicy");
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

[**EscalationPolicyResponse**](EscalationPolicyResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | escalation policy deleted |  -  |
| **404** | resource not found |  -  |

<a id="getEscalationPolicy"></a>
# **getEscalationPolicy**
> EscalationPolicyResponse getEscalationPolicy(id, include)

Retrieves an escalation policy

Retrieves a specific escalation policy by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.EscalationPoliciesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    EscalationPoliciesApi apiInstance = new EscalationPoliciesApi(defaultClient);
    String id = "id_example"; // String | 
    String include = "escalation_policy_levels"; // String | comma separated if needed. eg: escalation_policy_levels,escalation_policy_paths
    try {
      EscalationPolicyResponse result = apiInstance.getEscalationPolicy(id, include);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling EscalationPoliciesApi#getEscalationPolicy");
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
| **include** | **String**| comma separated if needed. eg: escalation_policy_levels,escalation_policy_paths | [optional] [enum: escalation_policy_levels, escalation_policy_paths, groups, services] |

### Return type

[**EscalationPolicyResponse**](EscalationPolicyResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | escalation policy found |  -  |
| **404** | resource not found |  -  |

<a id="listEscalationPolicies"></a>
# **listEscalationPolicies**
> EscalationPolicyList listEscalationPolicies(include, filterSearch, filterName, filterCreatedAtGt, filterCreatedAtGte, filterCreatedAtLt, filterCreatedAtLte, pageNumber, pageSize)

List escalation policies

List escalation policies

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.EscalationPoliciesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    EscalationPoliciesApi apiInstance = new EscalationPoliciesApi(defaultClient);
    String include = "escalation_policy_levels"; // String | comma separated if needed. eg: escalation_policy_levels,escalation_policy_paths
    String filterSearch = "filterSearch_example"; // String | 
    String filterName = "filterName_example"; // String | 
    String filterCreatedAtGt = "filterCreatedAtGt_example"; // String | 
    String filterCreatedAtGte = "filterCreatedAtGte_example"; // String | 
    String filterCreatedAtLt = "filterCreatedAtLt_example"; // String | 
    String filterCreatedAtLte = "filterCreatedAtLte_example"; // String | 
    Integer pageNumber = 56; // Integer | 
    Integer pageSize = 56; // Integer | 
    try {
      EscalationPolicyList result = apiInstance.listEscalationPolicies(include, filterSearch, filterName, filterCreatedAtGt, filterCreatedAtGte, filterCreatedAtLt, filterCreatedAtLte, pageNumber, pageSize);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling EscalationPoliciesApi#listEscalationPolicies");
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
| **include** | **String**| comma separated if needed. eg: escalation_policy_levels,escalation_policy_paths | [optional] [enum: escalation_policy_levels, escalation_policy_paths, groups, services] |
| **filterSearch** | **String**|  | [optional] |
| **filterName** | **String**|  | [optional] |
| **filterCreatedAtGt** | **String**|  | [optional] |
| **filterCreatedAtGte** | **String**|  | [optional] |
| **filterCreatedAtLt** | **String**|  | [optional] |
| **filterCreatedAtLte** | **String**|  | [optional] |
| **pageNumber** | **Integer**|  | [optional] |
| **pageSize** | **Integer**|  | [optional] |

### Return type

[**EscalationPolicyList**](EscalationPolicyList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | success |  -  |

<a id="updateEscalationPolicy"></a>
# **updateEscalationPolicy**
> EscalationPolicyResponse updateEscalationPolicy(id, updateEscalationPolicy)

Update an escalation policy

Update a specific escalation policy by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.EscalationPoliciesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    EscalationPoliciesApi apiInstance = new EscalationPoliciesApi(defaultClient);
    String id = "id_example"; // String | 
    UpdateEscalationPolicy updateEscalationPolicy = new UpdateEscalationPolicy(); // UpdateEscalationPolicy | 
    try {
      EscalationPolicyResponse result = apiInstance.updateEscalationPolicy(id, updateEscalationPolicy);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling EscalationPoliciesApi#updateEscalationPolicy");
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
| **updateEscalationPolicy** | [**UpdateEscalationPolicy**](UpdateEscalationPolicy.md)|  | |

### Return type

[**EscalationPolicyResponse**](EscalationPolicyResponse.md)

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


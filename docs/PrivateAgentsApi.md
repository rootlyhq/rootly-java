# PrivateAgentsApi

All URIs are relative to *https://api.rootly.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createPrivateAgentEnrollmentToken**](PrivateAgentsApi.md#createPrivateAgentEnrollmentToken) | **POST** /v1/private_agents/enrollment_tokens | Create a one-time token for agent enrollment |
| [**getPrivateAgent**](PrivateAgentsApi.md#getPrivateAgent) | **GET** /v1/private_agents/{id} | Get private agent |
| [**listPrivateAgents**](PrivateAgentsApi.md#listPrivateAgents) | **GET** /v1/private_agents | List private agents |
| [**revokePrivateAgent**](PrivateAgentsApi.md#revokePrivateAgent) | **POST** /v1/private_agents/{id}/revoke | Revoke private agent |
| [**updatePrivateAgent**](PrivateAgentsApi.md#updatePrivateAgent) | **PATCH** /v1/private_agents/{id} | Update private agent metadata |


<a id="createPrivateAgentEnrollmentToken"></a>
# **createPrivateAgentEnrollmentToken**
> PrivateAgentEnrollmentTokenResponse createPrivateAgentEnrollmentToken()

Create a one-time token for agent enrollment

Issue a one-time token valid for 24 hours. No request body is required. Requires Private Agent management permission plus the Private Agents and AI SRE features. The agent uses this token for gRPC Enroll; the agent record is created on enrollment, not by this request. The plaintext is returned only here and is not recoverable. Repeated requests issue distinct tokens; this endpoint is not idempotent.

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.PrivateAgentsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    PrivateAgentsApi apiInstance = new PrivateAgentsApi(defaultClient);
    try {
      PrivateAgentEnrollmentTokenResponse result = apiInstance.createPrivateAgentEnrollmentToken();
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling PrivateAgentsApi#createPrivateAgentEnrollmentToken");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**PrivateAgentEnrollmentTokenResponse**](PrivateAgentEnrollmentTokenResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | Enrollment token issued |  -  |
| **401** | Invalid or missing API credential |  -  |
| **404** | Not authorized or feature disabled |  -  |

<a id="getPrivateAgent"></a>
# **getPrivateAgent**
> PrivateAgentResponse getPrivateAgent(id)

Get private agent

Return provider inventory and last-reported health for one agent. Requires Private Agent read permission plus the Private Agents and AI SRE features. Credentials and capability schemas are never returned.

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.PrivateAgentsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    PrivateAgentsApi apiInstance = new PrivateAgentsApi(defaultClient);
    UUID id = UUID.randomUUID(); // UUID | 
    try {
      PrivateAgentResponse result = apiInstance.getPrivateAgent(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling PrivateAgentsApi#getPrivateAgent");
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
| **id** | **UUID**|  | |

### Return type

[**PrivateAgentResponse**](PrivateAgentResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Agent details |  -  |
| **404** | Not found or unauthorized |  -  |
| **401** | Invalid or missing API credential |  -  |

<a id="listPrivateAgents"></a>
# **listPrivateAgents**
> PrivateAgentList listPrivateAgents(pageNumber, pageSize)

List private agents

List this tenant&#39;s agents, including revoked and offline agents. Inventory pages omit provider snapshots to bound database and response costs; use Get private agent for provider inventory and last-reported health. Requires Private Agent management access plus the Private Agents and AI SRE features. Credentials and capability schemas are never returned.

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.PrivateAgentsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    PrivateAgentsApi apiInstance = new PrivateAgentsApi(defaultClient);
    Integer pageNumber = 56; // Integer | 
    Integer pageSize = 50; // Integer | 
    try {
      PrivateAgentList result = apiInstance.listPrivateAgents(pageNumber, pageSize);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling PrivateAgentsApi#listPrivateAgents");
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
| **pageSize** | **Integer**|  | [optional] [default to 50] |

### Return type

[**PrivateAgentList**](PrivateAgentList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Agents listed |  -  |
| **401** | Invalid or missing API credential |  -  |

<a id="revokePrivateAgent"></a>
# **revokePrivateAgent**
> PrivateAgentResponse revokePrivateAgent(id)

Revoke private agent

Invalidate access and refresh credentials and remove provider routing registrations. Requires Private Agent delete permission plus the Private Agents and AI SRE features. Retains the agent and invocation history. Repeated revocation is safe. An executing customer-side operation is not guaranteed to stop immediately. Use a new enrollment token to re-enroll a revoked installation.

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.PrivateAgentsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    PrivateAgentsApi apiInstance = new PrivateAgentsApi(defaultClient);
    UUID id = UUID.randomUUID(); // UUID | 
    try {
      PrivateAgentResponse result = apiInstance.revokePrivateAgent(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling PrivateAgentsApi#revokePrivateAgent");
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
| **id** | **UUID**|  | |

### Return type

[**PrivateAgentResponse**](PrivateAgentResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Agent revoked |  -  |
| **404** | Not found or unauthorized |  -  |
| **401** | Invalid or missing API credential |  -  |

<a id="updatePrivateAgent"></a>
# **updatePrivateAgent**
> updatePrivateAgent(id, privateAgentUpdate)

Update private agent metadata

Update routing metadata or pause tool execution without disconnecting the agent. The agent UUID and provider IDs remain the execution identities. Requires Private Agent update permission.

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.PrivateAgentsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    PrivateAgentsApi apiInstance = new PrivateAgentsApi(defaultClient);
    UUID id = UUID.randomUUID(); // UUID | 
    PrivateAgentUpdate privateAgentUpdate = new PrivateAgentUpdate(); // PrivateAgentUpdate | 
    try {
      apiInstance.updatePrivateAgent(id, privateAgentUpdate);
    } catch (ApiException e) {
      System.err.println("Exception when calling PrivateAgentsApi#updatePrivateAgent");
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
| **id** | **UUID**|  | |
| **privateAgentUpdate** | [**PrivateAgentUpdate**](PrivateAgentUpdate.md)|  | |

### Return type

null (empty response body)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **204** | Agent metadata updated |  -  |
| **422** | Invalid metadata |  -  |
| **409** | Agent update is busy |  -  |
| **404** | Not found or unauthorized |  -  |
| **401** | Invalid or missing API credential |  -  |


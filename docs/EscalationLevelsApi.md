# EscalationLevelsApi

All URIs are relative to *https://api.rootly.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**deleteEscalationLevel**](EscalationLevelsApi.md#deleteEscalationLevel) | **DELETE** /v1/escalation_levels/{id} | Delete an escalation level |
| [**getEscalationLevel**](EscalationLevelsApi.md#getEscalationLevel) | **GET** /v1/escalation_levels/{id} | Retrieves an escalation level |
| [**updateEscalationLevel**](EscalationLevelsApi.md#updateEscalationLevel) | **PUT** /v1/escalation_levels/{id} | Update an escalation level |


<a id="deleteEscalationLevel"></a>
# **deleteEscalationLevel**
> EscalationPolicyLevelResponse deleteEscalationLevel(id)

Delete an escalation level

Delete a specific escalation level by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.EscalationLevelsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    EscalationLevelsApi apiInstance = new EscalationLevelsApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      EscalationPolicyLevelResponse result = apiInstance.deleteEscalationLevel(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling EscalationLevelsApi#deleteEscalationLevel");
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

[**EscalationPolicyLevelResponse**](EscalationPolicyLevelResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | escalation level deleted |  -  |
| **404** | resource not found |  -  |

<a id="getEscalationLevel"></a>
# **getEscalationLevel**
> EscalationPolicyLevelResponse getEscalationLevel(id)

Retrieves an escalation level

Retrieves a specific escalation level by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.EscalationLevelsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    EscalationLevelsApi apiInstance = new EscalationLevelsApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      EscalationPolicyLevelResponse result = apiInstance.getEscalationLevel(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling EscalationLevelsApi#getEscalationLevel");
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

[**EscalationPolicyLevelResponse**](EscalationPolicyLevelResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | escalation level found |  -  |
| **404** | resource not found |  -  |

<a id="updateEscalationLevel"></a>
# **updateEscalationLevel**
> EscalationPolicyLevelResponse updateEscalationLevel(id, updateEscalationPolicyLevel)

Update an escalation level

Update a specific escalation level by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.EscalationLevelsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    EscalationLevelsApi apiInstance = new EscalationLevelsApi(defaultClient);
    String id = "id_example"; // String | 
    UpdateEscalationPolicyLevel updateEscalationPolicyLevel = new UpdateEscalationPolicyLevel(); // UpdateEscalationPolicyLevel | 
    try {
      EscalationPolicyLevelResponse result = apiInstance.updateEscalationLevel(id, updateEscalationPolicyLevel);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling EscalationLevelsApi#updateEscalationLevel");
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
| **updateEscalationPolicyLevel** | [**UpdateEscalationPolicyLevel**](UpdateEscalationPolicyLevel.md)|  | |

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
| **200** | escalation policy updated with notification_target set with slack_channel_id instead of slack_channel uuid |  -  |
| **404** | resource not found |  -  |


# AlertRetriggerRulesApi

All URIs are relative to *https://api.rootly.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createAlertRetriggerRule**](AlertRetriggerRulesApi.md#createAlertRetriggerRule) | **POST** /v1/alert_retrigger_rules | Creates an alert re-trigger rule |
| [**deleteAlertRetriggerRule**](AlertRetriggerRulesApi.md#deleteAlertRetriggerRule) | **DELETE** /v1/alert_retrigger_rules/{id} | Deletes an alert re-trigger rule |
| [**getAlertRetriggerRule**](AlertRetriggerRulesApi.md#getAlertRetriggerRule) | **GET** /v1/alert_retrigger_rules/{id} | Retrieves an alert re-trigger rule |
| [**listAlertRetriggerRules**](AlertRetriggerRulesApi.md#listAlertRetriggerRules) | **GET** /v1/alert_retrigger_rules | List alert re-trigger rules |
| [**updateAlertRetriggerRule**](AlertRetriggerRulesApi.md#updateAlertRetriggerRule) | **PUT** /v1/alert_retrigger_rules/{id} | Updates an alert re-trigger rule |


<a id="createAlertRetriggerRule"></a>
# **createAlertRetriggerRule**
> AlertRetriggerRuleResponse createAlertRetriggerRule(newAlertRetriggerRule)

Creates an alert re-trigger rule

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.AlertRetriggerRulesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    AlertRetriggerRulesApi apiInstance = new AlertRetriggerRulesApi(defaultClient);
    NewAlertRetriggerRule newAlertRetriggerRule = new NewAlertRetriggerRule(); // NewAlertRetriggerRule | 
    try {
      AlertRetriggerRuleResponse result = apiInstance.createAlertRetriggerRule(newAlertRetriggerRule);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AlertRetriggerRulesApi#createAlertRetriggerRule");
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
| **newAlertRetriggerRule** | [**NewAlertRetriggerRule**](NewAlertRetriggerRule.md)|  | |

### Return type

[**AlertRetriggerRuleResponse**](AlertRetriggerRuleResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | alert re-trigger rule created |  -  |
| **422** | invalid request |  -  |

<a id="deleteAlertRetriggerRule"></a>
# **deleteAlertRetriggerRule**
> deleteAlertRetriggerRule(id)

Deletes an alert re-trigger rule

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.AlertRetriggerRulesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    AlertRetriggerRulesApi apiInstance = new AlertRetriggerRulesApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      apiInstance.deleteAlertRetriggerRule(id);
    } catch (ApiException e) {
      System.err.println("Exception when calling AlertRetriggerRulesApi#deleteAlertRetriggerRule");
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

null (empty response body)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | alert re-trigger rule deleted |  -  |

<a id="getAlertRetriggerRule"></a>
# **getAlertRetriggerRule**
> AlertRetriggerRuleResponse getAlertRetriggerRule(id)

Retrieves an alert re-trigger rule

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.AlertRetriggerRulesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    AlertRetriggerRulesApi apiInstance = new AlertRetriggerRulesApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      AlertRetriggerRuleResponse result = apiInstance.getAlertRetriggerRule(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AlertRetriggerRulesApi#getAlertRetriggerRule");
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

[**AlertRetriggerRuleResponse**](AlertRetriggerRuleResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | alert re-trigger rule found |  -  |

<a id="listAlertRetriggerRules"></a>
# **listAlertRetriggerRules**
> AlertRetriggerRuleList listAlertRetriggerRules()

List alert re-trigger rules

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.AlertRetriggerRulesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    AlertRetriggerRulesApi apiInstance = new AlertRetriggerRulesApi(defaultClient);
    try {
      AlertRetriggerRuleList result = apiInstance.listAlertRetriggerRules();
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AlertRetriggerRulesApi#listAlertRetriggerRules");
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

[**AlertRetriggerRuleList**](AlertRetriggerRuleList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | alert re-trigger rules listed |  -  |

<a id="updateAlertRetriggerRule"></a>
# **updateAlertRetriggerRule**
> AlertRetriggerRuleResponse updateAlertRetriggerRule(id, updateAlertRetriggerRule)

Updates an alert re-trigger rule

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.AlertRetriggerRulesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    AlertRetriggerRulesApi apiInstance = new AlertRetriggerRulesApi(defaultClient);
    String id = "id_example"; // String | 
    UpdateAlertRetriggerRule updateAlertRetriggerRule = new UpdateAlertRetriggerRule(); // UpdateAlertRetriggerRule | 
    try {
      AlertRetriggerRuleResponse result = apiInstance.updateAlertRetriggerRule(id, updateAlertRetriggerRule);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AlertRetriggerRulesApi#updateAlertRetriggerRule");
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
| **updateAlertRetriggerRule** | [**UpdateAlertRetriggerRule**](UpdateAlertRetriggerRule.md)|  | |

### Return type

[**AlertRetriggerRuleResponse**](AlertRetriggerRuleResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | alert re-trigger rule updated |  -  |


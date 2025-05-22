# AlertRoutingRulesApi

All URIs are relative to *https://api.rootly.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createAlertRoutingRule**](AlertRoutingRulesApi.md#createAlertRoutingRule) | **POST** /v1/alert_routing_rules | Creates an alert routing rule |
| [**deleteAlertRoutingRule**](AlertRoutingRulesApi.md#deleteAlertRoutingRule) | **DELETE** /v1/alert_routing_rules/{id} | Delete an alert routing rule |
| [**getAlertRoutingRule**](AlertRoutingRulesApi.md#getAlertRoutingRule) | **GET** /v1/alert_routing_rules/{id} | Retrieves an alert routing rule |
| [**listAlertRoutingRules**](AlertRoutingRulesApi.md#listAlertRoutingRules) | **GET** /v1/alert_routing_rules | List alert routing rules |
| [**updateAlertRoutingRule**](AlertRoutingRulesApi.md#updateAlertRoutingRule) | **PUT** /v1/alert_routing_rules/{id} | Update an alert routing rule |


<a id="createAlertRoutingRule"></a>
# **createAlertRoutingRule**
> AlertRoutingRuleResponse createAlertRoutingRule(newAlertRoutingRule)

Creates an alert routing rule

Creates a new alert routing rule from provided data

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.AlertRoutingRulesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    AlertRoutingRulesApi apiInstance = new AlertRoutingRulesApi(defaultClient);
    NewAlertRoutingRule newAlertRoutingRule = new NewAlertRoutingRule(); // NewAlertRoutingRule | 
    try {
      AlertRoutingRuleResponse result = apiInstance.createAlertRoutingRule(newAlertRoutingRule);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AlertRoutingRulesApi#createAlertRoutingRule");
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
| **newAlertRoutingRule** | [**NewAlertRoutingRule**](NewAlertRoutingRule.md)|  | |

### Return type

[**AlertRoutingRuleResponse**](AlertRoutingRuleResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | alert routing rule created |  -  |
| **422** | invalid request |  -  |
| **401** | responds with unauthorized for invalid token |  -  |

<a id="deleteAlertRoutingRule"></a>
# **deleteAlertRoutingRule**
> AlertRoutingRuleResponse deleteAlertRoutingRule(id)

Delete an alert routing rule

Delete a specific alert routing rule by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.AlertRoutingRulesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    AlertRoutingRulesApi apiInstance = new AlertRoutingRulesApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      AlertRoutingRuleResponse result = apiInstance.deleteAlertRoutingRule(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AlertRoutingRulesApi#deleteAlertRoutingRule");
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

[**AlertRoutingRuleResponse**](AlertRoutingRuleResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | alert routing rule deleted |  -  |
| **404** | resource not found |  -  |

<a id="getAlertRoutingRule"></a>
# **getAlertRoutingRule**
> AlertRoutingRuleResponse getAlertRoutingRule(id)

Retrieves an alert routing rule

Retrieves a specific alert routing rule by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.AlertRoutingRulesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    AlertRoutingRulesApi apiInstance = new AlertRoutingRulesApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      AlertRoutingRuleResponse result = apiInstance.getAlertRoutingRule(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AlertRoutingRulesApi#getAlertRoutingRule");
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

[**AlertRoutingRuleResponse**](AlertRoutingRuleResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | alert routing rule found |  -  |
| **404** | resource not found |  -  |

<a id="listAlertRoutingRules"></a>
# **listAlertRoutingRules**
> AlertRoutingRuleList listAlertRoutingRules(include, pageNumber, pageSize, filterSearch, filterName, filterCreatedAtGt, filterCreatedAtGte, filterCreatedAtLt, filterCreatedAtLte, sort)

List alert routing rules

List alert routing rules

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.AlertRoutingRulesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    AlertRoutingRulesApi apiInstance = new AlertRoutingRulesApi(defaultClient);
    String include = "include_example"; // String | 
    Integer pageNumber = 56; // Integer | 
    Integer pageSize = 56; // Integer | 
    String filterSearch = "filterSearch_example"; // String | 
    String filterName = "filterName_example"; // String | 
    String filterCreatedAtGt = "filterCreatedAtGt_example"; // String | 
    String filterCreatedAtGte = "filterCreatedAtGte_example"; // String | 
    String filterCreatedAtLt = "filterCreatedAtLt_example"; // String | 
    String filterCreatedAtLte = "filterCreatedAtLte_example"; // String | 
    String sort = "sort_example"; // String | 
    try {
      AlertRoutingRuleList result = apiInstance.listAlertRoutingRules(include, pageNumber, pageSize, filterSearch, filterName, filterCreatedAtGt, filterCreatedAtGte, filterCreatedAtLt, filterCreatedAtLte, sort);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AlertRoutingRulesApi#listAlertRoutingRules");
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
| **include** | **String**|  | [optional] |
| **pageNumber** | **Integer**|  | [optional] |
| **pageSize** | **Integer**|  | [optional] |
| **filterSearch** | **String**|  | [optional] |
| **filterName** | **String**|  | [optional] |
| **filterCreatedAtGt** | **String**|  | [optional] |
| **filterCreatedAtGte** | **String**|  | [optional] |
| **filterCreatedAtLt** | **String**|  | [optional] |
| **filterCreatedAtLte** | **String**|  | [optional] |
| **sort** | **String**|  | [optional] |

### Return type

[**AlertRoutingRuleList**](AlertRoutingRuleList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | success |  -  |

<a id="updateAlertRoutingRule"></a>
# **updateAlertRoutingRule**
> AlertRoutingRuleResponse updateAlertRoutingRule(id, updateAlertRoutingRule)

Update an alert routing rule

Update a specific alert routing rule by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.AlertRoutingRulesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    AlertRoutingRulesApi apiInstance = new AlertRoutingRulesApi(defaultClient);
    String id = "id_example"; // String | 
    UpdateAlertRoutingRule updateAlertRoutingRule = new UpdateAlertRoutingRule(); // UpdateAlertRoutingRule | 
    try {
      AlertRoutingRuleResponse result = apiInstance.updateAlertRoutingRule(id, updateAlertRoutingRule);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AlertRoutingRulesApi#updateAlertRoutingRule");
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
| **updateAlertRoutingRule** | [**UpdateAlertRoutingRule**](UpdateAlertRoutingRule.md)|  | |

### Return type

[**AlertRoutingRuleResponse**](AlertRoutingRuleResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | alert routing rule updated |  -  |
| **404** | resource not found |  -  |


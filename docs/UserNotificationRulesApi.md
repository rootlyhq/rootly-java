# UserNotificationRulesApi

All URIs are relative to *https://api.rootly.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createUserNotificationRule**](UserNotificationRulesApi.md#createUserNotificationRule) | **POST** /v1/users/{user_id}/notification_rules | Creates an user notification rule |
| [**deleteUserNotificationRule**](UserNotificationRulesApi.md#deleteUserNotificationRule) | **DELETE** /v1/notification_rules/{id} | Delete an user notification rule |
| [**getUserNotificationRule**](UserNotificationRulesApi.md#getUserNotificationRule) | **GET** /v1/notification_rules/{id} | Retrieves an user notification rule |
| [**listUserNotificationRules**](UserNotificationRulesApi.md#listUserNotificationRules) | **GET** /v1/users/{user_id}/notification_rules | List user notification rules |
| [**updateUserNotificationRule**](UserNotificationRulesApi.md#updateUserNotificationRule) | **PUT** /v1/notification_rules/{id} | Update an user notification rule |


<a id="createUserNotificationRule"></a>
# **createUserNotificationRule**
> UserNotificationRuleResponse createUserNotificationRule(userId, newUserNotificationRule)

Creates an user notification rule

Creates a new user notification rule from provided data

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.UserNotificationRulesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    UserNotificationRulesApi apiInstance = new UserNotificationRulesApi(defaultClient);
    String userId = "userId_example"; // String | 
    NewUserNotificationRule newUserNotificationRule = new NewUserNotificationRule(); // NewUserNotificationRule | 
    try {
      UserNotificationRuleResponse result = apiInstance.createUserNotificationRule(userId, newUserNotificationRule);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling UserNotificationRulesApi#createUserNotificationRule");
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
| **userId** | **String**|  | |
| **newUserNotificationRule** | [**NewUserNotificationRule**](NewUserNotificationRule.md)|  | |

### Return type

[**UserNotificationRuleResponse**](UserNotificationRuleResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | user_notification_rule created |  -  |
| **422** | invalid request |  -  |
| **401** | responds with unauthorized for invalid token |  -  |

<a id="deleteUserNotificationRule"></a>
# **deleteUserNotificationRule**
> UserNotificationRuleResponse deleteUserNotificationRule(id)

Delete an user notification rule

Delete a specific user notification rule by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.UserNotificationRulesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    UserNotificationRulesApi apiInstance = new UserNotificationRulesApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      UserNotificationRuleResponse result = apiInstance.deleteUserNotificationRule(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling UserNotificationRulesApi#deleteUserNotificationRule");
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

[**UserNotificationRuleResponse**](UserNotificationRuleResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | user_notification_rule deleted |  -  |
| **404** | resource not found |  -  |

<a id="getUserNotificationRule"></a>
# **getUserNotificationRule**
> UserNotificationRuleResponse getUserNotificationRule(id)

Retrieves an user notification rule

Retrieves a specific user notification rule by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.UserNotificationRulesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    UserNotificationRulesApi apiInstance = new UserNotificationRulesApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      UserNotificationRuleResponse result = apiInstance.getUserNotificationRule(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling UserNotificationRulesApi#getUserNotificationRule");
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

[**UserNotificationRuleResponse**](UserNotificationRuleResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | user_notification_rule found |  -  |
| **404** | resource not found |  -  |

<a id="listUserNotificationRules"></a>
# **listUserNotificationRules**
> UserNotificationRuleList listUserNotificationRules(userId, include, pageNumber, pageSize, sort)

List user notification rules

List user notification rules

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.UserNotificationRulesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    UserNotificationRulesApi apiInstance = new UserNotificationRulesApi(defaultClient);
    String userId = "userId_example"; // String | 
    String include = "include_example"; // String | 
    Integer pageNumber = 56; // Integer | 
    Integer pageSize = 56; // Integer | 
    String sort = "sort_example"; // String | 
    try {
      UserNotificationRuleList result = apiInstance.listUserNotificationRules(userId, include, pageNumber, pageSize, sort);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling UserNotificationRulesApi#listUserNotificationRules");
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
| **userId** | **String**|  | |
| **include** | **String**|  | [optional] |
| **pageNumber** | **Integer**|  | [optional] |
| **pageSize** | **Integer**|  | [optional] |
| **sort** | **String**|  | [optional] |

### Return type

[**UserNotificationRuleList**](UserNotificationRuleList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | success |  -  |

<a id="updateUserNotificationRule"></a>
# **updateUserNotificationRule**
> UserNotificationRuleResponse updateUserNotificationRule(id, updateUserNotificationRule)

Update an user notification rule

Update a specific user notification rule by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.UserNotificationRulesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    UserNotificationRulesApi apiInstance = new UserNotificationRulesApi(defaultClient);
    String id = "id_example"; // String | 
    UpdateUserNotificationRule updateUserNotificationRule = new UpdateUserNotificationRule(); // UpdateUserNotificationRule | 
    try {
      UserNotificationRuleResponse result = apiInstance.updateUserNotificationRule(id, updateUserNotificationRule);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling UserNotificationRulesApi#updateUserNotificationRule");
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
| **updateUserNotificationRule** | [**UpdateUserNotificationRule**](UpdateUserNotificationRule.md)|  | |

### Return type

[**UserNotificationRuleResponse**](UserNotificationRuleResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | user_notification_rule updated |  -  |
| **404** | resource not found |  -  |


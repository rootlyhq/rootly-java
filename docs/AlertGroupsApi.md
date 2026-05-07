# AlertGroupsApi

All URIs are relative to *https://api.rootly.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createAlertGroup**](AlertGroupsApi.md#createAlertGroup) | **POST** /v1/alert_groups | Creates an alert group |
| [**deleteAlertGroup**](AlertGroupsApi.md#deleteAlertGroup) | **DELETE** /v1/alert_groups/{id} | Delete an alert group |
| [**getAlertGroup**](AlertGroupsApi.md#getAlertGroup) | **GET** /v1/alert_groups/{id} | Retrieves an alert group |
| [**listAlertGroups**](AlertGroupsApi.md#listAlertGroups) | **GET** /v1/alert_groups | List alert groups |
| [**updateAlertGroup**](AlertGroupsApi.md#updateAlertGroup) | **PATCH** /v1/alert_groups/{id} | Update an alert group |


<a id="createAlertGroup"></a>
# **createAlertGroup**
> AlertGroupResponse createAlertGroup(newAlertGroup)

Creates an alert group

Creates a new alert group. **Note**: For enhanced functionality and future compatibility, consider using the advanced alert grouping with &#x60;conditions&#x60; field instead of the legacy &#x60;group_by_alert_title&#x60;, &#x60;group_by_alert_urgency&#x60;, and &#x60;attributes&#x60; fields.

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.AlertGroupsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    AlertGroupsApi apiInstance = new AlertGroupsApi(defaultClient);
    NewAlertGroup newAlertGroup = new NewAlertGroup(); // NewAlertGroup | 
    try {
      AlertGroupResponse result = apiInstance.createAlertGroup(newAlertGroup);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AlertGroupsApi#createAlertGroup");
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
| **newAlertGroup** | [**NewAlertGroup**](NewAlertGroup.md)|  | |

### Return type

[**AlertGroupResponse**](AlertGroupResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | alert group created with conditions |  -  |
| **422** | invalid request |  -  |
| **401** | responds with unauthorized for invalid token |  -  |

<a id="deleteAlertGroup"></a>
# **deleteAlertGroup**
> AlertGroupResponse deleteAlertGroup(id)

Delete an alert group

Delete a specific alert group by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.AlertGroupsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    AlertGroupsApi apiInstance = new AlertGroupsApi(defaultClient);
    GetAlertFieldIdParameter id = new GetAlertFieldIdParameter(); // GetAlertFieldIdParameter | 
    try {
      AlertGroupResponse result = apiInstance.deleteAlertGroup(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AlertGroupsApi#deleteAlertGroup");
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
| **id** | [**GetAlertFieldIdParameter**](.md)|  | |

### Return type

[**AlertGroupResponse**](AlertGroupResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | alert group deleted |  -  |
| **404** | resource not found |  -  |

<a id="getAlertGroup"></a>
# **getAlertGroup**
> AlertGroupResponse getAlertGroup(id)

Retrieves an alert group

Retrieves a specific alert group by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.AlertGroupsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    AlertGroupsApi apiInstance = new AlertGroupsApi(defaultClient);
    GetAlertFieldIdParameter id = new GetAlertFieldIdParameter(); // GetAlertFieldIdParameter | 
    try {
      AlertGroupResponse result = apiInstance.getAlertGroup(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AlertGroupsApi#getAlertGroup");
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
| **id** | [**GetAlertFieldIdParameter**](.md)|  | |

### Return type

[**AlertGroupResponse**](AlertGroupResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | alert_group found by slug |  -  |
| **404** | resource not found |  -  |

<a id="listAlertGroups"></a>
# **listAlertGroups**
> AlertGroupList listAlertGroups(include)

List alert groups

List alert groups

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.AlertGroupsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    AlertGroupsApi apiInstance = new AlertGroupsApi(defaultClient);
    String include = "include_example"; // String | 
    try {
      AlertGroupList result = apiInstance.listAlertGroups(include);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AlertGroupsApi#listAlertGroups");
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

### Return type

[**AlertGroupList**](AlertGroupList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | success |  -  |

<a id="updateAlertGroup"></a>
# **updateAlertGroup**
> AlertGroupResponse updateAlertGroup(id, updateAlertGroup)

Update an alert group

Update a specific alert group by id. **Note**: For enhanced functionality and future compatibility, consider using the advanced alert grouping with &#x60;conditions&#x60; field instead of the legacy &#x60;group_by_alert_title&#x60;, &#x60;group_by_alert_urgency&#x60;, and &#x60;attributes&#x60; fields.

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.AlertGroupsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    AlertGroupsApi apiInstance = new AlertGroupsApi(defaultClient);
    GetAlertFieldIdParameter id = new GetAlertFieldIdParameter(); // GetAlertFieldIdParameter | 
    UpdateAlertGroup updateAlertGroup = new UpdateAlertGroup(); // UpdateAlertGroup | 
    try {
      AlertGroupResponse result = apiInstance.updateAlertGroup(id, updateAlertGroup);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AlertGroupsApi#updateAlertGroup");
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
| **id** | [**GetAlertFieldIdParameter**](.md)|  | |
| **updateAlertGroup** | [**UpdateAlertGroup**](UpdateAlertGroup.md)|  | |

### Return type

[**AlertGroupResponse**](AlertGroupResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | alert group updated with conditions |  -  |
| **404** | resource not found |  -  |


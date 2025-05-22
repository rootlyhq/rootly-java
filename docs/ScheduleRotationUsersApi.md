# ScheduleRotationUsersApi

All URIs are relative to *https://api.rootly.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createScheduleRotationUser**](ScheduleRotationUsersApi.md#createScheduleRotationUser) | **POST** /v1/schedule_rotations/{schedule_rotation_id}/schedule_rotation_users | Creates a schedule rotation user |
| [**deleteScheduleRotationUser**](ScheduleRotationUsersApi.md#deleteScheduleRotationUser) | **DELETE** /v1/schedule_rotation_users/{id} | Delete a schedule rotation user |
| [**getScheduleRotationUser**](ScheduleRotationUsersApi.md#getScheduleRotationUser) | **GET** /v1/schedule_rotation_users/{id} | Retrieves a schedule rotation user |
| [**listScheduleRotationUsers**](ScheduleRotationUsersApi.md#listScheduleRotationUsers) | **GET** /v1/schedule_rotations/{schedule_rotation_id}/schedule_rotation_users | List schedule rotation users |
| [**updateScheduleRotationUser**](ScheduleRotationUsersApi.md#updateScheduleRotationUser) | **PUT** /v1/schedule_rotation_users/{id} | Update schedule rotation user |


<a id="createScheduleRotationUser"></a>
# **createScheduleRotationUser**
> ScheduleRotationUserResponse createScheduleRotationUser(scheduleRotationId, newScheduleRotationUser)

Creates a schedule rotation user

Creates a new schedule rotation user from provided data

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.ScheduleRotationUsersApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    ScheduleRotationUsersApi apiInstance = new ScheduleRotationUsersApi(defaultClient);
    String scheduleRotationId = "scheduleRotationId_example"; // String | 
    NewScheduleRotationUser newScheduleRotationUser = new NewScheduleRotationUser(); // NewScheduleRotationUser | 
    try {
      ScheduleRotationUserResponse result = apiInstance.createScheduleRotationUser(scheduleRotationId, newScheduleRotationUser);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ScheduleRotationUsersApi#createScheduleRotationUser");
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
| **scheduleRotationId** | **String**|  | |
| **newScheduleRotationUser** | [**NewScheduleRotationUser**](NewScheduleRotationUser.md)|  | |

### Return type

[**ScheduleRotationUserResponse**](ScheduleRotationUserResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | schedule_rotation_user created |  -  |
| **422** | invalid request |  -  |
| **401** | responds with unauthorized for invalid token |  -  |

<a id="deleteScheduleRotationUser"></a>
# **deleteScheduleRotationUser**
> ScheduleRotationUserResponse deleteScheduleRotationUser(id)

Delete a schedule rotation user

Delete a specific schedule rotation user by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.ScheduleRotationUsersApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    ScheduleRotationUsersApi apiInstance = new ScheduleRotationUsersApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      ScheduleRotationUserResponse result = apiInstance.deleteScheduleRotationUser(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ScheduleRotationUsersApi#deleteScheduleRotationUser");
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

[**ScheduleRotationUserResponse**](ScheduleRotationUserResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | schedule_rotation_user deleted |  -  |
| **404** | resource not found |  -  |

<a id="getScheduleRotationUser"></a>
# **getScheduleRotationUser**
> ScheduleRotationUserResponse getScheduleRotationUser(id)

Retrieves a schedule rotation user

Retrieves a specific schedule rotation user by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.ScheduleRotationUsersApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    ScheduleRotationUsersApi apiInstance = new ScheduleRotationUsersApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      ScheduleRotationUserResponse result = apiInstance.getScheduleRotationUser(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ScheduleRotationUsersApi#getScheduleRotationUser");
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

[**ScheduleRotationUserResponse**](ScheduleRotationUserResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | schedule_rotation_user found |  -  |
| **404** | resource not found |  -  |

<a id="listScheduleRotationUsers"></a>
# **listScheduleRotationUsers**
> ScheduleRotationUserList listScheduleRotationUsers(scheduleRotationId, include, pageNumber, pageSize)

List schedule rotation users

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.ScheduleRotationUsersApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    ScheduleRotationUsersApi apiInstance = new ScheduleRotationUsersApi(defaultClient);
    String scheduleRotationId = "scheduleRotationId_example"; // String | 
    String include = "include_example"; // String | 
    Integer pageNumber = 56; // Integer | 
    Integer pageSize = 56; // Integer | 
    try {
      ScheduleRotationUserList result = apiInstance.listScheduleRotationUsers(scheduleRotationId, include, pageNumber, pageSize);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ScheduleRotationUsersApi#listScheduleRotationUsers");
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
| **scheduleRotationId** | **String**|  | |
| **include** | **String**|  | [optional] |
| **pageNumber** | **Integer**|  | [optional] |
| **pageSize** | **Integer**|  | [optional] |

### Return type

[**ScheduleRotationUserList**](ScheduleRotationUserList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | success |  -  |

<a id="updateScheduleRotationUser"></a>
# **updateScheduleRotationUser**
> ScheduleRotationUserResponse updateScheduleRotationUser(id, updateScheduleRotationUser)

Update schedule rotation user

Update a specific schedule rotation user by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.ScheduleRotationUsersApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    ScheduleRotationUsersApi apiInstance = new ScheduleRotationUsersApi(defaultClient);
    String id = "id_example"; // String | 
    UpdateScheduleRotationUser updateScheduleRotationUser = new UpdateScheduleRotationUser(); // UpdateScheduleRotationUser | 
    try {
      ScheduleRotationUserResponse result = apiInstance.updateScheduleRotationUser(id, updateScheduleRotationUser);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ScheduleRotationUsersApi#updateScheduleRotationUser");
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
| **updateScheduleRotationUser** | [**UpdateScheduleRotationUser**](UpdateScheduleRotationUser.md)|  | |

### Return type

[**ScheduleRotationUserResponse**](ScheduleRotationUserResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | schedule_rotation_user updated |  -  |
| **404** | resource not found |  -  |


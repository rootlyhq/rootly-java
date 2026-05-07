# UserPhoneNumbersApi

All URIs are relative to *https://api.rootly.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createUserPhoneNumber**](UserPhoneNumbersApi.md#createUserPhoneNumber) | **POST** /v1/users/{user_id}/phone_numbers | Creates a user phone number |
| [**deleteUserPhoneNumber**](UserPhoneNumbersApi.md#deleteUserPhoneNumber) | **DELETE** /v1/phone_numbers/{id} | Delete user phone number |
| [**getUserPhoneNumbers**](UserPhoneNumbersApi.md#getUserPhoneNumbers) | **GET** /v1/users/{user_id}/phone_numbers | Retrieves user phone numbers |
| [**showUserPhoneNumber**](UserPhoneNumbersApi.md#showUserPhoneNumber) | **GET** /v1/phone_numbers/{id} | Show user phone number |
| [**updateUserPhoneNumber**](UserPhoneNumbersApi.md#updateUserPhoneNumber) | **PUT** /v1/phone_numbers/{id} | Update user phone number |


<a id="createUserPhoneNumber"></a>
# **createUserPhoneNumber**
> UserPhoneNumberResponse createUserPhoneNumber(userId, newUserPhoneNumber)

Creates a user phone number

Creates a new user phone number from provided data

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.UserPhoneNumbersApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    UserPhoneNumbersApi apiInstance = new UserPhoneNumbersApi(defaultClient);
    String userId = "userId_example"; // String | 
    NewUserPhoneNumber newUserPhoneNumber = new NewUserPhoneNumber(); // NewUserPhoneNumber | 
    try {
      UserPhoneNumberResponse result = apiInstance.createUserPhoneNumber(userId, newUserPhoneNumber);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling UserPhoneNumbersApi#createUserPhoneNumber");
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
| **newUserPhoneNumber** | [**NewUserPhoneNumber**](NewUserPhoneNumber.md)|  | |

### Return type

[**UserPhoneNumberResponse**](UserPhoneNumberResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | user_phone_number created |  -  |
| **422** | invalid request |  -  |
| **401** | responds with unauthorized for invalid token |  -  |
| **404** | resource not found |  -  |

<a id="deleteUserPhoneNumber"></a>
# **deleteUserPhoneNumber**
> UserPhoneNumberResponse deleteUserPhoneNumber(id)

Delete user phone number

Deletes a user phone number

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.UserPhoneNumbersApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    UserPhoneNumbersApi apiInstance = new UserPhoneNumbersApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      UserPhoneNumberResponse result = apiInstance.deleteUserPhoneNumber(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling UserPhoneNumbersApi#deleteUserPhoneNumber");
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

[**UserPhoneNumberResponse**](UserPhoneNumberResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | user_phone_number deleted |  -  |
| **401** | responds with unauthorized for invalid token |  -  |
| **404** | resource not found |  -  |
| **422** | cannot delete phone number used by notification rule |  -  |

<a id="getUserPhoneNumbers"></a>
# **getUserPhoneNumbers**
> UserPhoneNumberList getUserPhoneNumbers(userId)

Retrieves user phone numbers

Retrieves all phone numbers for the specified user

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.UserPhoneNumbersApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    UserPhoneNumbersApi apiInstance = new UserPhoneNumbersApi(defaultClient);
    String userId = "userId_example"; // String | 
    try {
      UserPhoneNumberList result = apiInstance.getUserPhoneNumbers(userId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling UserPhoneNumbersApi#getUserPhoneNumbers");
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

### Return type

[**UserPhoneNumberList**](UserPhoneNumberList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | user_phone_numbers found |  -  |
| **401** | responds with unauthorized for invalid token |  -  |
| **404** | resource not found |  -  |

<a id="showUserPhoneNumber"></a>
# **showUserPhoneNumber**
> UserPhoneNumberResponse showUserPhoneNumber(id)

Show user phone number

Retrieves a specific user phone number

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.UserPhoneNumbersApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    UserPhoneNumbersApi apiInstance = new UserPhoneNumbersApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      UserPhoneNumberResponse result = apiInstance.showUserPhoneNumber(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling UserPhoneNumbersApi#showUserPhoneNumber");
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

[**UserPhoneNumberResponse**](UserPhoneNumberResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | user_phone_number found |  -  |
| **401** | responds with unauthorized for invalid token |  -  |
| **404** | resource not found |  -  |

<a id="updateUserPhoneNumber"></a>
# **updateUserPhoneNumber**
> UserPhoneNumberResponse updateUserPhoneNumber(id, updateUserPhoneNumber)

Update user phone number

Updates a user phone number

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.UserPhoneNumbersApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    UserPhoneNumbersApi apiInstance = new UserPhoneNumbersApi(defaultClient);
    String id = "id_example"; // String | 
    UpdateUserPhoneNumber updateUserPhoneNumber = new UpdateUserPhoneNumber(); // UpdateUserPhoneNumber | 
    try {
      UserPhoneNumberResponse result = apiInstance.updateUserPhoneNumber(id, updateUserPhoneNumber);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling UserPhoneNumbersApi#updateUserPhoneNumber");
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
| **updateUserPhoneNumber** | [**UpdateUserPhoneNumber**](UpdateUserPhoneNumber.md)|  | |

### Return type

[**UserPhoneNumberResponse**](UserPhoneNumberResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | user_phone_number updated and verification status reset |  -  |
| **422** | invalid request |  -  |
| **401** | responds with unauthorized for invalid token |  -  |
| **404** | resource not found |  -  |


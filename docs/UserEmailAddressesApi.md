# UserEmailAddressesApi

All URIs are relative to *https://api.rootly.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createUserEmailAddress**](UserEmailAddressesApi.md#createUserEmailAddress) | **POST** /v1/users/{user_id}/email_addresses | Creates a user email address |
| [**deleteUserEmailAddress**](UserEmailAddressesApi.md#deleteUserEmailAddress) | **DELETE** /v1/email_addresses/{id} | Delete user email address |
| [**getUserEmailAddresses**](UserEmailAddressesApi.md#getUserEmailAddresses) | **GET** /v1/users/{user_id}/email_addresses | Retrieves user email addresses |
| [**resendUserEmailAddressVerification**](UserEmailAddressesApi.md#resendUserEmailAddressVerification) | **POST** /v1/email_addresses/{id}/resend_verification | Resends verification email |
| [**showUserEmailAddress**](UserEmailAddressesApi.md#showUserEmailAddress) | **GET** /v1/email_addresses/{id} | Show user email address |
| [**updateUserEmailAddress**](UserEmailAddressesApi.md#updateUserEmailAddress) | **PUT** /v1/email_addresses/{id} | Update user email address |
| [**verifyUserEmailAddress**](UserEmailAddressesApi.md#verifyUserEmailAddress) | **POST** /v1/email_addresses/{id}/verify | Verifies an email address with token |


<a id="createUserEmailAddress"></a>
# **createUserEmailAddress**
> UserEmailAddressResponse createUserEmailAddress(userId, newUserEmailAddress)

Creates a user email address

Creates a new user email address from provided data

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.UserEmailAddressesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    UserEmailAddressesApi apiInstance = new UserEmailAddressesApi(defaultClient);
    String userId = "userId_example"; // String | 
    NewUserEmailAddress newUserEmailAddress = new NewUserEmailAddress(); // NewUserEmailAddress | 
    try {
      UserEmailAddressResponse result = apiInstance.createUserEmailAddress(userId, newUserEmailAddress);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling UserEmailAddressesApi#createUserEmailAddress");
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
| **newUserEmailAddress** | [**NewUserEmailAddress**](NewUserEmailAddress.md)|  | |

### Return type

[**UserEmailAddressResponse**](UserEmailAddressResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | user_email_address created |  -  |
| **401** | responds with unauthorized for invalid token |  -  |
| **404** | responds with not found when accessing other user&#39;s resources |  -  |
| **422** | invalid request |  -  |

<a id="deleteUserEmailAddress"></a>
# **deleteUserEmailAddress**
> UserEmailAddressResponse deleteUserEmailAddress(id)

Delete user email address

Deletes a user email address

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.UserEmailAddressesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    UserEmailAddressesApi apiInstance = new UserEmailAddressesApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      UserEmailAddressResponse result = apiInstance.deleteUserEmailAddress(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling UserEmailAddressesApi#deleteUserEmailAddress");
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

[**UserEmailAddressResponse**](UserEmailAddressResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | user_email_address deleted |  -  |
| **401** | responds with unauthorized for invalid token |  -  |
| **404** | responds with not found when accessing other user&#39;s resources |  -  |

<a id="getUserEmailAddresses"></a>
# **getUserEmailAddresses**
> UserEmailAddressList getUserEmailAddresses(userId)

Retrieves user email addresses

Retrieves all email addresses for the specified user

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.UserEmailAddressesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    UserEmailAddressesApi apiInstance = new UserEmailAddressesApi(defaultClient);
    String userId = "userId_example"; // String | 
    try {
      UserEmailAddressList result = apiInstance.getUserEmailAddresses(userId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling UserEmailAddressesApi#getUserEmailAddresses");
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

[**UserEmailAddressList**](UserEmailAddressList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | user_email_addresses found |  -  |
| **401** | responds with unauthorized for invalid token |  -  |
| **404** | responds with not found when accessing other user&#39;s resources |  -  |

<a id="resendUserEmailAddressVerification"></a>
# **resendUserEmailAddressVerification**
> UserEmailAddressResponse resendUserEmailAddressVerification(id)

Resends verification email

Resends verification email for an email address

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.UserEmailAddressesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    UserEmailAddressesApi apiInstance = new UserEmailAddressesApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      UserEmailAddressResponse result = apiInstance.resendUserEmailAddressVerification(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling UserEmailAddressesApi#resendUserEmailAddressVerification");
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

[**UserEmailAddressResponse**](UserEmailAddressResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | verification email sent successfully |  -  |
| **422** | email address already verified |  -  |
| **404** | email address not found |  -  |

<a id="showUserEmailAddress"></a>
# **showUserEmailAddress**
> UserEmailAddressResponse showUserEmailAddress(id)

Show user email address

Retrieves a specific user email address

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.UserEmailAddressesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    UserEmailAddressesApi apiInstance = new UserEmailAddressesApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      UserEmailAddressResponse result = apiInstance.showUserEmailAddress(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling UserEmailAddressesApi#showUserEmailAddress");
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

[**UserEmailAddressResponse**](UserEmailAddressResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | user_email_address found |  -  |
| **401** | responds with unauthorized for invalid token |  -  |
| **404** | responds with not found when accessing other user&#39;s resources |  -  |

<a id="updateUserEmailAddress"></a>
# **updateUserEmailAddress**
> UserEmailAddressResponse updateUserEmailAddress(id, updateUserEmailAddress)

Update user email address

Updates a user email address

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.UserEmailAddressesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    UserEmailAddressesApi apiInstance = new UserEmailAddressesApi(defaultClient);
    String id = "id_example"; // String | 
    UpdateUserEmailAddress updateUserEmailAddress = new UpdateUserEmailAddress(); // UpdateUserEmailAddress | 
    try {
      UserEmailAddressResponse result = apiInstance.updateUserEmailAddress(id, updateUserEmailAddress);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling UserEmailAddressesApi#updateUserEmailAddress");
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
| **updateUserEmailAddress** | [**UpdateUserEmailAddress**](UpdateUserEmailAddress.md)|  | |

### Return type

[**UserEmailAddressResponse**](UserEmailAddressResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | user_email_address updated |  -  |
| **401** | responds with unauthorized for invalid token |  -  |
| **404** | responds with not found when accessing other user&#39;s resources |  -  |
| **422** | invalid request |  -  |

<a id="verifyUserEmailAddress"></a>
# **verifyUserEmailAddress**
> UserEmailAddressResponse verifyUserEmailAddress(id, token)

Verifies an email address with token

Verifies an email address using a verification token

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.UserEmailAddressesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    UserEmailAddressesApi apiInstance = new UserEmailAddressesApi(defaultClient);
    String id = "id_example"; // String | 
    String token = "token_example"; // String | 
    try {
      UserEmailAddressResponse result = apiInstance.verifyUserEmailAddress(id, token);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling UserEmailAddressesApi#verifyUserEmailAddress");
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
| **token** | **String**|  | |

### Return type

[**UserEmailAddressResponse**](UserEmailAddressResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | email address verified successfully |  -  |
| **422** | invalid or expired token |  -  |
| **404** | email address not found |  -  |


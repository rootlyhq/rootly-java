# AlertConfigurationApi

All URIs are relative to *https://api.rootly.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**getAlertConfiguration**](AlertConfigurationApi.md#getAlertConfiguration) | **GET** /v1/alert_configuration | Retrieves the team&#39;s alert configuration |
| [**updateAlertConfiguration**](AlertConfigurationApi.md#updateAlertConfiguration) | **PUT** /v1/alert_configuration | Updates the team&#39;s alert configuration |


<a id="getAlertConfiguration"></a>
# **getAlertConfiguration**
> AlertConfigurationResponse getAlertConfiguration()

Retrieves the team&#39;s alert configuration

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.AlertConfigurationApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    AlertConfigurationApi apiInstance = new AlertConfigurationApi(defaultClient);
    try {
      AlertConfigurationResponse result = apiInstance.getAlertConfiguration();
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AlertConfigurationApi#getAlertConfiguration");
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

[**AlertConfigurationResponse**](AlertConfigurationResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | alert configuration found |  -  |
| **404** | team has no alert configuration |  -  |

<a id="updateAlertConfiguration"></a>
# **updateAlertConfiguration**
> AlertConfigurationResponse updateAlertConfiguration(updateAlertConfiguration)

Updates the team&#39;s alert configuration

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.AlertConfigurationApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    AlertConfigurationApi apiInstance = new AlertConfigurationApi(defaultClient);
    UpdateAlertConfiguration updateAlertConfiguration = new UpdateAlertConfiguration(); // UpdateAlertConfiguration | 
    try {
      AlertConfigurationResponse result = apiInstance.updateAlertConfiguration(updateAlertConfiguration);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AlertConfigurationApi#updateAlertConfiguration");
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
| **updateAlertConfiguration** | [**UpdateAlertConfiguration**](UpdateAlertConfiguration.md)|  | |

### Return type

[**AlertConfigurationResponse**](AlertConfigurationResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | alert configuration updated |  -  |
| **403** | an attribute&#39;s feature is not enabled for the team |  -  |
| **404** | team has no alert configuration |  -  |
| **422** | the settings are invalid |  -  |


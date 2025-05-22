# RetrospectiveConfigurationsApi

All URIs are relative to *https://api.rootly.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**getRetrospectiveConfiguration**](RetrospectiveConfigurationsApi.md#getRetrospectiveConfiguration) | **GET** /v1/retrospective_configurations/{id} | Retrieves a Retrospective Configuration |
| [**listRetrospectiveConfigurations**](RetrospectiveConfigurationsApi.md#listRetrospectiveConfigurations) | **GET** /v1/retrospective_configurations | List retrospective configurations |
| [**updateRetrospectiveConfiguration**](RetrospectiveConfigurationsApi.md#updateRetrospectiveConfiguration) | **PUT** /v1/retrospective_configurations/{id} | Update a retrospective configuration |


<a id="getRetrospectiveConfiguration"></a>
# **getRetrospectiveConfiguration**
> RetrospectiveConfigurationResponse getRetrospectiveConfiguration(id, include)

Retrieves a Retrospective Configuration

Retrieves a specific retrospective_configuration by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.RetrospectiveConfigurationsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    RetrospectiveConfigurationsApi apiInstance = new RetrospectiveConfigurationsApi(defaultClient);
    String id = "id_example"; // String | 
    String include = "severities"; // String | comma separated if needed. eg: severities,groups
    try {
      RetrospectiveConfigurationResponse result = apiInstance.getRetrospectiveConfiguration(id, include);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling RetrospectiveConfigurationsApi#getRetrospectiveConfiguration");
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
| **include** | **String**| comma separated if needed. eg: severities,groups | [optional] [enum: severities, groups, incident_types] |

### Return type

[**RetrospectiveConfigurationResponse**](RetrospectiveConfigurationResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | retrospective_configuration found |  -  |
| **404** | resource not found |  -  |

<a id="listRetrospectiveConfigurations"></a>
# **listRetrospectiveConfigurations**
> RetrospectiveConfigurationList listRetrospectiveConfigurations(include, pageNumber, pageSize, filterKind)

List retrospective configurations

List retrospective configurations

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.RetrospectiveConfigurationsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    RetrospectiveConfigurationsApi apiInstance = new RetrospectiveConfigurationsApi(defaultClient);
    String include = "severities"; // String | comma separated if needed. eg: severities,groups
    Integer pageNumber = 56; // Integer | 
    Integer pageSize = 56; // Integer | 
    String filterKind = "filterKind_example"; // String | 
    try {
      RetrospectiveConfigurationList result = apiInstance.listRetrospectiveConfigurations(include, pageNumber, pageSize, filterKind);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling RetrospectiveConfigurationsApi#listRetrospectiveConfigurations");
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
| **include** | **String**| comma separated if needed. eg: severities,groups | [optional] [enum: severities, groups, incident_types] |
| **pageNumber** | **Integer**|  | [optional] |
| **pageSize** | **Integer**|  | [optional] |
| **filterKind** | **String**|  | [optional] |

### Return type

[**RetrospectiveConfigurationList**](RetrospectiveConfigurationList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | success |  -  |

<a id="updateRetrospectiveConfiguration"></a>
# **updateRetrospectiveConfiguration**
> RetrospectiveConfigurationResponse updateRetrospectiveConfiguration(id, updateRetrospectiveConfiguration)

Update a retrospective configuration

Update a specific retrospective configuration by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.RetrospectiveConfigurationsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    RetrospectiveConfigurationsApi apiInstance = new RetrospectiveConfigurationsApi(defaultClient);
    String id = "id_example"; // String | 
    UpdateRetrospectiveConfiguration updateRetrospectiveConfiguration = new UpdateRetrospectiveConfiguration(); // UpdateRetrospectiveConfiguration | 
    try {
      RetrospectiveConfigurationResponse result = apiInstance.updateRetrospectiveConfiguration(id, updateRetrospectiveConfiguration);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling RetrospectiveConfigurationsApi#updateRetrospectiveConfiguration");
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
| **updateRetrospectiveConfiguration** | [**UpdateRetrospectiveConfiguration**](UpdateRetrospectiveConfiguration.md)|  | |

### Return type

[**RetrospectiveConfigurationResponse**](RetrospectiveConfigurationResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | retrospective configuration updated |  -  |
| **404** | resource not found |  -  |


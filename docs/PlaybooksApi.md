# PlaybooksApi

All URIs are relative to *https://api.rootly.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createPlaybook**](PlaybooksApi.md#createPlaybook) | **POST** /v1/playbooks | Creates a playbook |
| [**deletePlaybook**](PlaybooksApi.md#deletePlaybook) | **DELETE** /v1/playbooks/{id} | Delete a playbook |
| [**getPlaybook**](PlaybooksApi.md#getPlaybook) | **GET** /v1/playbooks/{id} | Retrieves a playbook |
| [**listPlaybooks**](PlaybooksApi.md#listPlaybooks) | **GET** /v1/playbooks | List playbooks |
| [**updatePlaybook**](PlaybooksApi.md#updatePlaybook) | **PUT** /v1/playbooks/{id} | Update a playbook |


<a id="createPlaybook"></a>
# **createPlaybook**
> PlaybookResponse createPlaybook(newPlaybook)

Creates a playbook

Creates a new playbook from provided data

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.PlaybooksApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    PlaybooksApi apiInstance = new PlaybooksApi(defaultClient);
    NewPlaybook newPlaybook = new NewPlaybook(); // NewPlaybook | 
    try {
      PlaybookResponse result = apiInstance.createPlaybook(newPlaybook);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling PlaybooksApi#createPlaybook");
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
| **newPlaybook** | [**NewPlaybook**](NewPlaybook.md)|  | |

### Return type

[**PlaybookResponse**](PlaybookResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | playbook created |  -  |
| **422** | invalid request |  -  |
| **401** | responds with unauthorized for invalid token |  -  |

<a id="deletePlaybook"></a>
# **deletePlaybook**
> PlaybookResponse deletePlaybook(id)

Delete a playbook

Delete a specific playbook by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.PlaybooksApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    PlaybooksApi apiInstance = new PlaybooksApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      PlaybookResponse result = apiInstance.deletePlaybook(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling PlaybooksApi#deletePlaybook");
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

[**PlaybookResponse**](PlaybookResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | playbook deleted |  -  |
| **404** | resource not found |  -  |

<a id="getPlaybook"></a>
# **getPlaybook**
> PlaybookResponse getPlaybook(id, include)

Retrieves a playbook

Retrieves a specific playbook by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.PlaybooksApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    PlaybooksApi apiInstance = new PlaybooksApi(defaultClient);
    String id = "id_example"; // String | 
    String include = "severities"; // String | comma separated if needed. eg: severities,environments,services
    try {
      PlaybookResponse result = apiInstance.getPlaybook(id, include);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling PlaybooksApi#getPlaybook");
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
| **include** | **String**| comma separated if needed. eg: severities,environments,services | [optional] [enum: severities, environments, services, functionalities, groups, causes, incident_types] |

### Return type

[**PlaybookResponse**](PlaybookResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | playbook found |  -  |
| **404** | resource not found |  -  |

<a id="listPlaybooks"></a>
# **listPlaybooks**
> PlaybookList listPlaybooks(include, pageNumber, pageSize)

List playbooks

List playbooks

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.PlaybooksApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    PlaybooksApi apiInstance = new PlaybooksApi(defaultClient);
    String include = "severities"; // String | comma separated if needed. eg: severities,environments,services
    Integer pageNumber = 56; // Integer | 
    Integer pageSize = 56; // Integer | 
    try {
      PlaybookList result = apiInstance.listPlaybooks(include, pageNumber, pageSize);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling PlaybooksApi#listPlaybooks");
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
| **include** | **String**| comma separated if needed. eg: severities,environments,services | [optional] [enum: severities, environments, services, functionalities, groups, causes, incident_types] |
| **pageNumber** | **Integer**|  | [optional] |
| **pageSize** | **Integer**|  | [optional] |

### Return type

[**PlaybookList**](PlaybookList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | success |  -  |

<a id="updatePlaybook"></a>
# **updatePlaybook**
> PlaybookResponse updatePlaybook(id, updatePlaybook)

Update a playbook

Update a specific playbook by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.PlaybooksApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    PlaybooksApi apiInstance = new PlaybooksApi(defaultClient);
    String id = "id_example"; // String | 
    UpdatePlaybook updatePlaybook = new UpdatePlaybook(); // UpdatePlaybook | 
    try {
      PlaybookResponse result = apiInstance.updatePlaybook(id, updatePlaybook);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling PlaybooksApi#updatePlaybook");
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
| **updatePlaybook** | [**UpdatePlaybook**](UpdatePlaybook.md)|  | |

### Return type

[**PlaybookResponse**](PlaybookResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | playbook updated |  -  |
| **404** | resource not found |  -  |


# VerifiedDomainsApi

All URIs are relative to *https://api.rootly.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**v1VerifiedDomainsGet**](VerifiedDomainsApi.md#v1VerifiedDomainsGet) | **GET** /v1/verified_domains | List verified domains |
| [**v1VerifiedDomainsIdDelete**](VerifiedDomainsApi.md#v1VerifiedDomainsIdDelete) | **DELETE** /v1/verified_domains/{id} | Delete a verified domain |
| [**v1VerifiedDomainsIdGet**](VerifiedDomainsApi.md#v1VerifiedDomainsIdGet) | **GET** /v1/verified_domains/{id} | Show a verified domain |
| [**v1VerifiedDomainsPost**](VerifiedDomainsApi.md#v1VerifiedDomainsPost) | **POST** /v1/verified_domains | Create a verified domain |


<a id="v1VerifiedDomainsGet"></a>
# **v1VerifiedDomainsGet**
> VerifiedDomainList v1VerifiedDomainsGet(pageNumber, pageSize)

List verified domains

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.VerifiedDomainsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    VerifiedDomainsApi apiInstance = new VerifiedDomainsApi(defaultClient);
    Integer pageNumber = 56; // Integer | 
    Integer pageSize = 56; // Integer | 
    try {
      VerifiedDomainList result = apiInstance.v1VerifiedDomainsGet(pageNumber, pageSize);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling VerifiedDomainsApi#v1VerifiedDomainsGet");
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
| **pageNumber** | **Integer**|  | [optional] |
| **pageSize** | **Integer**|  | [optional] |

### Return type

[**VerifiedDomainList**](VerifiedDomainList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | verified domains found |  -  |

<a id="v1VerifiedDomainsIdDelete"></a>
# **v1VerifiedDomainsIdDelete**
> VerifiedDomainResponse v1VerifiedDomainsIdDelete(id)

Delete a verified domain

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.VerifiedDomainsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    VerifiedDomainsApi apiInstance = new VerifiedDomainsApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      VerifiedDomainResponse result = apiInstance.v1VerifiedDomainsIdDelete(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling VerifiedDomainsApi#v1VerifiedDomainsIdDelete");
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

[**VerifiedDomainResponse**](VerifiedDomainResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | verified domain deleted |  -  |

<a id="v1VerifiedDomainsIdGet"></a>
# **v1VerifiedDomainsIdGet**
> VerifiedDomainResponse v1VerifiedDomainsIdGet(id)

Show a verified domain

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.VerifiedDomainsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    VerifiedDomainsApi apiInstance = new VerifiedDomainsApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      VerifiedDomainResponse result = apiInstance.v1VerifiedDomainsIdGet(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling VerifiedDomainsApi#v1VerifiedDomainsIdGet");
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

[**VerifiedDomainResponse**](VerifiedDomainResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | verified domain found |  -  |

<a id="v1VerifiedDomainsPost"></a>
# **v1VerifiedDomainsPost**
> VerifiedDomainResponse v1VerifiedDomainsPost(newVerifiedDomain)

Create a verified domain

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.VerifiedDomainsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    VerifiedDomainsApi apiInstance = new VerifiedDomainsApi(defaultClient);
    NewVerifiedDomain newVerifiedDomain = new NewVerifiedDomain(); // NewVerifiedDomain | 
    try {
      VerifiedDomainResponse result = apiInstance.v1VerifiedDomainsPost(newVerifiedDomain);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling VerifiedDomainsApi#v1VerifiedDomainsPost");
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
| **newVerifiedDomain** | [**NewVerifiedDomain**](NewVerifiedDomain.md)|  | |

### Return type

[**VerifiedDomainResponse**](VerifiedDomainResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | verified domain created |  -  |


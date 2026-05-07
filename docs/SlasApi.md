# SlasApi

All URIs are relative to *https://api.rootly.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createSLA**](SlasApi.md#createSLA) | **POST** /v1/slas | Creates an SLA |
| [**deleteSLA**](SlasApi.md#deleteSLA) | **DELETE** /v1/slas/{id} | Delete an SLA |
| [**getSLA**](SlasApi.md#getSLA) | **GET** /v1/slas/{id} | Retrieves an SLA |
| [**listSLAs**](SlasApi.md#listSLAs) | **GET** /v1/slas | List SLAs |
| [**updateSLA**](SlasApi.md#updateSLA) | **PUT** /v1/slas/{id} | Update an SLA |


<a id="createSLA"></a>
# **createSLA**
> SlaResponse createSLA(newSla)

Creates an SLA

Creates a new SLA from provided data

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.SlasApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    SlasApi apiInstance = new SlasApi(defaultClient);
    NewSla newSla = new NewSla(); // NewSla | 
    try {
      SlaResponse result = apiInstance.createSLA(newSla);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling SlasApi#createSLA");
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
| **newSla** | [**NewSla**](NewSla.md)|  | |

### Return type

[**SlaResponse**](SlaResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | SLA created |  -  |
| **422** | invalid request |  -  |
| **401** | responds with unauthorized for invalid token |  -  |

<a id="deleteSLA"></a>
# **deleteSLA**
> SlaResponse deleteSLA(id)

Delete an SLA

Delete a specific SLA by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.SlasApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    SlasApi apiInstance = new SlasApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      SlaResponse result = apiInstance.deleteSLA(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling SlasApi#deleteSLA");
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

[**SlaResponse**](SlaResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | SLA deleted |  -  |
| **404** | resource not found for another team |  -  |

<a id="getSLA"></a>
# **getSLA**
> SlaResponse getSLA(id)

Retrieves an SLA

Retrieves a specific SLA by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.SlasApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    SlasApi apiInstance = new SlasApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      SlaResponse result = apiInstance.getSLA(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling SlasApi#getSLA");
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

[**SlaResponse**](SlaResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | SLA found |  -  |
| **404** | resource not found for another team |  -  |

<a id="listSLAs"></a>
# **listSLAs**
> SlaList listSLAs(pageNumber, pageSize, filterSearch, filterSlug, filterName, filterCreatedAtGt, filterCreatedAtGte, filterCreatedAtLt, filterCreatedAtLte, sort)

List SLAs

List SLAs

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.SlasApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    SlasApi apiInstance = new SlasApi(defaultClient);
    Integer pageNumber = 56; // Integer | 
    Integer pageSize = 56; // Integer | 
    String filterSearch = "filterSearch_example"; // String | 
    String filterSlug = "filterSlug_example"; // String | 
    String filterName = "filterName_example"; // String | 
    String filterCreatedAtGt = "filterCreatedAtGt_example"; // String | 
    String filterCreatedAtGte = "filterCreatedAtGte_example"; // String | 
    String filterCreatedAtLt = "filterCreatedAtLt_example"; // String | 
    String filterCreatedAtLte = "filterCreatedAtLte_example"; // String | 
    String sort = "sort_example"; // String | 
    try {
      SlaList result = apiInstance.listSLAs(pageNumber, pageSize, filterSearch, filterSlug, filterName, filterCreatedAtGt, filterCreatedAtGte, filterCreatedAtLt, filterCreatedAtLte, sort);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling SlasApi#listSLAs");
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
| **filterSearch** | **String**|  | [optional] |
| **filterSlug** | **String**|  | [optional] |
| **filterName** | **String**|  | [optional] |
| **filterCreatedAtGt** | **String**|  | [optional] |
| **filterCreatedAtGte** | **String**|  | [optional] |
| **filterCreatedAtLt** | **String**|  | [optional] |
| **filterCreatedAtLte** | **String**|  | [optional] |
| **sort** | **String**|  | [optional] |

### Return type

[**SlaList**](SlaList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | success |  -  |

<a id="updateSLA"></a>
# **updateSLA**
> SlaResponse updateSLA(id, updateSla)

Update an SLA

Update a specific SLA by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.SlasApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    SlasApi apiInstance = new SlasApi(defaultClient);
    String id = "id_example"; // String | 
    UpdateSla updateSla = new UpdateSla(); // UpdateSla | 
    try {
      SlaResponse result = apiInstance.updateSLA(id, updateSla);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling SlasApi#updateSLA");
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
| **updateSla** | [**UpdateSla**](UpdateSla.md)|  | |

### Return type

[**SlaResponse**](SlaResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | SLA updated |  -  |
| **404** | resource not found for another team |  -  |


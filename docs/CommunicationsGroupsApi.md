# CommunicationsGroupsApi

All URIs are relative to *https://api.rootly.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createCommunicationsGroup**](CommunicationsGroupsApi.md#createCommunicationsGroup) | **POST** /v1/communications/groups | Creates a communications group |
| [**deleteCommunicationsGroup**](CommunicationsGroupsApi.md#deleteCommunicationsGroup) | **DELETE** /v1/communications/groups/{id} | Deletes a communications group |
| [**getCommunicationsGroup**](CommunicationsGroupsApi.md#getCommunicationsGroup) | **GET** /v1/communications/groups/{id} | Shows a communications group |
| [**listCommunicationsGroups**](CommunicationsGroupsApi.md#listCommunicationsGroups) | **GET** /v1/communications/groups | Lists communications groups |
| [**updateCommunicationsGroup**](CommunicationsGroupsApi.md#updateCommunicationsGroup) | **PATCH** /v1/communications/groups/{id} | Updates a communications group |


<a id="createCommunicationsGroup"></a>
# **createCommunicationsGroup**
> CommunicationsGroupResponse createCommunicationsGroup(newCommunicationsGroup)

Creates a communications group

Creates a new communications group from provided data

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.CommunicationsGroupsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    CommunicationsGroupsApi apiInstance = new CommunicationsGroupsApi(defaultClient);
    NewCommunicationsGroup newCommunicationsGroup = new NewCommunicationsGroup(); // NewCommunicationsGroup | 
    try {
      CommunicationsGroupResponse result = apiInstance.createCommunicationsGroup(newCommunicationsGroup);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling CommunicationsGroupsApi#createCommunicationsGroup");
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
| **newCommunicationsGroup** | [**NewCommunicationsGroup**](NewCommunicationsGroup.md)|  | |

### Return type

[**CommunicationsGroupResponse**](CommunicationsGroupResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | communications group created |  -  |
| **422** | invalid request |  -  |

<a id="deleteCommunicationsGroup"></a>
# **deleteCommunicationsGroup**
> deleteCommunicationsGroup(id)

Deletes a communications group

Deletes a communications group

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.CommunicationsGroupsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    CommunicationsGroupsApi apiInstance = new CommunicationsGroupsApi(defaultClient);
    String id = "id_example"; // String | Communications Group ID
    try {
      apiInstance.deleteCommunicationsGroup(id);
    } catch (ApiException e) {
      System.err.println("Exception when calling CommunicationsGroupsApi#deleteCommunicationsGroup");
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
| **id** | **String**| Communications Group ID | |

### Return type

null (empty response body)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | communications group deleted |  -  |
| **404** | communications group not found |  -  |

<a id="getCommunicationsGroup"></a>
# **getCommunicationsGroup**
> CommunicationsGroupResponse getCommunicationsGroup(id)

Shows a communications group

Shows details of a communications group

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.CommunicationsGroupsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    CommunicationsGroupsApi apiInstance = new CommunicationsGroupsApi(defaultClient);
    String id = "id_example"; // String | Communications Group ID
    try {
      CommunicationsGroupResponse result = apiInstance.getCommunicationsGroup(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling CommunicationsGroupsApi#getCommunicationsGroup");
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
| **id** | **String**| Communications Group ID | |

### Return type

[**CommunicationsGroupResponse**](CommunicationsGroupResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | communications group found |  -  |
| **404** | communications group not found |  -  |

<a id="listCommunicationsGroups"></a>
# **listCommunicationsGroups**
> CommunicationsGroupsResponse listCommunicationsGroups(pageNumber, pageSize, filterSearch, filterName, filterSlug, filterIsPrivate, filterCommunicationTypeId, filterConditionType, filterCreatedAtGt, filterCreatedAtGte, filterCreatedAtLt, filterCreatedAtLte, sort)

Lists communications groups

Lists communications groups

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.CommunicationsGroupsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    CommunicationsGroupsApi apiInstance = new CommunicationsGroupsApi(defaultClient);
    Integer pageNumber = 56; // Integer | 
    Integer pageSize = 56; // Integer | 
    String filterSearch = "filterSearch_example"; // String | 
    String filterName = "filterName_example"; // String | 
    String filterSlug = "filterSlug_example"; // String | 
    String filterIsPrivate = "filterIsPrivate_example"; // String | 
    String filterCommunicationTypeId = "filterCommunicationTypeId_example"; // String | 
    String filterConditionType = "filterConditionType_example"; // String | 
    String filterCreatedAtGt = "filterCreatedAtGt_example"; // String | 
    String filterCreatedAtGte = "filterCreatedAtGte_example"; // String | 
    String filterCreatedAtLt = "filterCreatedAtLt_example"; // String | 
    String filterCreatedAtLte = "filterCreatedAtLte_example"; // String | 
    String sort = "sort_example"; // String | 
    try {
      CommunicationsGroupsResponse result = apiInstance.listCommunicationsGroups(pageNumber, pageSize, filterSearch, filterName, filterSlug, filterIsPrivate, filterCommunicationTypeId, filterConditionType, filterCreatedAtGt, filterCreatedAtGte, filterCreatedAtLt, filterCreatedAtLte, sort);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling CommunicationsGroupsApi#listCommunicationsGroups");
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
| **filterName** | **String**|  | [optional] |
| **filterSlug** | **String**|  | [optional] |
| **filterIsPrivate** | **String**|  | [optional] |
| **filterCommunicationTypeId** | **String**|  | [optional] |
| **filterConditionType** | **String**|  | [optional] |
| **filterCreatedAtGt** | **String**|  | [optional] |
| **filterCreatedAtGte** | **String**|  | [optional] |
| **filterCreatedAtLt** | **String**|  | [optional] |
| **filterCreatedAtLte** | **String**|  | [optional] |
| **sort** | **String**|  | [optional] |

### Return type

[**CommunicationsGroupsResponse**](CommunicationsGroupsResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | communications groups found |  -  |

<a id="updateCommunicationsGroup"></a>
# **updateCommunicationsGroup**
> CommunicationsGroupResponse updateCommunicationsGroup(id, updateCommunicationsGroup)

Updates a communications group

Updates a communications group

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.CommunicationsGroupsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    CommunicationsGroupsApi apiInstance = new CommunicationsGroupsApi(defaultClient);
    String id = "id_example"; // String | Communications Group ID
    UpdateCommunicationsGroup updateCommunicationsGroup = new UpdateCommunicationsGroup(); // UpdateCommunicationsGroup | 
    try {
      CommunicationsGroupResponse result = apiInstance.updateCommunicationsGroup(id, updateCommunicationsGroup);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling CommunicationsGroupsApi#updateCommunicationsGroup");
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
| **id** | **String**| Communications Group ID | |
| **updateCommunicationsGroup** | [**UpdateCommunicationsGroup**](UpdateCommunicationsGroup.md)|  | |

### Return type

[**CommunicationsGroupResponse**](CommunicationsGroupResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | communications group updated |  -  |
| **422** | invalid request |  -  |


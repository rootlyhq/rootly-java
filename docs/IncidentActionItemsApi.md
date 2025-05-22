# IncidentActionItemsApi

All URIs are relative to *https://api.rootly.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createIncidentActionItem**](IncidentActionItemsApi.md#createIncidentActionItem) | **POST** /v1/incidents/{incident_id}/action_items | Creates an incident action item |
| [**deleteIncidentActionItem**](IncidentActionItemsApi.md#deleteIncidentActionItem) | **DELETE** /v1/action_items/{id} | Delete an incident action item |
| [**getIncidentActionItems**](IncidentActionItemsApi.md#getIncidentActionItems) | **GET** /v1/action_items/{id} | Retrieves an incident action item |
| [**listAllIncidentActionItems**](IncidentActionItemsApi.md#listAllIncidentActionItems) | **GET** /v1/action_items | List all action items for an organization |
| [**listIncidentActionItems**](IncidentActionItemsApi.md#listIncidentActionItems) | **GET** /v1/incidents/{incident_id}/action_items | List incident action items |
| [**updateIncidentActionItem**](IncidentActionItemsApi.md#updateIncidentActionItem) | **PUT** /v1/action_items/{id} | Update an incident action item |


<a id="createIncidentActionItem"></a>
# **createIncidentActionItem**
> IncidentActionItemResponse createIncidentActionItem(incidentId, newIncidentActionItem)

Creates an incident action item

Creates a new action item from provided data

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.IncidentActionItemsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    IncidentActionItemsApi apiInstance = new IncidentActionItemsApi(defaultClient);
    String incidentId = "incidentId_example"; // String | 
    NewIncidentActionItem newIncidentActionItem = new NewIncidentActionItem(); // NewIncidentActionItem | 
    try {
      IncidentActionItemResponse result = apiInstance.createIncidentActionItem(incidentId, newIncidentActionItem);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling IncidentActionItemsApi#createIncidentActionItem");
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
| **incidentId** | **String**|  | |
| **newIncidentActionItem** | [**NewIncidentActionItem**](NewIncidentActionItem.md)|  | |

### Return type

[**IncidentActionItemResponse**](IncidentActionItemResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | incident_action_item created |  -  |
| **422** | invalid request |  -  |
| **401** | responds with unauthorized for invalid token |  -  |

<a id="deleteIncidentActionItem"></a>
# **deleteIncidentActionItem**
> IncidentActionItemResponse deleteIncidentActionItem(id)

Delete an incident action item

Delete a specific incident action item by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.IncidentActionItemsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    IncidentActionItemsApi apiInstance = new IncidentActionItemsApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      IncidentActionItemResponse result = apiInstance.deleteIncidentActionItem(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling IncidentActionItemsApi#deleteIncidentActionItem");
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

[**IncidentActionItemResponse**](IncidentActionItemResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | incident_action_item deleted |  -  |
| **404** | resource not found |  -  |

<a id="getIncidentActionItems"></a>
# **getIncidentActionItems**
> IncidentActionItemResponse getIncidentActionItems(id)

Retrieves an incident action item

Retrieves a specific incident_action_item by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.IncidentActionItemsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    IncidentActionItemsApi apiInstance = new IncidentActionItemsApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      IncidentActionItemResponse result = apiInstance.getIncidentActionItems(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling IncidentActionItemsApi#getIncidentActionItems");
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

[**IncidentActionItemResponse**](IncidentActionItemResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | incident_action_item found |  -  |
| **404** | resource not found |  -  |

<a id="listAllIncidentActionItems"></a>
# **listAllIncidentActionItems**
> IncidentActionItemList listAllIncidentActionItems(include, pageNumber, pageSize, filterKind, filterPriority, filterStatus, filterIncidentStatus, filterIncidentCreatedAtGt, filterIncidentCreatedAtGte, filterIncidentCreatedAtLt, filterIncidentCreatedAtLte, filterDueDateGt, filterDueDateGte, filterDueDateLt, filterDueDateLte, filterCreatedAtGt, filterCreatedAtGte, filterCreatedAtLt, filterCreatedAtLte, sort)

List all action items for an organization

List all action items for an organization

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.IncidentActionItemsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    IncidentActionItemsApi apiInstance = new IncidentActionItemsApi(defaultClient);
    String include = "include_example"; // String | 
    Integer pageNumber = 56; // Integer | 
    Integer pageSize = 56; // Integer | 
    String filterKind = "filterKind_example"; // String | 
    String filterPriority = "filterPriority_example"; // String | 
    String filterStatus = "filterStatus_example"; // String | 
    String filterIncidentStatus = "filterIncidentStatus_example"; // String | 
    String filterIncidentCreatedAtGt = "filterIncidentCreatedAtGt_example"; // String | 
    String filterIncidentCreatedAtGte = "filterIncidentCreatedAtGte_example"; // String | 
    String filterIncidentCreatedAtLt = "filterIncidentCreatedAtLt_example"; // String | 
    String filterIncidentCreatedAtLte = "filterIncidentCreatedAtLte_example"; // String | 
    String filterDueDateGt = "filterDueDateGt_example"; // String | 
    String filterDueDateGte = "filterDueDateGte_example"; // String | 
    String filterDueDateLt = "filterDueDateLt_example"; // String | 
    String filterDueDateLte = "filterDueDateLte_example"; // String | 
    String filterCreatedAtGt = "filterCreatedAtGt_example"; // String | 
    String filterCreatedAtGte = "filterCreatedAtGte_example"; // String | 
    String filterCreatedAtLt = "filterCreatedAtLt_example"; // String | 
    String filterCreatedAtLte = "filterCreatedAtLte_example"; // String | 
    String sort = "sort_example"; // String | 
    try {
      IncidentActionItemList result = apiInstance.listAllIncidentActionItems(include, pageNumber, pageSize, filterKind, filterPriority, filterStatus, filterIncidentStatus, filterIncidentCreatedAtGt, filterIncidentCreatedAtGte, filterIncidentCreatedAtLt, filterIncidentCreatedAtLte, filterDueDateGt, filterDueDateGte, filterDueDateLt, filterDueDateLte, filterCreatedAtGt, filterCreatedAtGte, filterCreatedAtLt, filterCreatedAtLte, sort);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling IncidentActionItemsApi#listAllIncidentActionItems");
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
| **pageNumber** | **Integer**|  | [optional] |
| **pageSize** | **Integer**|  | [optional] |
| **filterKind** | **String**|  | [optional] |
| **filterPriority** | **String**|  | [optional] |
| **filterStatus** | **String**|  | [optional] |
| **filterIncidentStatus** | **String**|  | [optional] |
| **filterIncidentCreatedAtGt** | **String**|  | [optional] |
| **filterIncidentCreatedAtGte** | **String**|  | [optional] |
| **filterIncidentCreatedAtLt** | **String**|  | [optional] |
| **filterIncidentCreatedAtLte** | **String**|  | [optional] |
| **filterDueDateGt** | **String**|  | [optional] |
| **filterDueDateGte** | **String**|  | [optional] |
| **filterDueDateLt** | **String**|  | [optional] |
| **filterDueDateLte** | **String**|  | [optional] |
| **filterCreatedAtGt** | **String**|  | [optional] |
| **filterCreatedAtGte** | **String**|  | [optional] |
| **filterCreatedAtLt** | **String**|  | [optional] |
| **filterCreatedAtLte** | **String**|  | [optional] |
| **sort** | **String**|  | [optional] |

### Return type

[**IncidentActionItemList**](IncidentActionItemList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | success |  -  |

<a id="listIncidentActionItems"></a>
# **listIncidentActionItems**
> IncidentActionItemList listIncidentActionItems(incidentId, include, pageNumber, pageSize)

List incident action items

List incident action items

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.IncidentActionItemsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    IncidentActionItemsApi apiInstance = new IncidentActionItemsApi(defaultClient);
    String incidentId = "incidentId_example"; // String | 
    String include = "include_example"; // String | 
    Integer pageNumber = 56; // Integer | 
    Integer pageSize = 56; // Integer | 
    try {
      IncidentActionItemList result = apiInstance.listIncidentActionItems(incidentId, include, pageNumber, pageSize);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling IncidentActionItemsApi#listIncidentActionItems");
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
| **incidentId** | **String**|  | |
| **include** | **String**|  | [optional] |
| **pageNumber** | **Integer**|  | [optional] |
| **pageSize** | **Integer**|  | [optional] |

### Return type

[**IncidentActionItemList**](IncidentActionItemList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | success |  -  |

<a id="updateIncidentActionItem"></a>
# **updateIncidentActionItem**
> IncidentActionItemResponse updateIncidentActionItem(id, updateIncidentActionItem)

Update an incident action item

Update a specific incident action item by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.IncidentActionItemsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    IncidentActionItemsApi apiInstance = new IncidentActionItemsApi(defaultClient);
    String id = "id_example"; // String | 
    UpdateIncidentActionItem updateIncidentActionItem = new UpdateIncidentActionItem(); // UpdateIncidentActionItem | 
    try {
      IncidentActionItemResponse result = apiInstance.updateIncidentActionItem(id, updateIncidentActionItem);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling IncidentActionItemsApi#updateIncidentActionItem");
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
| **updateIncidentActionItem** | [**UpdateIncidentActionItem**](UpdateIncidentActionItem.md)|  | |

### Return type

[**IncidentActionItemResponse**](IncidentActionItemResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | incident_action_item updated |  -  |
| **404** | resource not found |  -  |


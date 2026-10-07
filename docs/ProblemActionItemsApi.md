# ProblemActionItemsApi

All URIs are relative to *https://api.rootly.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createProblemActionItem**](ProblemActionItemsApi.md#createProblemActionItem) | **POST** /v1/problems/{problem_id}/action_items | Creates a problem action item |
| [**deleteProblemActionItem**](ProblemActionItemsApi.md#deleteProblemActionItem) | **DELETE** /v1/problem_action_items/{id} | Deletes a problem action item |
| [**getProblemActionItem**](ProblemActionItemsApi.md#getProblemActionItem) | **GET** /v1/problem_action_items/{id} | Retrieves a problem action item |
| [**listAllProblemActionItems**](ProblemActionItemsApi.md#listAllProblemActionItems) | **GET** /v1/problem_action_items | List all problem action items |
| [**listProblemActionItems**](ProblemActionItemsApi.md#listProblemActionItems) | **GET** /v1/problems/{problem_id}/action_items | List a problem&#39;s action items |
| [**updateProblemActionItem**](ProblemActionItemsApi.md#updateProblemActionItem) | **PUT** /v1/problem_action_items/{id} | Update a problem action item |


<a id="createProblemActionItem"></a>
# **createProblemActionItem**
> ProblemActionItemResponse createProblemActionItem(problemId, newProblemActionItem)

Creates a problem action item

Creates a new action item on a problem from provided data

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.ProblemActionItemsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    ProblemActionItemsApi apiInstance = new ProblemActionItemsApi(defaultClient);
    String problemId = "problemId_example"; // String | 
    NewProblemActionItem newProblemActionItem = new NewProblemActionItem(); // NewProblemActionItem | 
    try {
      ProblemActionItemResponse result = apiInstance.createProblemActionItem(problemId, newProblemActionItem);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ProblemActionItemsApi#createProblemActionItem");
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
| **problemId** | **String**|  | |
| **newProblemActionItem** | [**NewProblemActionItem**](NewProblemActionItem.md)|  | |

### Return type

[**ProblemActionItemResponse**](ProblemActionItemResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | problem action item created |  -  |
| **422** | invalid request |  -  |
| **401** | responds with unauthorized for invalid token |  -  |

<a id="deleteProblemActionItem"></a>
# **deleteProblemActionItem**
> ProblemActionItemResponse deleteProblemActionItem(id)

Deletes a problem action item

Deletes a problem action item

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.ProblemActionItemsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    ProblemActionItemsApi apiInstance = new ProblemActionItemsApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      ProblemActionItemResponse result = apiInstance.deleteProblemActionItem(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ProblemActionItemsApi#deleteProblemActionItem");
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

[**ProblemActionItemResponse**](ProblemActionItemResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | problem action item deleted |  -  |
| **404** | problem action item not found |  -  |

<a id="getProblemActionItem"></a>
# **getProblemActionItem**
> ProblemActionItemResponse getProblemActionItem(id)

Retrieves a problem action item

Retrieves a specific problem action item by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.ProblemActionItemsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    ProblemActionItemsApi apiInstance = new ProblemActionItemsApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      ProblemActionItemResponse result = apiInstance.getProblemActionItem(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ProblemActionItemsApi#getProblemActionItem");
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

[**ProblemActionItemResponse**](ProblemActionItemResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | assignee without problems.read can view their assigned item |  -  |
| **404** | problem action item not found |  -  |

<a id="listAllProblemActionItems"></a>
# **listAllProblemActionItems**
> ProblemActionItemList listAllProblemActionItems(pageNumber, pageSize, sort, problemId, filterSearch, filterDueDateGt, filterDueDateGte, filterDueDateLt, filterDueDateLte, filterCreatedAtGt, filterCreatedAtGte, filterCreatedAtLt, filterCreatedAtLte, filterStatusEq, filterStatusNotEq, filterStatusIn, filterStatusNotIn, filterPriorityEq, filterPriorityNotEq, filterPriorityIn, filterPriorityNotIn, filterAssignedToUserIdEq, filterAssignedToUserIdNotEq, filterAssignedToUserIdIn, filterAssignedToUserIdNotIn)

List all problem action items

List all problem action items the caller can access across the team, with filter, sort and pagination support

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.ProblemActionItemsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    ProblemActionItemsApi apiInstance = new ProblemActionItemsApi(defaultClient);
    Integer pageNumber = 56; // Integer | 
    Integer pageSize = 56; // Integer | 
    String sort = "sort_example"; // String | 
    String problemId = "problemId_example"; // String | 
    String filterSearch = "filterSearch_example"; // String | 
    String filterDueDateGt = "filterDueDateGt_example"; // String | 
    String filterDueDateGte = "filterDueDateGte_example"; // String | 
    String filterDueDateLt = "filterDueDateLt_example"; // String | 
    String filterDueDateLte = "filterDueDateLte_example"; // String | 
    String filterCreatedAtGt = "filterCreatedAtGt_example"; // String | 
    String filterCreatedAtGte = "filterCreatedAtGte_example"; // String | 
    String filterCreatedAtLt = "filterCreatedAtLt_example"; // String | 
    String filterCreatedAtLte = "filterCreatedAtLte_example"; // String | 
    String filterStatusEq = "filterStatusEq_example"; // String | 
    String filterStatusNotEq = "filterStatusNotEq_example"; // String | 
    String filterStatusIn = "filterStatusIn_example"; // String | 
    String filterStatusNotIn = "filterStatusNotIn_example"; // String | 
    String filterPriorityEq = "filterPriorityEq_example"; // String | 
    String filterPriorityNotEq = "filterPriorityNotEq_example"; // String | 
    String filterPriorityIn = "filterPriorityIn_example"; // String | 
    String filterPriorityNotIn = "filterPriorityNotIn_example"; // String | 
    String filterAssignedToUserIdEq = "filterAssignedToUserIdEq_example"; // String | 
    String filterAssignedToUserIdNotEq = "filterAssignedToUserIdNotEq_example"; // String | 
    String filterAssignedToUserIdIn = "filterAssignedToUserIdIn_example"; // String | 
    String filterAssignedToUserIdNotIn = "filterAssignedToUserIdNotIn_example"; // String | 
    try {
      ProblemActionItemList result = apiInstance.listAllProblemActionItems(pageNumber, pageSize, sort, problemId, filterSearch, filterDueDateGt, filterDueDateGte, filterDueDateLt, filterDueDateLte, filterCreatedAtGt, filterCreatedAtGte, filterCreatedAtLt, filterCreatedAtLte, filterStatusEq, filterStatusNotEq, filterStatusIn, filterStatusNotIn, filterPriorityEq, filterPriorityNotEq, filterPriorityIn, filterPriorityNotIn, filterAssignedToUserIdEq, filterAssignedToUserIdNotEq, filterAssignedToUserIdIn, filterAssignedToUserIdNotIn);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ProblemActionItemsApi#listAllProblemActionItems");
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
| **sort** | **String**|  | [optional] |
| **problemId** | **String**|  | [optional] |
| **filterSearch** | **String**|  | [optional] |
| **filterDueDateGt** | **String**|  | [optional] |
| **filterDueDateGte** | **String**|  | [optional] |
| **filterDueDateLt** | **String**|  | [optional] |
| **filterDueDateLte** | **String**|  | [optional] |
| **filterCreatedAtGt** | **String**|  | [optional] |
| **filterCreatedAtGte** | **String**|  | [optional] |
| **filterCreatedAtLt** | **String**|  | [optional] |
| **filterCreatedAtLte** | **String**|  | [optional] |
| **filterStatusEq** | **String**|  | [optional] |
| **filterStatusNotEq** | **String**|  | [optional] |
| **filterStatusIn** | **String**|  | [optional] |
| **filterStatusNotIn** | **String**|  | [optional] |
| **filterPriorityEq** | **String**|  | [optional] |
| **filterPriorityNotEq** | **String**|  | [optional] |
| **filterPriorityIn** | **String**|  | [optional] |
| **filterPriorityNotIn** | **String**|  | [optional] |
| **filterAssignedToUserIdEq** | **String**|  | [optional] |
| **filterAssignedToUserIdNotEq** | **String**|  | [optional] |
| **filterAssignedToUserIdIn** | **String**|  | [optional] |
| **filterAssignedToUserIdNotIn** | **String**|  | [optional] |

### Return type

[**ProblemActionItemList**](ProblemActionItemList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | excludes items from other teams |  -  |
| **404** | problem-management feature flag disabled |  -  |

<a id="listProblemActionItems"></a>
# **listProblemActionItems**
> ProblemActionItemList listProblemActionItems(problemId, pageNumber, pageSize, sort, filterSearch, filterDueDateGt, filterDueDateGte, filterDueDateLt, filterDueDateLte, filterCreatedAtGt, filterCreatedAtGte, filterCreatedAtLt, filterCreatedAtLte, filterStatusEq, filterStatusNotEq, filterStatusIn, filterStatusNotIn, filterPriorityEq, filterPriorityNotEq, filterPriorityIn, filterPriorityNotIn, filterAssignedToUserIdEq, filterAssignedToUserIdNotEq, filterAssignedToUserIdIn, filterAssignedToUserIdNotIn)

List a problem&#39;s action items

List action items belonging to a problem, with filter, sort and pagination support

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.ProblemActionItemsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    ProblemActionItemsApi apiInstance = new ProblemActionItemsApi(defaultClient);
    String problemId = "problemId_example"; // String | 
    Integer pageNumber = 56; // Integer | 
    Integer pageSize = 56; // Integer | 
    String sort = "sort_example"; // String | 
    String filterSearch = "filterSearch_example"; // String | 
    String filterDueDateGt = "filterDueDateGt_example"; // String | 
    String filterDueDateGte = "filterDueDateGte_example"; // String | 
    String filterDueDateLt = "filterDueDateLt_example"; // String | 
    String filterDueDateLte = "filterDueDateLte_example"; // String | 
    String filterCreatedAtGt = "filterCreatedAtGt_example"; // String | 
    String filterCreatedAtGte = "filterCreatedAtGte_example"; // String | 
    String filterCreatedAtLt = "filterCreatedAtLt_example"; // String | 
    String filterCreatedAtLte = "filterCreatedAtLte_example"; // String | 
    String filterStatusEq = "filterStatusEq_example"; // String | 
    String filterStatusNotEq = "filterStatusNotEq_example"; // String | 
    String filterStatusIn = "filterStatusIn_example"; // String | 
    String filterStatusNotIn = "filterStatusNotIn_example"; // String | 
    String filterPriorityEq = "filterPriorityEq_example"; // String | 
    String filterPriorityNotEq = "filterPriorityNotEq_example"; // String | 
    String filterPriorityIn = "filterPriorityIn_example"; // String | 
    String filterPriorityNotIn = "filterPriorityNotIn_example"; // String | 
    String filterAssignedToUserIdEq = "filterAssignedToUserIdEq_example"; // String | 
    String filterAssignedToUserIdNotEq = "filterAssignedToUserIdNotEq_example"; // String | 
    String filterAssignedToUserIdIn = "filterAssignedToUserIdIn_example"; // String | 
    String filterAssignedToUserIdNotIn = "filterAssignedToUserIdNotIn_example"; // String | 
    try {
      ProblemActionItemList result = apiInstance.listProblemActionItems(problemId, pageNumber, pageSize, sort, filterSearch, filterDueDateGt, filterDueDateGte, filterDueDateLt, filterDueDateLte, filterCreatedAtGt, filterCreatedAtGte, filterCreatedAtLt, filterCreatedAtLte, filterStatusEq, filterStatusNotEq, filterStatusIn, filterStatusNotIn, filterPriorityEq, filterPriorityNotEq, filterPriorityIn, filterPriorityNotIn, filterAssignedToUserIdEq, filterAssignedToUserIdNotEq, filterAssignedToUserIdIn, filterAssignedToUserIdNotIn);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ProblemActionItemsApi#listProblemActionItems");
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
| **problemId** | **String**|  | |
| **pageNumber** | **Integer**|  | [optional] |
| **pageSize** | **Integer**|  | [optional] |
| **sort** | **String**|  | [optional] |
| **filterSearch** | **String**|  | [optional] |
| **filterDueDateGt** | **String**|  | [optional] |
| **filterDueDateGte** | **String**|  | [optional] |
| **filterDueDateLt** | **String**|  | [optional] |
| **filterDueDateLte** | **String**|  | [optional] |
| **filterCreatedAtGt** | **String**|  | [optional] |
| **filterCreatedAtGte** | **String**|  | [optional] |
| **filterCreatedAtLt** | **String**|  | [optional] |
| **filterCreatedAtLte** | **String**|  | [optional] |
| **filterStatusEq** | **String**|  | [optional] |
| **filterStatusNotEq** | **String**|  | [optional] |
| **filterStatusIn** | **String**|  | [optional] |
| **filterStatusNotIn** | **String**|  | [optional] |
| **filterPriorityEq** | **String**|  | [optional] |
| **filterPriorityNotEq** | **String**|  | [optional] |
| **filterPriorityIn** | **String**|  | [optional] |
| **filterPriorityNotIn** | **String**|  | [optional] |
| **filterAssignedToUserIdEq** | **String**|  | [optional] |
| **filterAssignedToUserIdNotEq** | **String**|  | [optional] |
| **filterAssignedToUserIdIn** | **String**|  | [optional] |
| **filterAssignedToUserIdNotIn** | **String**|  | [optional] |

### Return type

[**ProblemActionItemList**](ProblemActionItemList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | success |  -  |

<a id="updateProblemActionItem"></a>
# **updateProblemActionItem**
> ProblemActionItemResponse updateProblemActionItem(id, updateProblemActionItem)

Update a problem action item

Updates a problem action item

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.ProblemActionItemsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    ProblemActionItemsApi apiInstance = new ProblemActionItemsApi(defaultClient);
    String id = "id_example"; // String | 
    UpdateProblemActionItem updateProblemActionItem = new UpdateProblemActionItem(); // UpdateProblemActionItem | 
    try {
      ProblemActionItemResponse result = apiInstance.updateProblemActionItem(id, updateProblemActionItem);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ProblemActionItemsApi#updateProblemActionItem");
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
| **updateProblemActionItem** | [**UpdateProblemActionItem**](UpdateProblemActionItem.md)|  | |

### Return type

[**ProblemActionItemResponse**](ProblemActionItemResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | problem action item updated |  -  |


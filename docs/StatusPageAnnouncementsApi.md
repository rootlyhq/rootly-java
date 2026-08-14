# StatusPageAnnouncementsApi

All URIs are relative to *https://api.rootly.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createStatusPageAnnouncement**](StatusPageAnnouncementsApi.md#createStatusPageAnnouncement) | **POST** /v1/status-pages/{status_page_id}/announcements | Creates a status page announcement |
| [**deleteStatusPageAnnouncement**](StatusPageAnnouncementsApi.md#deleteStatusPageAnnouncement) | **DELETE** /v1/announcements/{id} | Delete a status page announcement |
| [**getStatusPageAnnouncement**](StatusPageAnnouncementsApi.md#getStatusPageAnnouncement) | **GET** /v1/announcements/{id} | Retrieves a status page announcement |
| [**listStatusPageAnnouncements**](StatusPageAnnouncementsApi.md#listStatusPageAnnouncements) | **GET** /v1/status-pages/{status_page_id}/announcements | List status page announcements |
| [**updateStatusPageAnnouncement**](StatusPageAnnouncementsApi.md#updateStatusPageAnnouncement) | **PUT** /v1/announcements/{id} | Update a status page announcement |


<a id="createStatusPageAnnouncement"></a>
# **createStatusPageAnnouncement**
> StatusPageAnnouncementResponse createStatusPageAnnouncement(statusPageId, newStatusPageAnnouncement)

Creates a status page announcement

Posts an announcement to a status page and notifies its subscribers unless notify_subscribers is false

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.StatusPageAnnouncementsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    StatusPageAnnouncementsApi apiInstance = new StatusPageAnnouncementsApi(defaultClient);
    String statusPageId = "statusPageId_example"; // String | 
    NewStatusPageAnnouncement newStatusPageAnnouncement = new NewStatusPageAnnouncement(); // NewStatusPageAnnouncement | 
    try {
      StatusPageAnnouncementResponse result = apiInstance.createStatusPageAnnouncement(statusPageId, newStatusPageAnnouncement);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling StatusPageAnnouncementsApi#createStatusPageAnnouncement");
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
| **statusPageId** | **String**|  | |
| **newStatusPageAnnouncement** | [**NewStatusPageAnnouncement**](NewStatusPageAnnouncement.md)|  | |

### Return type

[**StatusPageAnnouncementResponse**](StatusPageAnnouncementResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | status_page_announcement created without notifying subscribers |  -  |
| **422** | invalid request |  -  |
| **401** | responds with unauthorized for invalid token |  -  |

<a id="deleteStatusPageAnnouncement"></a>
# **deleteStatusPageAnnouncement**
> StatusPageAnnouncementResponse deleteStatusPageAnnouncement(id)

Delete a status page announcement

Delete a specific status page announcement by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.StatusPageAnnouncementsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    StatusPageAnnouncementsApi apiInstance = new StatusPageAnnouncementsApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      StatusPageAnnouncementResponse result = apiInstance.deleteStatusPageAnnouncement(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling StatusPageAnnouncementsApi#deleteStatusPageAnnouncement");
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

[**StatusPageAnnouncementResponse**](StatusPageAnnouncementResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | status_page_announcement deleted |  -  |
| **404** | resource not found |  -  |

<a id="getStatusPageAnnouncement"></a>
# **getStatusPageAnnouncement**
> StatusPageAnnouncementResponse getStatusPageAnnouncement(id)

Retrieves a status page announcement

Retrieves a specific status page announcement by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.StatusPageAnnouncementsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    StatusPageAnnouncementsApi apiInstance = new StatusPageAnnouncementsApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      StatusPageAnnouncementResponse result = apiInstance.getStatusPageAnnouncement(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling StatusPageAnnouncementsApi#getStatusPageAnnouncement");
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

[**StatusPageAnnouncementResponse**](StatusPageAnnouncementResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | status page announcement found |  -  |
| **404** | resource not found |  -  |

<a id="listStatusPageAnnouncements"></a>
# **listStatusPageAnnouncements**
> StatusPageAnnouncementList listStatusPageAnnouncements(statusPageId, include, pageNumber, pageSize)

List status page announcements

List status page announcements

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.StatusPageAnnouncementsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    StatusPageAnnouncementsApi apiInstance = new StatusPageAnnouncementsApi(defaultClient);
    String statusPageId = "statusPageId_example"; // String | 
    String include = "include_example"; // String | 
    Integer pageNumber = 56; // Integer | 
    Integer pageSize = 56; // Integer | 
    try {
      StatusPageAnnouncementList result = apiInstance.listStatusPageAnnouncements(statusPageId, include, pageNumber, pageSize);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling StatusPageAnnouncementsApi#listStatusPageAnnouncements");
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
| **statusPageId** | **String**|  | |
| **include** | **String**|  | [optional] |
| **pageNumber** | **Integer**|  | [optional] |
| **pageSize** | **Integer**|  | [optional] |

### Return type

[**StatusPageAnnouncementList**](StatusPageAnnouncementList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | success |  -  |

<a id="updateStatusPageAnnouncement"></a>
# **updateStatusPageAnnouncement**
> StatusPageAnnouncementResponse updateStatusPageAnnouncement(id, updateStatusPageAnnouncement)

Update a status page announcement

Update a specific status page announcement by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.StatusPageAnnouncementsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    StatusPageAnnouncementsApi apiInstance = new StatusPageAnnouncementsApi(defaultClient);
    String id = "id_example"; // String | 
    UpdateStatusPageAnnouncement updateStatusPageAnnouncement = new UpdateStatusPageAnnouncement(); // UpdateStatusPageAnnouncement | 
    try {
      StatusPageAnnouncementResponse result = apiInstance.updateStatusPageAnnouncement(id, updateStatusPageAnnouncement);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling StatusPageAnnouncementsApi#updateStatusPageAnnouncement");
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
| **updateStatusPageAnnouncement** | [**UpdateStatusPageAnnouncement**](UpdateStatusPageAnnouncement.md)|  | |

### Return type

[**StatusPageAnnouncementResponse**](StatusPageAnnouncementResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | status_page_announcement updated |  -  |
| **404** | resource not found |  -  |


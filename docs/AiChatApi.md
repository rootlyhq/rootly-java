# AiChatApi

All URIs are relative to *https://api.rootly.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createAiChat**](AiChatApi.md#createAiChat) | **POST** /v1/ai/chat | Send AI chat message |
| [**deleteAiChatSession**](AiChatApi.md#deleteAiChatSession) | **DELETE** /v1/ai/chat/sessions/{id} | Delete AI chat session |
| [**listAiChatSessionMessages**](AiChatApi.md#listAiChatSessionMessages) | **GET** /v1/ai/chat/sessions/{session_id}/messages | List AI chat session messages |
| [**streamAiChat**](AiChatApi.md#streamAiChat) | **POST** /v1/ai/chat/stream | Stream AI chat response (SSE) |


<a id="createAiChat"></a>
# **createAiChat**
> AiChatResponse createAiChat(message, sessionId, incidentId, alertId)

Send AI chat message

Send a message to the AI assistant and receive a synchronous reply. Optionally bind the conversation to an incident or alert for context-aware responses. Requires &#x60;ai.chat:write&#x60; OAuth scope or an API key.

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.AiChatApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    AiChatApi apiInstance = new AiChatApi(defaultClient);
    String message = "message_example"; // String | Message to send to the AI assistant
    UUID sessionId = UUID.randomUUID(); // UUID | Resume an existing session
    UUID incidentId = UUID.randomUUID(); // UUID | Bind session to an incident for context (mutually exclusive with alert_id)
    UUID alertId = UUID.randomUUID(); // UUID | Bind session to an alert for context (mutually exclusive with incident_id)
    try {
      AiChatResponse result = apiInstance.createAiChat(message, sessionId, incidentId, alertId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AiChatApi#createAiChat");
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
| **message** | **String**| Message to send to the AI assistant | |
| **sessionId** | **UUID**| Resume an existing session | [optional] |
| **incidentId** | **UUID**| Bind session to an incident for context (mutually exclusive with alert_id) | [optional] |
| **alertId** | **UUID**| Bind session to an alert for context (mutually exclusive with incident_id) | [optional] |

### Return type

[**AiChatResponse**](AiChatResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | AI chat response |  -  |
| **403** | AI chat not enabled or insufficient scope |  -  |
| **422** | invalid request |  -  |

<a id="deleteAiChatSession"></a>
# **deleteAiChatSession**
> deleteAiChatSession(id)

Delete AI chat session

Permanently deletes an AI chat session and all its messages. Requires &#x60;ai.chat:write&#x60; OAuth scope or an API key.

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.AiChatApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    AiChatApi apiInstance = new AiChatApi(defaultClient);
    UUID id = UUID.randomUUID(); // UUID | Session UUID
    try {
      apiInstance.deleteAiChatSession(id);
    } catch (ApiException e) {
      System.err.println("Exception when calling AiChatApi#deleteAiChatSession");
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
| **id** | **UUID**| Session UUID | |

### Return type

null (empty response body)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **204** | session deleted |  -  |
| **404** | session not found |  -  |

<a id="listAiChatSessionMessages"></a>
# **listAiChatSessionMessages**
> AiChatSessionMessageList listAiChatSessionMessages(sessionId, pageNumber, pageSize)

List AI chat session messages

Returns the user and assistant message history for a session, paginated and chronologically ordered. Internal tool messages are filtered out. Requires &#x60;ai.chat:read&#x60; OAuth scope or an API key.

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.AiChatApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    AiChatApi apiInstance = new AiChatApi(defaultClient);
    UUID sessionId = UUID.randomUUID(); // UUID | Session UUID
    Integer pageNumber = 56; // Integer | Page number (default 1)
    Integer pageSize = 56; // Integer | Messages per page (max 100, default 50)
    try {
      AiChatSessionMessageList result = apiInstance.listAiChatSessionMessages(sessionId, pageNumber, pageSize);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AiChatApi#listAiChatSessionMessages");
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
| **sessionId** | **UUID**| Session UUID | |
| **pageNumber** | **Integer**| Page number (default 1) | [optional] |
| **pageSize** | **Integer**| Messages per page (max 100, default 50) | [optional] |

### Return type

[**AiChatSessionMessageList**](AiChatSessionMessageList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | session messages |  -  |
| **404** | session not found |  -  |

<a id="streamAiChat"></a>
# **streamAiChat**
> streamAiChat(message, sessionId, incidentId, alertId)

Stream AI chat response (SSE)

Send a message and receive the AI response as a Server-Sent Events stream. Optionally bind to an incident or alert for context. Events: &#x60;session_id&#x60; (initial), &#x60;text&#x60; (content chunks), &#x60;task_update&#x60; (tool progress), &#x60;error&#x60;, &#x60;done&#x60; (terminal with status). Requires &#x60;ai.chat:write&#x60; OAuth scope or an API key.

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.AiChatApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    AiChatApi apiInstance = new AiChatApi(defaultClient);
    String message = "message_example"; // String | Message to send
    UUID sessionId = UUID.randomUUID(); // UUID | Resume an existing session
    UUID incidentId = UUID.randomUUID(); // UUID | Bind session to an incident (mutually exclusive with alert_id)
    UUID alertId = UUID.randomUUID(); // UUID | Bind session to an alert (mutually exclusive with incident_id)
    try {
      apiInstance.streamAiChat(message, sessionId, incidentId, alertId);
    } catch (ApiException e) {
      System.err.println("Exception when calling AiChatApi#streamAiChat");
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
| **message** | **String**| Message to send | |
| **sessionId** | **UUID**| Resume an existing session | [optional] |
| **incidentId** | **UUID**| Bind session to an incident (mutually exclusive with alert_id) | [optional] |
| **alertId** | **UUID**| Bind session to an alert (mutually exclusive with incident_id) | [optional] |

### Return type

null (empty response body)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | SSE event stream |  -  |
| **403** | AI chat not enabled |  -  |


# MeetingRecordingsApi

All URIs are relative to *https://api.rootly.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createMeetingRecording**](MeetingRecordingsApi.md#createMeetingRecording) | **POST** /v1/incidents/{incident_id}/meeting_recordings | Create meeting recording |
| [**deleteMeetingRecording**](MeetingRecordingsApi.md#deleteMeetingRecording) | **DELETE** /v1/meeting_recordings/{id} | Delete a meeting recording |
| [**deleteMeetingRecordingVideo**](MeetingRecordingsApi.md#deleteMeetingRecordingVideo) | **DELETE** /v1/meeting_recordings/{id}/delete_video | Delete video from a meeting recording |
| [**deleteStandaloneMeetingRecording**](MeetingRecordingsApi.md#deleteStandaloneMeetingRecording) | **DELETE** /v1/meeting_recordings/{id}/delete_session | Delete a standalone meeting recording |
| [**getMeetingRecording**](MeetingRecordingsApi.md#getMeetingRecording) | **GET** /v1/meeting_recordings/{id} | Get a meeting recording |
| [**importMeetingRecording**](MeetingRecordingsApi.md#importMeetingRecording) | **POST** /v1/incidents/{incident_id}/meeting_recordings/import | Import a meeting recording |
| [**leaveMeetingRecording**](MeetingRecordingsApi.md#leaveMeetingRecording) | **POST** /v1/meeting_recordings/{id}/leave | Leave a meeting call |
| [**listAllMeetingRecordings**](MeetingRecordingsApi.md#listAllMeetingRecordings) | **GET** /v1/meeting_recordings | List all meeting recordings |
| [**listMeetingRecordings**](MeetingRecordingsApi.md#listMeetingRecordings) | **GET** /v1/incidents/{incident_id}/meeting_recordings | List meeting recordings |
| [**pauseMeetingRecording**](MeetingRecordingsApi.md#pauseMeetingRecording) | **POST** /v1/meeting_recordings/{id}/pause | Pause a meeting recording |
| [**resumeMeetingRecording**](MeetingRecordingsApi.md#resumeMeetingRecording) | **POST** /v1/meeting_recordings/{id}/resume | Resume a meeting recording |
| [**startRecordingSession**](MeetingRecordingsApi.md#startRecordingSession) | **POST** /v1/meeting_recordings/start_session | Start a recording session |
| [**stopMeetingRecording**](MeetingRecordingsApi.md#stopMeetingRecording) | **POST** /v1/meeting_recordings/{id}/stop | Stop a meeting recording |


<a id="createMeetingRecording"></a>
# **createMeetingRecording**
> MeetingRecordingResponse createMeetingRecording(incidentId, platform)

Create meeting recording

Invite a recording bot to the incident&#39;s meeting. If no previous recordings exist for the platform, a new bot is invited (session 1). If previous sessions exist, a new session is created (re-invite). The bot joins the meeting, records audio/video, and generates a transcript when the session ends.

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.MeetingRecordingsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    MeetingRecordingsApi apiInstance = new MeetingRecordingsApi(defaultClient);
    String incidentId = "incidentId_example"; // String | Incident UUID
    String platform = "zoom"; // String | Meeting platform
    try {
      MeetingRecordingResponse result = apiInstance.createMeetingRecording(incidentId, platform);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling MeetingRecordingsApi#createMeetingRecording");
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
| **incidentId** | **String**| Incident UUID | |
| **platform** | **String**| Meeting platform | [optional] [enum: zoom, google_meet, microsoft_teams, webex] |

### Return type

[**MeetingRecordingResponse**](MeetingRecordingResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | recording session created |  -  |
| **422** | validation error (e.g. bot already active) |  -  |

<a id="deleteMeetingRecording"></a>
# **deleteMeetingRecording**
> MeetingRecordingResponse deleteMeetingRecording(id)

Delete a meeting recording

Delete a meeting recording. Only completed or failed recordings can be deleted. Active recordings (pending, recording, paused) must be stopped first.

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.MeetingRecordingsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    MeetingRecordingsApi apiInstance = new MeetingRecordingsApi(defaultClient);
    String id = "id_example"; // String | Meeting Recording UUID
    try {
      MeetingRecordingResponse result = apiInstance.deleteMeetingRecording(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling MeetingRecordingsApi#deleteMeetingRecording");
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
| **id** | **String**| Meeting Recording UUID | |

### Return type

[**MeetingRecordingResponse**](MeetingRecordingResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | meeting recording deleted |  -  |
| **422** | cannot delete active recording |  -  |

<a id="deleteMeetingRecordingVideo"></a>
# **deleteMeetingRecordingVideo**
> MeetingRecordingResponse deleteMeetingRecordingVideo(id)

Delete video from a meeting recording

Delete only the video file from a meeting recording. The transcript, summary, and all metadata are preserved. Only non-active recordings with an attached video can have their video deleted.

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.MeetingRecordingsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    MeetingRecordingsApi apiInstance = new MeetingRecordingsApi(defaultClient);
    String id = "id_example"; // String | Meeting Recording UUID
    try {
      MeetingRecordingResponse result = apiInstance.deleteMeetingRecordingVideo(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling MeetingRecordingsApi#deleteMeetingRecordingVideo");
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
| **id** | **String**| Meeting Recording UUID | |

### Return type

[**MeetingRecordingResponse**](MeetingRecordingResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | video deleted |  -  |
| **422** | cannot delete video (active recording or no video) |  -  |

<a id="deleteStandaloneMeetingRecording"></a>
# **deleteStandaloneMeetingRecording**
> deleteStandaloneMeetingRecording(id)

Delete a standalone meeting recording

Delete a standalone meeting recording (not linked to an incident). Only the recording owner can delete it. Active recordings (pending, recording, paused) must be stopped first. Returns 404 for incident-linked recordings or recordings owned by another user.

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.MeetingRecordingsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    MeetingRecordingsApi apiInstance = new MeetingRecordingsApi(defaultClient);
    String id = "id_example"; // String | Meeting Recording UUID
    try {
      apiInstance.deleteStandaloneMeetingRecording(id);
    } catch (ApiException e) {
      System.err.println("Exception when calling MeetingRecordingsApi#deleteStandaloneMeetingRecording");
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
| **id** | **String**| Meeting Recording UUID | |

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
| **204** | recording deleted |  -  |
| **422** | cannot delete active recording |  -  |
| **404** | recording not found or not owned by user |  -  |

<a id="getMeetingRecording"></a>
# **getMeetingRecording**
> MeetingRecordingResponse getMeetingRecording(id, include)

Get a meeting recording

Retrieve a single meeting recording session including its status, duration, speaker count, word count, and transcript summary.

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.MeetingRecordingsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    MeetingRecordingsApi apiInstance = new MeetingRecordingsApi(defaultClient);
    String id = "id_example"; // String | Meeting Recording UUID
    String include = "transcript"; // String | comma separated if needed. eg: transcript
    try {
      MeetingRecordingResponse result = apiInstance.getMeetingRecording(id, include);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling MeetingRecordingsApi#getMeetingRecording");
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
| **id** | **String**| Meeting Recording UUID | |
| **include** | **String**| comma separated if needed. eg: transcript | [optional] [enum: transcript] |

### Return type

[**MeetingRecordingResponse**](MeetingRecordingResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | meeting recording found |  -  |
| **404** | meeting recording not found |  -  |

<a id="importMeetingRecording"></a>
# **importMeetingRecording**
> MeetingRecordingResponse importMeetingRecording(incidentId, importMeetingRecording)

Import a meeting recording

Import an externally captured meeting recording and attach it to an incident. Video and transcript are fetched asynchronously. The existing POST /v1/incidents/{incident_id}/meeting_recordings endpoint invites a bot — this endpoint handles recordings that were captured outside of the bot flow.

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.MeetingRecordingsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    MeetingRecordingsApi apiInstance = new MeetingRecordingsApi(defaultClient);
    String incidentId = "incidentId_example"; // String | Incident UUID
    ImportMeetingRecording importMeetingRecording = new ImportMeetingRecording(); // ImportMeetingRecording | 
    try {
      MeetingRecordingResponse result = apiInstance.importMeetingRecording(incidentId, importMeetingRecording);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling MeetingRecordingsApi#importMeetingRecording");
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
| **incidentId** | **String**| Incident UUID | |
| **importMeetingRecording** | [**ImportMeetingRecording**](ImportMeetingRecording.md)|  | [optional] |

### Return type

[**MeetingRecordingResponse**](MeetingRecordingResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | recording imported |  -  |
| **422** | validation error (e.g. unsupported source, duplicate recording) |  -  |

<a id="leaveMeetingRecording"></a>
# **leaveMeetingRecording**
> MeetingRecordingResponse leaveMeetingRecording(id)

Leave a meeting call

Remove the recording bot from the meeting entirely. Unlike stop, this immediately disconnects the bot. The session will transition to analyzing and then completed once transcript processing finishes.

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.MeetingRecordingsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    MeetingRecordingsApi apiInstance = new MeetingRecordingsApi(defaultClient);
    String id = "id_example"; // String | Meeting Recording UUID
    try {
      MeetingRecordingResponse result = apiInstance.leaveMeetingRecording(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling MeetingRecordingsApi#leaveMeetingRecording");
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
| **id** | **String**| Meeting Recording UUID | |

### Return type

[**MeetingRecordingResponse**](MeetingRecordingResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | bot left the call |  -  |
| **422** | bot is not in a call |  -  |

<a id="listAllMeetingRecordings"></a>
# **listAllMeetingRecordings**
> MeetingRecordingList listAllMeetingRecordings(status, platform, createdBy)

List all meeting recordings

List meeting recordings across the organization. Returns the current user&#39;s standalone recordings plus incident-backed recordings the user can access. Supports filtering by status, platform, and created_by.

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.MeetingRecordingsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    MeetingRecordingsApi apiInstance = new MeetingRecordingsApi(defaultClient);
    String status = "status_example"; // String | Filter by status
    String platform = "platform_example"; // String | Filter by platform
    String createdBy = "createdBy_example"; // String | Filter by creator type
    try {
      MeetingRecordingList result = apiInstance.listAllMeetingRecordings(status, platform, createdBy);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling MeetingRecordingsApi#listAllMeetingRecordings");
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
| **status** | **String**| Filter by status | [optional] |
| **platform** | **String**| Filter by platform | [optional] |
| **createdBy** | **String**| Filter by creator type | [optional] |

### Return type

[**MeetingRecordingList**](MeetingRecordingList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | meeting recordings found |  -  |

<a id="listMeetingRecordings"></a>
# **listMeetingRecordings**
> MeetingRecordingList listMeetingRecordings(incidentId, pageNumber, pageSize)

List meeting recordings

List all meeting recording sessions for an incident. Returns recordings sorted by session number. Each recording represents one bot session with its own transcript, status, and metadata.

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.MeetingRecordingsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    MeetingRecordingsApi apiInstance = new MeetingRecordingsApi(defaultClient);
    String incidentId = "incidentId_example"; // String | Incident UUID
    Integer pageNumber = 56; // Integer | Page number
    Integer pageSize = 56; // Integer | Number of recordings per page
    try {
      MeetingRecordingList result = apiInstance.listMeetingRecordings(incidentId, pageNumber, pageSize);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling MeetingRecordingsApi#listMeetingRecordings");
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
| **incidentId** | **String**| Incident UUID | |
| **pageNumber** | **Integer**| Page number | [optional] |
| **pageSize** | **Integer**| Number of recordings per page | [optional] |

### Return type

[**MeetingRecordingList**](MeetingRecordingList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | meeting recordings listed |  -  |
| **404** | incident not found |  -  |

<a id="pauseMeetingRecording"></a>
# **pauseMeetingRecording**
> MeetingRecordingResponse pauseMeetingRecording(id)

Pause a meeting recording

Pause an active recording session. The bot remains in the meeting but stops capturing audio/video. Use the resume endpoint to continue recording.

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.MeetingRecordingsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    MeetingRecordingsApi apiInstance = new MeetingRecordingsApi(defaultClient);
    String id = "id_example"; // String | Meeting Recording UUID
    try {
      MeetingRecordingResponse result = apiInstance.pauseMeetingRecording(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling MeetingRecordingsApi#pauseMeetingRecording");
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
| **id** | **String**| Meeting Recording UUID | |

### Return type

[**MeetingRecordingResponse**](MeetingRecordingResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | recording paused |  -  |
| **422** | recording is not active |  -  |

<a id="resumeMeetingRecording"></a>
# **resumeMeetingRecording**
> MeetingRecordingResponse resumeMeetingRecording(id)

Resume a meeting recording

Resume a paused recording session. The bot continues capturing audio/video from the meeting.

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.MeetingRecordingsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    MeetingRecordingsApi apiInstance = new MeetingRecordingsApi(defaultClient);
    String id = "id_example"; // String | Meeting Recording UUID
    try {
      MeetingRecordingResponse result = apiInstance.resumeMeetingRecording(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling MeetingRecordingsApi#resumeMeetingRecording");
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
| **id** | **String**| Meeting Recording UUID | |

### Return type

[**MeetingRecordingResponse**](MeetingRecordingResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | recording resumed |  -  |
| **422** | recording is not paused |  -  |

<a id="startRecordingSession"></a>
# **startRecordingSession**
> StartSessionResponse startRecordingSession(startSessionRequest)

Start a recording session

Start a new desktop recording session. The server creates a recording record and returns a stream token the desktop client uses to send audio. No provider-specific configuration is needed from the client.

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.MeetingRecordingsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    MeetingRecordingsApi apiInstance = new MeetingRecordingsApi(defaultClient);
    StartSessionRequest startSessionRequest = new StartSessionRequest(); // StartSessionRequest | 
    try {
      StartSessionResponse result = apiInstance.startRecordingSession(startSessionRequest);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling MeetingRecordingsApi#startRecordingSession");
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
| **startSessionRequest** | [**StartSessionRequest**](StartSessionRequest.md)|  | [optional] |

### Return type

[**StartSessionResponse**](StartSessionResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | session created |  -  |
| **422** | invalid platform |  -  |

<a id="stopMeetingRecording"></a>
# **stopMeetingRecording**
> MeetingRecordingResponse stopMeetingRecording(id)

Stop a meeting recording

Stop an active or paused recording. The bot finishes processing, generates a transcript, and the session status transitions to completed. This is irreversible — to record again, create a new session.

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.MeetingRecordingsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    MeetingRecordingsApi apiInstance = new MeetingRecordingsApi(defaultClient);
    String id = "id_example"; // String | Meeting Recording UUID
    try {
      MeetingRecordingResponse result = apiInstance.stopMeetingRecording(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling MeetingRecordingsApi#stopMeetingRecording");
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
| **id** | **String**| Meeting Recording UUID | |

### Return type

[**MeetingRecordingResponse**](MeetingRecordingResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | recording stopped |  -  |
| **422** | recording cannot be stopped |  -  |


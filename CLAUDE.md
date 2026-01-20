# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is the **Rootly Java SDK** - an auto-generated Java client library for the Rootly API v1. The codebase is generated using OpenAPI Generator 7.13.0 from the Rootly OpenAPI specification.

**Key characteristics:**
- Auto-generated code using the `okhttp-gson` library template
- Java 1.8+ compatibility
- Uses OkHttp for HTTP client operations
- Uses Gson for JSON serialization/deserialization
- Follows JSON:API specification (application/vnd.api+json media type)

## Build System

The project supports both **Maven** and **Gradle**:

### Gradle Commands (Primary)

```bash
# Run tests
./gradlew test

# Build the project
./gradlew build

# Clean build
./gradlew clean build

# Format code (auto-format with Google Java Format)
./gradlew spotlessApply

# Check code formatting
./gradlew spotlessCheck

# Publish to local Maven repository
./gradlew publishToMavenLocal
```

### Maven Commands

```bash
# Install to local repository
mvn clean install

# Run tests
mvn test

# Build without tests
mvn clean package -DskipTests

# Format code
mvn spotless:apply

# Check code formatting
mvn spotless:check
```

## Code Generation

The SDK is **auto-generated** from the Rootly OpenAPI specification. To regenerate the code:

```bash
# Using Docker (recommended - default)
make build

# Using local openapi-generator (requires Java + openapi-generator installed)
make build-local
```

**Docker-based generation (default):**
- Uses `openapitools/openapi-generator-cli:v7.13.0` Docker image
- No local Java installation required
- Ensures consistent builds across all environments
- Automatically downloads the OpenAPI spec and generates code

The generation process:
1. Fetches the OpenAPI spec from `https://rootly-heroku.s3.amazonaws.com/swagger/v1/swagger.json`
2. Generates Java code using OpenAPI Generator v7.13.0
3. Removes problematic `Object.validateJsonElement` calls via sed

**Protected files:** These files are protected from regeneration via `.openapi-generator-ignore`:
- `build.gradle` - Custom Gradle configuration
- `LICENSE` - MIT license
- `README.md` - User-friendly documentation
- `CLAUDE.md` - This file
- `.github/dependabot.yml` - Dependency management

## Architecture

### Package Structure

- `com.rootly.client` - Core client infrastructure
  - `ApiClient` - Main HTTP client wrapper (OkHttp-based)
  - `Configuration` - Global configuration singleton
  - `JSON` - Gson-based JSON serialization/deserialization
  - `auth/` - Authentication implementations (Bearer, Basic, API Key)

- `com.rootly.client.api` - Generated API endpoint classes
  - Each API class corresponds to a resource (e.g., `IncidentsApi`, `AlertsApi`)
  - All API classes follow the same pattern with synchronous and async methods

- `com.rootly.client.model` - Generated data models
  - POJOs with Gson annotations
  - Represents JSON:API request/response structures

### Authentication

The SDK uses Bearer token authentication. Set up authentication:

```java
ApiClient client = Configuration.getDefaultApiClient();
client.setBasePath("https://api.rootly.com");
HttpBearerAuth bearerAuth = (HttpBearerAuth) client.getAuthentication("bearerAuth");
bearerAuth.setBearerToken("YOUR-API-KEY");
```

### API Usage Pattern

All API endpoints follow a consistent pattern:

```java
// Initialize API client
IncidentsApi apiInstance = new IncidentsApi(client);

// Make API calls
IncidentList result = apiInstance.listIncidents(pageSize, pageNumber, ...filters);
```

### JSON:API Specification

The Rootly API follows JSON:API specification:
- Content-Type: `application/vnd.api+json`
- Structured responses with `data`, `attributes`, `relationships`
- Pagination via `page[number]` and `page[size]` query parameters
- Rate limiting: ~3000 requests per 60-second sliding window per API key

## Code Formatting

The project uses **Spotless** with **Google Java Format (AOSP style)**:
- Automatic import ordering
- Unused import removal
- Reflows long strings
- Apply formatting before committing changes

## Testing

- Tests use **JUnit 5** (Jupiter)
- Test framework: Mockito for mocking
- Tests are auto-generated but can be extended
- Run individual test class: `./gradlew test --tests "com.rootly.client.model.IncidentTest"`

## CI/CD

GitHub Actions workflows:
- **test.yml** - Runs tests on all branches using JDK 17
- **maven.yml** - Maven-based build pipeline
- **publish.yml** - Publishes artifacts to Maven Central and GitHub Packages (triggered on releases)

## Publishing

See [PUBLISHING.md](PUBLISHING.md) for detailed instructions on publishing releases to Maven Central and GitHub Packages.

Quick overview:
1. Update version: `make bump-patch` (or bump-minor/bump-major)
2. Push tag: `make push-tag`
3. Create GitHub release: `gh release create v0.0.2`
4. Workflow automatically publishes to both registries

## Important Notes

1. **Do not manually edit generated files** in `src/main/java/com/rootly/client/{api,model}/` unless absolutely necessary. Changes should be made to the OpenAPI spec and regenerated.

2. **Custom code** should go in:
   - Extensions or wrappers around the generated API classes
   - Custom exception handling
   - Utility classes outside the generated packages

3. **Rate Limiting**: The API has rate limits (3000 requests/60s). Implement retry logic with exponential backoff for production use.

4. **Base URL**: Default is `https://api.rootly.com` but can be configured via `ApiClient.setBasePath()`.

5. **Dependencies**: All HTTP operations use OkHttp 4.12.0. Do not mix with other HTTP clients.

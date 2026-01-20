.PHONY: build build-docker build-local upgrade-deps

# Default target uses Docker (recommended - no Java installation required)
build: build-docker

# Generate client using Docker (recommended)
build-docker:
	@echo "Generating client using Docker..."
	docker run --rm -v "$${PWD}:/local" openapitools/openapi-generator-cli:v7.13.0 generate \
		-i https://rootly-heroku.s3.amazonaws.com/swagger/v1/swagger.json \
		-g java \
		-o /local \
		--additional-properties=artifactId=rootly,projectName=rootly,invokerPackage=com.rootly.client,apiPackage=com.rootly.client.api,modelPackage=com.rootly.client.model,testPackage=com.rootly.client.model,withXml=false \
		--skip-validate-spec \
		--library okhttp-gson
	@echo "Removing problematic validateJsonElement calls..."
	find ./src/main/java ./src/test/java -type f -name '*.java' -exec sed -i '' '/Object\.validateJsonElement/d' {} +
	@echo "✓ Client generation complete!"

# Generate client using local openapi-generator (requires Java and openapi-generator installed)
build-local:
	@echo "Generating client using local openapi-generator..."
	openapi-generator generate \
		-i https://rootly-heroku.s3.amazonaws.com/swagger/v1/swagger.json \
		-g java \
		-o . \
		--additional-properties=artifactId=rootly,projectName=rootly,invokerPackage=com.rootly.client,apiPackage=com.rootly.client.api,modelPackage=com.rootly.client.model,testPackage=com.rootly.client.model,withXml=false \
		--skip-validate-spec \
		--library okhttp-gson
	@echo "Removing problematic validateJsonElement calls..."
	find ./src/main/java ./src/test/java -type f -name '*.java' -exec sed -i '' '/Object\.validateJsonElement/d' {} +
	@echo "✓ Client generation complete!"

# Upgrade all dependencies to latest versions
upgrade-deps:
	@echo "Upgrading dependencies using Maven versions plugin..."
	docker run --rm -v "$${PWD}:/workspace" -w /workspace maven:3.9-eclipse-temurin-17 \
		mvn versions:use-latest-versions -DallowMajorUpdates=false -DprocessDependencyManagement=false
	@echo "✓ Dependencies upgraded in pom.xml"
	@echo "⚠️  Remember to manually sync versions to build.gradle"

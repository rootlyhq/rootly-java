.PHONY: build build-docker build-local test upgrade-deps version bump-patch bump-minor bump-major push-tag release-patch release-minor release-major

# Default target uses Docker (recommended - no Java installation required)
build: build-docker

# Run tests using Docker
test:
	@echo "Running tests using Docker..."
	docker run --rm -v "$${PWD}:/workspace" -w /workspace gradle:8.7-jdk17 gradle test --no-daemon
	@echo "✓ Tests complete!"

# Generate client using Docker (recommended)
build-docker:
	@echo "Generating client using Docker..."
	@echo "Cleaning old openapitools package files..."
	@rm -rf src/main/java/org/openapitools src/test/java/org/openapitools
	docker run --rm -v "$${PWD}:/local" openapitools/openapi-generator-cli:v7.13.0 generate \
		-i https://rootly-heroku.s3.amazonaws.com/swagger/v1/swagger.json \
		-g java \
		-o /local \
		--additional-properties=artifactId=rootly,projectName=rootly,invokerPackage=com.rootly.client,apiPackage=com.rootly.client.api,modelPackage=com.rootly.client.model,withXml=false,useJakartaEe=true \
		--skip-validate-spec \
		--library okhttp-gson
	@echo "Removing problematic validateJsonElement calls..."
	find ./src/main/java ./src/test/java -type f -name '*.java' -exec sed -i '' '/Object\.validateJsonElement/d' {} + 2>/dev/null || true
	find ./src/main/java ./src/test/java -type f -name '*.java' -exec sed -i '' '/UUID\.validateJsonElement/d' {} + 2>/dev/null || true
	@echo "✓ Client generation complete!"

# Generate client using local openapi-generator (requires Java and openapi-generator installed)
build-local:
	@echo "Generating client using local openapi-generator..."
	@echo "Cleaning old openapitools package files..."
	@rm -rf src/main/java/org/openapitools src/test/java/org/openapitools
	openapi-generator generate \
		-i https://rootly-heroku.s3.amazonaws.com/swagger/v1/swagger.json \
		-g java \
		-o . \
		--additional-properties=artifactId=rootly,projectName=rootly,invokerPackage=com.rootly.client,apiPackage=com.rootly.client.api,modelPackage=com.rootly.client.model,withXml=false,useJakartaEe=true \
		--skip-validate-spec \
		--library okhttp-gson
	@echo "Removing problematic validateJsonElement calls..."
	find ./src/main/java ./src/test/java -type f -name '*.java' -exec sed -i '' '/Object\.validateJsonElement/d' {} + 2>/dev/null || true
	find ./src/main/java ./src/test/java -type f -name '*.java' -exec sed -i '' '/UUID\.validateJsonElement/d' {} + 2>/dev/null || true
	@echo "✓ Client generation complete!"

# Upgrade all dependencies to latest versions
upgrade-deps:
	@echo "Upgrading dependencies using Maven versions plugin..."
	docker run --rm -v "$${PWD}:/workspace" -w /workspace maven:3.9-eclipse-temurin-17 \
		mvn versions:use-latest-versions -DallowMajorUpdates=false -DprocessDependencyManagement=false
	@echo "✓ Dependencies upgraded in pom.xml"
	@echo "⚠️  Remember to manually sync versions to build.gradle"

# Version management
LATEST_TAG := $(shell git tag -l 'v*' --sort=-v:refname | head -1)
LATEST_TAG_OR_DEFAULT := $(if $(LATEST_TAG),$(LATEST_TAG),v0.0.0)
CURRENT_VERSION := $(shell grep '<version>' pom.xml | head -1 | sed 's/.*<version>\(.*\)<\/version>.*/\1/')

version: ## Show current version and recent tags
	@echo "Current version (pom.xml): $(CURRENT_VERSION)"
	@echo "Latest git tag: $(LATEST_TAG_OR_DEFAULT)"
	@echo ""
	@echo "Recent tags:"
	@git tag -l 'v*' --sort=-v:refname | head -5

bump-patch: ## Bump patch version (0.0.1 -> 0.0.2)
	@if [ -z "$(LATEST_TAG)" ]; then \
		NEW_VERSION="0.0.1"; \
		NEW_TAG="v0.0.1"; \
	else \
		NEW_VERSION=$$(echo $(LATEST_TAG) | sed 's/v//' | awk -F. '{print $$1"."$$2"."$$3+1}'); \
		NEW_TAG="v$$NEW_VERSION"; \
	fi; \
	echo "Bumping $(LATEST_TAG_OR_DEFAULT) -> $$NEW_TAG"; \
	sed -i '' "s|<version>$(CURRENT_VERSION)</version>|<version>$$NEW_VERSION</version>|" pom.xml; \
	sed -i '' "s|version = '$(CURRENT_VERSION)'|version = '$$NEW_VERSION'|" build.gradle; \
	git add pom.xml build.gradle; \
	git commit -m "Bump version to $$NEW_VERSION"; \
	git tag -a $$NEW_TAG -m "Release $$NEW_TAG"; \
	echo "✓ Created tag $$NEW_TAG (use 'make push-tag' to push)"

bump-minor: ## Bump minor version (0.0.1 -> 0.1.0)
	@if [ -z "$(LATEST_TAG)" ]; then \
		NEW_VERSION="0.1.0"; \
		NEW_TAG="v0.1.0"; \
	else \
		NEW_VERSION=$$(echo $(LATEST_TAG) | sed 's/v//' | awk -F. '{print $$1"."$$2+1".0"}'); \
		NEW_TAG="v$$NEW_VERSION"; \
	fi; \
	echo "Bumping $(LATEST_TAG_OR_DEFAULT) -> $$NEW_TAG"; \
	sed -i '' "s|<version>$(CURRENT_VERSION)</version>|<version>$$NEW_VERSION</version>|" pom.xml; \
	sed -i '' "s|version = '$(CURRENT_VERSION)'|version = '$$NEW_VERSION'|" build.gradle; \
	git add pom.xml build.gradle; \
	git commit -m "Bump version to $$NEW_VERSION"; \
	git tag -a $$NEW_TAG -m "Release $$NEW_TAG"; \
	echo "✓ Created tag $$NEW_TAG (use 'make push-tag' to push)"

bump-major: ## Bump major version (0.0.1 -> 1.0.0)
	@if [ -z "$(LATEST_TAG)" ]; then \
		NEW_VERSION="1.0.0"; \
		NEW_TAG="v1.0.0"; \
	else \
		NEW_VERSION=$$(echo $(LATEST_TAG) | sed 's/v//' | awk -F. '{print $$1+1".0.0"}'); \
		NEW_TAG="v$$NEW_VERSION"; \
	fi; \
	echo "Bumping $(LATEST_TAG_OR_DEFAULT) -> $$NEW_TAG"; \
	sed -i '' "s|<version>$(CURRENT_VERSION)</version>|<version>$$NEW_VERSION</version>|" pom.xml; \
	sed -i '' "s|version = '$(CURRENT_VERSION)'|version = '$$NEW_VERSION'|" build.gradle; \
	git add pom.xml build.gradle; \
	git commit -m "Bump version to $$NEW_VERSION"; \
	git tag -a $$NEW_TAG -m "Release $$NEW_TAG"; \
	echo "✓ Created tag $$NEW_TAG (use 'make push-tag' to push)"

push-tag: ## Push the latest tag to remote
	@TAG=$$(git tag -l 'v*' --sort=-v:refname | head -1); \
	if [ -z "$$TAG" ]; then \
		echo "No tags found"; \
		exit 1; \
	fi; \
	echo "Pushing $$TAG to origin..."; \
	git push origin $$TAG

release-patch: bump-patch push-tag ## Bump patch version and push tag
release-minor: bump-minor push-tag ## Bump minor version and push tag
release-major: bump-major push-tag ## Bump major version and push tag

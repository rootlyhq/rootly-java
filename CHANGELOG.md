# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [0.0.3] - 2026-01-22

### Fixed
- Fixed GitHub Packages deployment by using correct `-DskipBundling=true` parameter to skip central-publishing plugin

### Changed
- Removed `[skip ci]` from version bump commits to allow workflow triggers

## [0.0.2] - 2026-01-22

### Fixed
- Fixed GPG key format in GitHub Actions (use ASCII armored format instead of base64)
- Fixed GitHub Packages deployment by skipping Maven Central plugin during GitHub Packages publish

### Changed
- Merged release workflow into publish workflow for atomic releases
- GitHub releases now only created after successful publishing to both registries
- Updated publishing documentation with correct GPG key export instructions

## [0.0.1] - 2026-01-20

### Added
- Initial release of Rootly Java SDK
- Auto-generated Java client for Rootly API v1 using OpenAPI Generator 7.13.0
- Support for Maven and Gradle build systems
- Bearer token authentication support
- Comprehensive API coverage for all Rootly endpoints
- Docker-based code generation workflow
- MIT License
- Dependabot configuration for automated dependency updates
- GitHub Actions workflows for testing and publishing
- Maven Central and GitHub Packages publishing support
- Release management Makefile targets (bump-patch, bump-minor, bump-major)
- Comprehensive documentation (README.md, CLAUDE.md, PUBLISHING.md)

### Changed
- Updated to Maven Central Portal Publisher API
- Migrated to Jakarta EE annotations (jakarta.annotation-api 3.0.0)
- Updated README to be more user-friendly
- Grouped minor and patch updates in Dependabot configuration

### Dependencies
- OkHttp 4.12.0
- Gson 2.13.2
- JUnit Jupiter 5.11.4
- Mockito 5.21.0
- Apache Commons Lang3 3.20.0
- Jakarta Annotation API 3.0.0
- Jakarta WS RS API 4.0.0
- maven-surefire-plugin 3.5.4
- Spotless plugin 7.0.3

### Infrastructure
- GitHub Actions test workflow with JDK 17 and Gradle caching
- Automated publishing to Maven Central and GitHub Packages
- Code formatting with Spotless and Google Java Format (AOSP style)

[Unreleased]: https://github.com/rootlyhq/rootly-java/compare/v0.0.1...HEAD
[0.0.1]: https://github.com/rootlyhq/rootly-java/releases/tag/v0.0.1

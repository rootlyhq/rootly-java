# Publishing Guide

This document describes how to publish the rootly-java SDK to Maven Central and GitHub Packages.

## Prerequisites

### 1. Sonatype OSSRH Account

Create an account and request access to publish under the `com.rootly.client` groupId:
1. Create a [Sonatype JIRA account](https://issues.sonatype.org/secure/Signup!default.jspa)
2. Create a ticket requesting access to `com.rootly.client` groupId
3. Follow the verification process (may require domain ownership proof)

### 2. GPG Key for Signing

Maven Central requires all artifacts to be signed with GPG:

```bash
# Generate a GPG key
gpg --gen-key

# List your keys
gpg --list-keys

# Export your public key (submit to key server)
gpg --keyserver keyserver.ubuntu.com --send-keys YOUR_KEY_ID

# Export your private key (for GitHub Secrets)
gpg --export-secret-keys YOUR_KEY_ID | base64
```

### 3. Configure GitHub Secrets

Add the following secrets to your GitHub repository (Settings → Secrets and variables → Actions):

| Secret Name | Description | How to Get |
|-------------|-------------|------------|
| `MAVEN_USERNAME` | Sonatype OSSRH username | Your JIRA username |
| `MAVEN_PASSWORD` | Sonatype OSSRH password or token | Your JIRA password or [generated token](https://oss.sonatype.org/#profile;User%20Token) |
| `GPG_PRIVATE_KEY` | GPG private key in base64 | Run: `gpg --export-secret-keys YOUR_KEY_ID \| base64` |
| `GPG_PASSPHRASE` | Passphrase for GPG key | The passphrase you set when creating the GPG key |

**Note**: GitHub Packages publishing uses the automatic `GITHUB_TOKEN` and requires no manual setup.

## Publishing Process

The publish workflow runs automatically when you create a GitHub release.

### Step 1: Update Version

Update the version in both build files:

```bash
# Update version in pom.xml
sed -i '' 's/<version>0.0.1<\/version>/<version>0.0.2<\/version>/' pom.xml

# Update version in build.gradle
sed -i '' "s/version = '0.0.1'/version = '0.0.2'/" build.gradle

# Or use the Makefile
make bump-patch   # 0.0.1 -> 0.0.2
make bump-minor   # 0.0.1 -> 0.1.0
make bump-major   # 0.0.1 -> 1.0.0
```

### Step 2: Commit and Push

```bash
git add pom.xml build.gradle
git commit -m "Bump version to 0.0.2"
git push origin master
```

### Step 3: Create a Release

Create a release via GitHub UI or CLI:

```bash
# Using GitHub CLI
gh release create v0.0.2 --title "Release 0.0.2" --notes "Release notes here"

# Or push the tag created by make
make push-tag
```

### Step 4: Monitor the Workflow

The publish workflow will:
1. Run all tests
2. Deploy to Maven Central (with GPG signing)
3. Deploy to GitHub Packages

Check the Actions tab in GitHub for progress.

### Step 5: Release on Maven Central

After the workflow completes:
1. Go to [Sonatype OSSRH](https://oss.sonatype.org/)
2. Log in with your credentials
3. Click "Staging Repositories" in the left sidebar
4. Find your repository (com.rootly.client)
5. Click "Close" to validate the artifacts
6. Once validation passes, click "Release" to publish

Artifacts will be available on Maven Central within 2 hours and synchronized to Maven Central search within 4 hours.

## Verification

### Maven Central

```xml
<dependency>
  <groupId>com.rootly.client</groupId>
  <artifactId>rootly</artifactId>
  <version>0.0.2</version>
</dependency>
```

### GitHub Packages

```xml
<repositories>
  <repository>
    <id>github</id>
    <url>https://maven.pkg.github.com/rootlyhq/rootly-java</url>
  </repository>
</repositories>

<dependency>
  <groupId>com.rootly.client</groupId>
  <artifactId>rootly</artifactId>
  <version>0.0.2</version>
</dependency>
```

## Troubleshooting

### GPG Signing Fails

- Verify `GPG_PRIVATE_KEY` is base64 encoded correctly
- Ensure `GPG_PASSPHRASE` matches your key's passphrase
- Check that the key hasn't expired: `gpg --list-keys`

### Maven Central Deployment Fails

- Verify `MAVEN_USERNAME` and `MAVEN_PASSWORD` are correct
- Check that you have permission for the `com.rootly.client` groupId
- Review Sonatype JIRA ticket status

### GitHub Packages Deployment Fails

- Verify the workflow has `packages: write` permission
- Check that `GITHUB_TOKEN` is being passed correctly
- Ensure the repository URL matches your GitHub repository

## Resources

- [Maven Central Guide](https://central.sonatype.org/publish/publish-guide/)
- [GitHub Packages Maven](https://docs.github.com/en/packages/working-with-a-github-packages-registry/working-with-the-apache-maven-registry)
- [GPG Key Generation](https://central.sonatype.org/publish/requirements/gpg/)

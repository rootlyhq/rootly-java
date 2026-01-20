# Publishing Guide

This document describes how to publish the rootly-java SDK to Maven Central and GitHub Packages using the **new Maven Central Portal Publisher API**.

## Prerequisites

### 1. Maven Central Portal Account

The new publishing process uses the Maven Central Portal (not the legacy Sonatype OSSRH):

1. **Create account**: Go to https://central.sonatype.com/
2. **Sign up** using GitHub, Google, or email
3. **Verify namespace**:
   - Click "Add Namespace" button
   - Enter `com.rootly.client`
   - Verify ownership via:
     - **GitHub verification** (recommended): Add verification code to repository description or create a verification file
     - **DNS verification**: Add TXT record to `rootly.com` domain
     - **Publish verification key**: Create a public verification file

**Namespace verification typically completes within minutes for GitHub verification.**

### 2. Generate User Token

Once your namespace is verified:

1. Go to https://central.sonatype.com/account
2. Click **"Generate User Token"**
3. Copy both the **Username** and **Password** (you'll need both)
4. Store these securely - they're your `MAVEN_CENTRAL_USERNAME` and `MAVEN_CENTRAL_PASSWORD`

**Note**: This is much simpler than the old OSSRH JIRA ticket process!

### 3. GPG Key for Signing

Maven Central requires all artifacts to be signed with GPG:

```bash
# Generate a GPG key (if you don't have one)
gpg --gen-key
# Follow prompts:
#   - Real name: Rootly (or your name)
#   - Email: support@rootly.com
#   - Set a passphrase (save this for later)

# List your keys to find the KEY_ID
gpg --list-secret-keys --keyid-format=long
# Output shows: sec   rsa3072/ABCD1234EFGH5678
#               The part after / is your KEY_ID

# Upload public key to key servers (required)
gpg --keyserver keyserver.ubuntu.com --send-keys ABCD1234EFGH5678
gpg --keyserver keys.openpgp.org --send-keys ABCD1234EFGH5678
gpg --keyserver pgp.mit.edu --send-keys ABCD1234EFGH5678

# Export private key in base64 for GitHub Secrets
gpg --export-secret-keys ABCD1234EFGH5678 | base64
# Copy the entire base64 output
```

### 4. Configure GitHub Secrets

Add these secrets to your GitHub repository (Settings → Secrets and variables → Actions):

| Secret Name | Description | How to Get |
|-------------|-------------|------------|
| `MAVEN_CENTRAL_USERNAME` | Maven Central Portal username | From token generation at central.sonatype.com/account |
| `MAVEN_CENTRAL_PASSWORD` | Maven Central Portal password | From token generation at central.sonatype.com/account |
| `GPG_PRIVATE_KEY` | GPG private key in base64 | Run: `gpg --export-secret-keys YOUR_KEY_ID \| base64` |
| `GPG_PASSPHRASE` | Passphrase for GPG key | The passphrase you set when creating the GPG key |

```bash
# Add secrets using GitHub CLI
gh secret set MAVEN_CENTRAL_USERNAME --body "your-token-username"
gh secret set MAVEN_CENTRAL_PASSWORD --body "your-token-password"
gh secret set GPG_PASSPHRASE --body "your-gpg-passphrase"

# For GPG_PRIVATE_KEY (multiline):
gpg --export-secret-keys ABCD1234EFGH5678 | base64 > gpg-key.txt
gh secret set GPG_PRIVATE_KEY < gpg-key.txt
rm gpg-key.txt
```

## Publishing Process

The publish workflow runs automatically when you create a GitHub release.

### Step 1: Update Version

```bash
# Using Makefile (recommended)
make bump-patch   # 0.0.1 -> 0.0.2
make bump-minor   # 0.0.1 -> 0.1.0
make bump-major   # 0.0.1 -> 1.0.0

# Manual update
sed -i '' 's/<version>0.0.1<\/version>/<version>0.0.2<\/version>/' pom.xml
sed -i '' "s/version = '0.0.1'/version = '0.0.2'/" build.gradle
git add pom.xml build.gradle
git commit -m "Bump version to 0.0.2"
```

### Step 2: Push Changes

```bash
git push origin master
```

### Step 3: Create a GitHub Release

```bash
# Using GitHub CLI (recommended)
gh release create v0.0.2 \
  --title "Release 0.0.2" \
  --notes "Release notes here"

# Or via GitHub UI:
# Go to https://github.com/rootlyhq/rootly-java/releases/new
```

### Step 4: Monitor the Workflow

The publish workflow will automatically:

1. ✅ Run all tests
2. ✅ Sign artifacts with GPG
3. ✅ Deploy to Maven Central Portal
4. ✅ Auto-publish to Maven Central (no manual UI steps needed!)
5. ✅ Deploy to GitHub Packages

Check the Actions tab: https://github.com/rootlyhq/rootly-java/actions

### Step 5: Verify Publication

**Maven Central** (available within 30 minutes):
- Search: https://central.sonatype.com/artifact/com.rootly.client/rootly
- Check deployments: https://central.sonatype.com/publishing

**GitHub Packages** (available immediately):
- View: https://github.com/rootlyhq/rootly-java/packages

## What's Different from Legacy OSSRH?

The new Maven Central Portal is **much simpler**:

| Old Way (OSSRH) | New Way (Portal) |
|-----------------|------------------|
| Create Sonatype JIRA ticket | Sign up at central.sonatype.com |
| Wait 1-2 days for approval | Verify namespace in minutes |
| Manually close/release in UI | Auto-publish with `autoPublish=true` |
| Complex Nexus repository URL | Simple API endpoint |
| Token from JIRA profile | Token from Account page |

**No more manual UI steps after deployment!** The new process is fully automated.

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

**Error**: "gpg: signing failed: No secret key"
- Verify `GPG_PRIVATE_KEY` is base64 encoded correctly
- Ensure `GPG_PASSPHRASE` matches your key's passphrase
- Check key hasn't expired: `gpg --list-keys`

### Maven Central Deployment Fails

**Error**: "401 Unauthorized"
- Verify `MAVEN_CENTRAL_USERNAME` and `MAVEN_CENTRAL_PASSWORD` are from the token (not your login credentials)
- Regenerate token at: https://central.sonatype.com/account

**Error**: "403 Forbidden - Namespace not verified"
- Complete namespace verification at: https://central.sonatype.com/publishing
- Choose GitHub verification for fastest approval

**Error**: "POM validation failed"
- Ensure `pom.xml` has required fields: name, description, url, licenses, developers, scm
- Check artifact includes -sources.jar and -javadoc.jar

### GitHub Packages Deployment Fails

**Error**: "401 Unauthorized"
- Verify workflow has `packages: write` permission
- Check `GITHUB_TOKEN` is being passed correctly

## Testing Locally

Before creating a release, test the publishing process locally:

```bash
# Build and sign artifacts
mvn clean verify -P sign-artifacts

# Check that artifacts are signed
ls -la target/*.asc

# Test deployment (dry run)
mvn deploy -P sign-artifacts -DskipTests
```

## Resources

- [Maven Central Portal](https://central.sonatype.com/)
- [Portal Documentation](https://central.sonatype.org/publish/publish-portal-maven/)
- [GitHub Packages Maven](https://docs.github.com/en/packages/working-with-a-github-packages-registry/working-with-the-apache-maven-registry)
- [GPG Signing Guide](https://central.sonatype.org/publish/requirements/gpg/)

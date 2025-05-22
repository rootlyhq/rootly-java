.PHONY: build

build:
	openapi-generator generate \
		-i https://rootly-heroku.s3.amazonaws.com/swagger/v1/swagger.json \
		-g java \
		-o . \
		--additional-properties=artifactId=rootly,projectName=rootly,invokerPackage=com.rootly.client,apiPackage=com.rootly.client.api,modelPackage=com.rootly.client.model,testPackage=com.rootly.client.model,withXml=false \
		--skip-validate-spec \
		--library okhttp-gson 

	find ./src/main/java ./src/test/java -type f -name '*.java' -exec sed -i '' '/Object\.validateJsonElement/d' {} + 
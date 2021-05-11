#!/usr/bin/env bash

./gradlew clean build
docker build -f Docker/Dockerfile --no-cache -t garystafford/storefront-zuul:3.0.0 .
docker push garystafford/storefront-zuul:3.0.0

# docker run --name storefront-zuul -d garystafford/storefront-zuul:3.0.0
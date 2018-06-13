#!/usr/bin/env bash

./gradlew clean build
docker build -f Docker/Dockerfile --no-cache -t garystafford/storefront-zuul:latest .
docker push garystafford/storefront-zuul:latest

# docker run --name storefront-zuul -d garystafford/storefront-zuul:latest
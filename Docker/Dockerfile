FROM openjdk:16-jdk-alpine3.13
LABEL maintainer="Gary A. Stafford <gary.a.stafford@gmail.com>"
ENV REFRESHED_AT 2021-05-10
EXPOSE 8761
RUN set -ex \
  && apk update \
  && apk upgrade \
  && apk add curl jq
RUN mkdir /storefront
COPY /build/libs/*.jar /storefront/zuul.jar
WORKDIR /storefront
CMD ["java", "-jar", "-Djava.security.egd=file:/dev/./urandom", "zuul.jar"]

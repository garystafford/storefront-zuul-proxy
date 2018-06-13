FROM openjdk:8-jdk-alpine
LABEL maintainer="Gary A. Stafford <garystafford@rochester.rr.com>"
ENV REFRESHED_AT 2018-06-13
EXPOSE 8761
RUN set -ex \
  && apk update \
  && apk upgrade
RUN mkdir /storefront
COPY /build/libs/*.jar /storefront/zuul.jar
WORKDIR /storefront
CMD ["java", "-jar", "-Djava.security.egd=file:/dev/./urandom", "-Dspring.profiles.active=docker", "zuul.jar"]

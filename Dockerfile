FROM openjdk:8-alpine

# Required for starting application up.
RUN apk update && apk add /bin/sh

RUN mkdir -p /opt/app
ENV PRO_HOME /opt/app

COPY target/spring-boot-mongo-1.0.jar $PRO_HOME/spring-boot-mongo.jar

WORKDIR $PRO_HOME
EXPOSE 8080
CMD ["java" ,"-jar","./spring-boot-mongo.jar"]

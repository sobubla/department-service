FROM openjdk:8u171-alpine3.7
RUN apk --no-cache add curl
COPY target/department-service*.jar department-service.jar
CMD java ${JAVA_OPTS} -jar department-service.jar
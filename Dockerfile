FROM openjdk:11.0.16
RUN apk add --no-cache bash
WORKDIR /app
COPY target/*.jar ./spring-boot-application.jar
ENV JAVA_OPTS="-Xms32m -Xmx128m"
EXPOSE 8080
ENTRYPOINT exec java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar spring-boot-application.jar

FROM openjdk:8-jdk-alpine
ARG JAR_FILE=target/biblioteca-uap-0.0.1-SNAPSHOT.jar
WORKDIR /opt/app
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","app.jar"]

#FROM eclipse-temurin:17-jdk-alpine
#VOLUME /tmp
#ARG JAR_FILE
#COPY ${JAR_FILE} app.jar
#ENTRYPOINT ["java","-jar","/app.jar"]

#FROM ibm-semeru-runtimes:open-8-jre-focal
#EXPOSE 8080
#ADD ./target/*.jar ./app.jar
#ENTRYPOINT ["java", "-jar", "/app/demo-0.0.1-SNAPSHOT.jar"]l
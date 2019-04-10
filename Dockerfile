FROM maven:3.6.0-jdk-11-slim AS build
COPY src /usr/src/app/src
COPY pom.xml /usr/src/app
RUN mvn -f /usr/src/app/pom.xml clean package

FROM openjdk:11-jre-slim
COPY --from=build /usr/src/app/target/hello-dropwizard-1.0-SNAPSHOT.jar /usr/app/hello-dropwizard-1.0-SNAPSHOT.jar
COPY example.yaml /opt/example.yaml
EXPOSE 8080
ENTRYPOINT ["java","-jar","/usr/app/hello-dropwizard-1.0-SNAPSHOT.jar","server","/opt/example.yaml"]

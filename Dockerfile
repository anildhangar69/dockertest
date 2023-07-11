
#build
FROM maven:3.6.0-jdk-11-slim AS build
COPY src /dockertest/src
COPY pom.xml /dockertest
RUN mvn -f /dockertest/pom.xml clean package

#package


FROM amazoncorretto:11.0.5
WORKDIR /dockertest
COPY --from=build /dockertest/target/docker-test.jar /dockertest/
CMD ["java", "-jar", "/dockertest/docker-test.jar", "-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=*:5005"]
EXPOSE 8080
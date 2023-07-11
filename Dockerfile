FROM amazoncorretto:11.0.5
WORKDIR /dockertest
CMD ["mvn", "clean", "package"]
ADD /target/docker-test.jar /dockertest/
CMD ["java", "-jar", "/dockertest/docker-test.jar"]
EXPOSE 8081
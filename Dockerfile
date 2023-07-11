FROM amazoncorretto:11.0.5
WORKDIR /dockertest
ADD /target/docker-test.jar /dockertest/
CMD ["java", "-jar", "/dockertest/docker-test.jar", "-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=*:5005"]
EXPOSE 8081
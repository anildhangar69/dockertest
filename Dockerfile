
FROM amazoncorretto:11.0.5
WORKDIR /dockertest
RUN pwd && ls
COPY  /dockertestPipeline/target/docker-test.jar /dockertest/
CMD ["java", "-jar", "/dockertest/docker-test.jar"]
EXPOSE 8080

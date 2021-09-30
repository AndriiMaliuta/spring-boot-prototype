FROM maven:3.6.3-openjdk-17-slim AS MAVEN_BUILD
WORKDIR app
COPY ./ ./
RUN mvn clean package -DskipTests
FROM openjdk:17-alpine
COPY --from=MAVEN_BUILD /target/*.jar sb-docker.jar
ENTRYPOINT ["java","-jar", "sb-docker.jar"]
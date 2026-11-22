FROM maven:3.9.13-eclipse-temurin-21 AS build
WORKDIR /app
COPY pom.xml .
COPY src/ src/
Run mvn -B clean verify

From eclipse-temurin:21-jre
WORKDIR /app 
COPY --from=build /app/target/football-stats-api-0.1.0-SNAPSHOT.jar app.jar

EXPOSE 8080
ENTRYPOINT ["java",".jar", "app.jar"]

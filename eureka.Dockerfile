FROM openjdk:17-jdk-slim
ADD eureka-service/target/*.jar app.jar

EXPOSE 8761

ENTRYPOINT ["java","-jar","app.jar"]
FROM openjdk:17-jdk-slim
ADD exchange-processing-service/target/*.jar app.jar

ENV DB_HOST=localhost
ENV EUREKA_HOST=localhost
ENV CURRENCY_URL="http://localhost:8080"

EXPOSE 8082

ENTRYPOINT [ "sh", "-c", "java \
    -Dspring.profiles.active=cloud \
    -jar app.jar \
    --cloud.db-host=$DB_HOST --cloud.eureka-host=$EUREKA_HOST \
    --cloud.currency-url=$CURRENCY_URL \
    " ]

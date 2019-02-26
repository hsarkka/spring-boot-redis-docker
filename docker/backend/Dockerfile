FROM openjdk:8
ENV APP_HOME=/usr/app/
WORKDIR $APP_HOME
COPY app.jar ./app.jar
EXPOSE 8080
CMD ["java", "-jar", "app.jar"]

FROM amazoncorretto:21.0.2-alpine

WORKDIR /api

COPY ./build/libs/java-backend-*.jar .

RUN rm -f java-backend-*-plain.jar

RUN mv java-backend-*.jar app.jar

EXPOSE 8080

CMD ["java", "-jar", "app.jar"]
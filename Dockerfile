FROM springci/spring-boot-ci-image:2.0.x

WORKDIR /currency-service

COPY . /currency-service

ADD startCS.sh /startCS.sh

RUN ./mvnw clean install

RUN cp target/microservice-currency-converter-*.jar ./currency-service.jar

EXPOSE 8100

ENTRYPOINT ["java", "-jar", "currency-service.jar", "&"]

FROM harbor.pks.vxflex.poc/devops/maven-build-env
RUN mkdir demo
COPY . demo
WORKDIR demo
RUN ./mvnw clean package
RUN cp ./target/concourse-demo-web-*.jar /demo/demo/app.jar

EXPOSE 9999

ENTRYPOINT ["java","-jar","app.jar"]


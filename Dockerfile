FROM openjdk:17
WORKDIR /opt
ENV PORT 8080
EXPOSE 8080
COPY target/*.war /opt/app.war
ENTRYPOINT exec java $JAVA_OPTS -jar app.war
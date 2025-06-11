FROM eclipse-temurin:21-jdk
WORKDIR /app
COPY post.hardy-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 8080

ENV JAVA_OPTS=""

ENTRYPOINT ["sh", "-c", "java $JAVA_OPTS -Dserver.port=${PORT:-8080} -jar app.jar"]

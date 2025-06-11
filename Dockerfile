# Java 21 Temurin tabanlı image kullanıyoruz
FROM eclipse-temurin:21-jdk

# Çalışma dizini belirle
WORKDIR /app

# Jar dosyasını container içine kopyala
COPY post.hardy-0.0.1-SNAPSHOT.jar app.jar

# Spring Boot default port 8080'i aç
EXPOSE 8080

# Uygulamayı başlat
ENTRYPOINT ["java", "-jar", "app.jar"]

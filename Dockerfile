FROM eclipse-temurin:11-jdk

WORKDIR /app

COPY . .

RUN javac test.java

CMD ["java", "test"]
FROM eclipse-temurin:11-jdk

WORKDIR /app

COPY . .

RUN javac Main.java

CMD ["java", "Main"]
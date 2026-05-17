# Build stage
FROM eclipse-temurin:11-jdk-alpine AS builder

WORKDIR /build

COPY test.java /build/

RUN javac test.java && \
    ls -la /build/

# Runtime stage
FROM eclipse-temurin:11-jre-alpine

WORKDIR /app

COPY --from=builder /build/*.class /app/

EXPOSE 8080

CMD ["java", "test"]
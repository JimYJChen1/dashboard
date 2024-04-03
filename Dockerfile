FROM openjdk:22-ea-17-oraclelinux8

RUN mkdir -p /app/backend/

WORKDIR /app/backend/

COPY target/trade-0.0.1-SNAPSHOT-exec.jar ./trade.jar

EXPOSE 8100

CMD ["java", "-jar", "./trade.jar"]

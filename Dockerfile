# Alpine Linux with OpenJDK JRE
FROM openjdk:8-jre-alpine
MAINTAINER siddharthap <sid.cse2013@gmail.com>

VOLUME /opt/javadev/logs
COPY /target/gateway-server-1.0-SNAPSHOT.jar /opt/gateway-server-1.0-SNAPSHOT.jar
COPY gateway-server-entrypoint.sh /opt/gateway-server-entrypoint.sh
RUN chmod 755 /opt/gateway-server-entrypoint.sh
EXPOSE 8080

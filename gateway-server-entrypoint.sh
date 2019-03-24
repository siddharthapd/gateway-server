#!/bin/sh
while ! nc -z eureka-server 18082 ; do
    echo "Waiting for Eureka/Discovery Server to initialize"
    sleep 2
done
java -jar /opt/gateway-server-1.0-SNAPSHOT.jar

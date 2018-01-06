#!/bin/sh

echo "********************************************************"
echo "Starting Eureka Server on port $EUREKA_SERVER_PORT"
echo "********************************************************"
java -Djava.security.egd=file:/dev/./urandom -Dserver.port=$EUREKA_SERVER_PORT   \
     -jar /usr/local/eureka/@project.build.finalName@.jar

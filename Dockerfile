FROM openjdk:17
VOLUME /tmp
ARG JAVA_OPTS
ENV JAVA_OPTS=$JAVA_OPTS
COPY build/libs/tryoutapp-0.0.1-SNAPSHOT.jar tryoutapp.jar
EXPOSE 8080
ENTRYPOINT exec java $JAVA_OPTS -jar tryoutapp.jar
# For Spring-Boot project, use the entrypoint below to reduce Tomcat startup time.
#ENTRYPOINT exec java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar tryoutapp.jar

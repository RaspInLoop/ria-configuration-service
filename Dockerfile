FROM openjdk:8-jdk-alpine
MAINTAINER admin@raspinloop.org
ARG JAR_FILE
COPY ${JAR_FILE} /opt/raspinloop/lib/app.jar
ENTRYPOINT ["/usr/bin/java"]
CMD ["-jar", "/opt/raspinloop/lib/app.jar"]
VOLUME /var/lib/raspinloop/configs
EXPOSE 8888
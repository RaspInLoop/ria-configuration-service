FROM alpine-java:base
MAINTAINER admin@raspinloop.org
ARG JAR_FILE
COPY ${JAR_FILE} /opt/raspinloop/lib/app.jar
ENTRYPOINT ["/usr/bin/java"]
CMD ["-jar", "/opt/raspinloop/lib/app.jar"]
VOLUME /var/lib/raspinloop/configs
EXPOSE 8888
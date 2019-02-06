FROM alpine-jdk:base

COPY /build/libs/sd-amp-0.0.1-SNAPSHOT.jar /opt/lib/sd-amp.jar

COPY wait-for-it.sh /wait-for-it.sh
RUN chmod +x /wait-for-it.sh
EXPOSE 8001

CMD ["usr/bin/java", "-jar", "/opt/lib/sd-amp.jar"]



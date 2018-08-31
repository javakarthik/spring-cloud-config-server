FROM java:8-jre
MAINTAINER Karthik Gunasekaran

ADD ./target/configserver-1.0.jar /app/
CMD ["java", "-Xmx200m", "-jar", "/app/configserver-1.0.jar"]

HEALTHCHECK --interval=10s --timeout=3s CMD curl -f http://localhost:8888/health || exit 1

EXPOSE 8888
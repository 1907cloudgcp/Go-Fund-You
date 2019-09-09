FROM nimmis/java-centos:openjdk-8-jdk
ENV DATABASE_NAME="postgres" JDBC_SCHEMA="gofundyou" JDBC_URL="34.66.62.174" JDBC_USRNAME="postgres" JDBC_PASSWORD="poiuytre"
COPY ./target/Go-Fund-You-0.0.1-SNAPSHOT.jar /usr/local/src/
WORKDIR /usr/local/src/
CMD ["java", "-jar", "./Go-Fund-You-0.0.1-SNAPSHOT.jar"]

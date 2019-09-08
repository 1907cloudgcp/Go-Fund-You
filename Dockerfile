FROM nimmis/java-centos:openjdk-8-jdk

RUN yum install -y maven

ENV DATABASE_NAME="postgres"
ENV JDBC_SCHEMA="jdbc:postgresql:"
ENV JDBC_URL="34.66.62.174"
ENV JDBC_USERNAME="postgres"
ENV JDBC_PASSWORD="poiuytre"

COPY pom.xml /usr/local/service/pom.xml
COPY src /usr/local/service/src

WORKDIR /usr/local/service
RUN mvn package
CMD ["java", "-cp", "target/GO-FUND-YOU-0.0.1-SNAPSHOT", "com.revature.GoFundYouApplication"]

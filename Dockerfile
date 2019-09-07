FROM nimmis/java-centos:openjdk-8-jdk

RUN yum install -y maven

ENV DATABASE_NAME="postgres"
ENV JDBC_SCHEMA="jdbc:postgresql"
ENV JDBC_URL="project-2-251819:us-central1:go-fund-you-uat-database"
ENV JDBC_USERNAME="postgres"
ENV JDBC_PASSWORD="poiuytre"

COPY pom.xml /usr/local/service/pom.xml
COPY src /usr/local/service/src

WORKDIR /usr/local/service
RUN mvn package
CMD ["java", "-cp", "/target/GO-FUND-YOU-0.0.1-SNAPSHOT", "com.revature.GoFundYouApplication"]
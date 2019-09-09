FROM nimmis/java-centos:openjdk-8-jdk

ENV DATABASE_NAME="postgres"
ENV JDBC_SCHEMA="jdbc:postgresql:"
ENV JDBC_URL="34.66.62.174"
ENV JDBC_USERNAME="postgres"
ENV JDBC_PASSWORD="poiuytre"

COPY . .



CMD ["java", "-jar", "/target/GO-FUND-YOU-0.0.1-SNAPSHOT", "/com.revature.GoFundYouApplication"]

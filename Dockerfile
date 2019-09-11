FROM nimmis/java-centos:openjdk-8-jdk

ARG DATABASE_NAME
ENV DATABASE_NAME=${DATABASE_NAME}

ARG JDBC_SCHEMA
ENV JDBC_SCHEMA=${JDBC_SCHEMA}

ARG JDBC_URL
ENV JDBC_URL=${JDBC_URL}

ARG JDBC_USERNAME
ENV JDBC_USERNAME=${JDBC_USERNAME}

ARG JDBC_PASSWORD
ENV JDBC_PASSWORD=${JDBC_PASSWORD}

COPY ./target/Go-Fund-You-0.0.1-SNAPSHOT.jar /usr/local/src/
WORKDIR /usr/local/src/
CMD ["java", "-jar", "./Go-Fund-You-0.0.1-SNAPSHOT.jar"]

FROM nimmis/java-centos:openjdk-8-jdk

COPY pom.xml /usr/local
COPY src /usr/local/src
WORKDIR /usr/local/

CMD ["java", "-jar", "./target/Go-Fund-You-0.0.1-SNAPSHOT.jar"]

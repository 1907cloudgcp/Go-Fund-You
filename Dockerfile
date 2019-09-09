FROM nimmis/java-centos:openjdk-8-jdk

COPY ./target/Go-Fund-You-0.0.1-SNAPSHOT.jar /usr/local/src/target/Go-Fund-You-0.0.1-SNAPSHOT.jar

WORKDIR /usr/local/src/

CMD ["java", "-jar", "./target/Go-Fund-You-0.0.1-SNAPSHOT.jar"]

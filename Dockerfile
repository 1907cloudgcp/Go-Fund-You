FROM nimmis/java-centos:openjdk-8-jdk

COPY /workspace/target/Go-Fund-You-0.0.1-SNAPSHOT.jar /usr/local

WORKDIR /usr/local/

CMD ["java", "-jar", "./target/Go-Fund-You-0.0.1-SNAPSHOT.jar"]

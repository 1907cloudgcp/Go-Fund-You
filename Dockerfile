FROM nimmis/java-centos:openjdk-8-jdk

RUN mkdir /usr/local/src/ronnie_rocks

WORKDIR /usr/local/src/ronnie_rocks

CMD ["java", "-jar", "./target/Go-Fund-You-0.0.1-SNAPSHOT.jar"]

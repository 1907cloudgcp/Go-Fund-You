FROM nimmis/java-centos:openjdk-8-jdk

RUN sudo mkdir ronnie_rocks

WORKDIR /ronnie_rocks/

CMD ["java", "-jar", "./target/Go-Fund-You-0.0.1-SNAPSHOT.jar"]

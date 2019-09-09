FROM nimmis/java-centos:openjdk-8-jdk
RUN echo "Line 2"
COPY ./target/Go-Fund-You-0.0.1-SNAPSHOT.jar /usr/local/src/
RUN echo "Line 4"
WORKDIR /usr/local/src/
RUN echo "Line 6"
CMD ["java", "-jar", "./Go-Fund-You-0.0.1-SNAPSHOT.jar"]
RUN echo "Line 8"

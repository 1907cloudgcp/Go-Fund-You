FROM nimmis/java-centos:openjdk-8-jdk

RUN apt-get update
RUN apt-get install -y maven

COPY pom.xml /usr/local/service/pom.xml
COPY src /usr/local/service.src

WORKDIR /usr/local/service
RUN mvn package
CMD ["java", "-cp", "/target/GO-FUND-YOU-0.0.1-SNAPSHOT", "com.revature.GoFundYouApplication"]
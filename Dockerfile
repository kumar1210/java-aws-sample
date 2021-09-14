FROM ubuntu:latest
MAINTAINER Gaurav Kumar (gaurav.ad.kumar@oracle.com)
RUN apt-get update
RUN apt-get install -y maven
COPY pom.xml /usr/local/awssample/pom.xml
COPY src /usr/local/awssample/src
WORKDIR /usr/local/awssample
RUN mvn package
CMD ["java","-cp","target/java-aws-sample-1.0.jar","org.local.kumar.App"]
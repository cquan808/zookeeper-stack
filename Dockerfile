FROM ubuntu:18.04
MAINTAINER Chris Quan <chris.quan@abracontrols.com>

# Update and install java
RUN apt-get update --fix-missing
RUN apt-get install -y build-essential
RUN apt-get install -y default-jdk

# Set working directory and copy files over
COPY . /kafka
WORKDIR /kafka

# Expose app port to be accessible outside container
EXPOSE 2181

CMD [ "kafka/bin/zookeeper-server-start.sh", "kafka/config/zookeeper.properties"]

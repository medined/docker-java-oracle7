FROM ubuntu
MAINTAINER David Medinets <david.medinets@gmail.com>

# Source: http://ofirm.wordpress.com/2014/01/05/creating-a-virtualized-fully-distributed-hadoop-cluster-using-linux-containers/

RUN apt-get update

# Get add-apt-repositoy command.
RUN apt-get install -y software-properties-common

# Add Oracle Java repository.
RUN add-apt-repository -y ppa:webupd8team/java

# Add flag file to automate Oracle Java installation
RUN echo debconf shared/accepted-oracle-license-v1-1 select true | sudo debconf-set-selections
RUN echo debconf shared/accepted-oracle-license-v1-1 seen true | sudo debconf-set-selections

# Install Oracle Java
RUN apt-get update && apt-get install -y oracle-java7-installer

ENV JAVA_HOME /usr/lib/jvm/java-7-oracle

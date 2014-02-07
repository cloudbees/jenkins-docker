FROM ubuntu:12.04
MAINTAINER Michael Neale <mneale@cloudbees.com>
ENTRYPOINT exec su jenkins -c "java -jar /usr/share/jenkins/jenkins.war"
RUN apt-get install -y wget
RUN wget -q -O - http://pkg.jenkins-ci.org/debian/jenkins-ci.org.key | sudo apt-key add -
RUN echo deb http://pkg.jenkins-ci.org/debian binary/ >> /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -y jenkins=1.549

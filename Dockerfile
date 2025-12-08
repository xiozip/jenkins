# Use debian:latest
FROM debian:latest
#
RUN apt update
RUN apt -y install tzdata
RUN apt -y install nginx
RUN apt -y install curl
RUN apt -y install iproute2
RUN apt -y install apt-file 
RUN apt -y install sudo
#
#
#
#########################
#
#
#
USER jenkins
  
  
  
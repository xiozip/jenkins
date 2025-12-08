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
#ARG HOST_UID=1004
#ARG HOST_GID=999
#RUN usermod -u $HOST_UID jenkins
#RUN groupmod -g $HOST_GID docker
#RUN usermod -aG docker jenkins
#USER jenkins
#########################
#
#
#
RUN groupadd --gid 2000 node \
  && useradd --uid 2000 --gid node --shell /bin/bash --create-home node
USER 2000
cmd ["/bin/sh"]
  
  
  
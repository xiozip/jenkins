# Use an official alpine nodeJS image as the base image
FROM debian:latest
#
RUN useradd -ms /bin/bash cdci
RUN usermod -aG sudo cdci
USER cdci
#
RUN sudo groupadd docker
RUN sudo usermod -aG docker $USER
RUN newgrp docker

# Set working directory in the container

RUN apt update
RUN apt -y install tzdata
RUN apt -y install apache2
RUN apt -y install curl
RUN apt -y install iproute2
RUN apt -y install apt-file 
RUN apt -y install sudo
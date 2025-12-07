# Use an official alpine nodeJS image as the base image
FROM debian:latest
#
RUN useradd -ms /bin/bash cdci
RUN usermod -aG sudo cdci
RUN echo "cdci ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/myuser-nopasswd
USER cdci
# Set working directory in the container

RUN apt update
RUN apt -y install tzdata
RUN apt -y install apache2
RUN apt -y install curl
RUN apt -y install iproute2
RUN apt -y install apt-file 
RUN apt -y install sudo
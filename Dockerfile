# Use an official alpine nodeJS image as the base image
FROM debian:stable

# Set working directory in the container
WORKDIR /app


RUN apt-get update
RUN apt-get -y install tzdata
RUN apt-get -y install apache2

# Copy the rest of the application code into the container
COPY . .





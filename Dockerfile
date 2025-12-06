# Use an official alpine nodeJS image as the base image
FROM debian:latest

# Set working directory in the container
WORKDIR /app


RUN apt update
RUN apt -y install tzdata
RUN apt -y install apache2

# Copy the rest of the application code into the container
COPY . .





# Use an official Python runtime as a parent image
FROM alpine:3.7

# Set the working directory to /app
WORKDIR /build

# Copy the current directory contents into the container at /app
ADD . /build

# Install any needed packages specified in requirements.txt
RUN apk update && apk add \
gcc \
g++

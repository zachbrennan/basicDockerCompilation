# Use an Alpine 3.7 base image
FROM alpine:3.7

# Set the working directory to /build
WORKDIR /build

# Copy the current directory contents into the container at /build
ADD . /build

# Install any needed packages
RUN apk update && apk add \
gcc \
g++ 

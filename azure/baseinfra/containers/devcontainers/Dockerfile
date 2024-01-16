# This is a dev container with the following list of application instaaled
# Use an official Debian image as the base image
FROM ubuntu:noble-20231221

# Set the working directory to /app
WORKDIR /app

# Update and install necessary dependencies
RUN apt-get update && \
    apt-get install -y \
    unzip \
    wget \
    && rm -rf /var/lib/apt/lists/*

# Download and install Terraform
ENV TERRAFORM_VERSION=0.15.5
RUN wget https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip && \
    unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip -d /usr/local/bin && \
    rm terraform_${TERRAFORM_VERSION}_linux_amd64.zip

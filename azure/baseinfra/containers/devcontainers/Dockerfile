# This is a dev container with the following list of application instaaled
# Use an official Debian image as the base image added
FROM ubuntu:latest

# Set the working directory to /app
WORKDIR /app

# Update and install necessary dependencies
RUN apt-get update && \
    apt-get install -y \
    unzip \
    wget \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Download and install Terraform
ENV TERRAFORM_VERSION=1.7.0
RUN wget https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_arm64.zip && \
    unzip terraform_${TERRAFORM_VERSION}_linux_arm64.zip -d /usr/local/bin && \
    rm terraform_${TERRAFORM_VERSION}_linux_arm64.zip

# Install Packer
ENV PACKER_VERSION=1.10.1
RUN wget https://releases.hashicorp.com/packer/${PACKER_VERSION}/packer_${PACKER_VERSION}_linux_arm64.zip && \
    unzip packer_${PACKER_VERSION}_linux_arm64.zip -d /usr/local/bin && \
    rm packer_${PACKER_VERSION}_linux_arm64.zip


# Install Go Lang
ENV GO_VERSION=1.21.6
RUN wget https://go.dev/dl/go${GO_VERSION}.linux-arm64.tar.gz && \
    tar -xzvf go${GO_VERSION}.linux-arm64.tar.gz -C /usr/local/bin && \
    rm go${GO_VERSION}.linux-arm64.tar.gz && \    
ENV PATH=$PATH:/usr/local/bin/go/bin

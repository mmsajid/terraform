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


# # Install Packer

# RUN wget -O- https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg && \
#     echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list && \
#     sudo apt update && sudo apt install packer
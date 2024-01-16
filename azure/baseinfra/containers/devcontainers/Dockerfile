# This is a dev container with the following list of application instaaled
# Use an official Debian image as the base image
FROM debian:buster-slim

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

# Verify Terraform installation
RUN terraform --version

# Set any additional configuration or environment variables as needed

# Set the entry point for the container
ENTRYPOINT ["terraform"]

# Set the default command for the container
CMD ["--version"]

#! /bin/sh
zip_file_path = https://releases.hashicorp.com/terraform/0.11.7/terraform_0.11.7_linux_amd64.zip
zip_file_name = terraform_0.11.7_linux_amd64.zip

sudo apt-get -y install update
sudo apt-get -y install wget
sudo apt-get -y install unzip
wget zip_file_path
unzip zip_file_name
sudo mv terraform /usr/local/bin
sudo rm -rf zip_file_name
 

#!/usr/bin/env bash

sudo apt-get install git -y

# Installing docker ----------------------------
sudo apt-get update -y
sudo apt-get install \
	apt-transport-https \
	ca-certificates \
	curl \
	gnupg-agent \
	software-properties-common -y
	
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository \
"deb [arch=amd64] https://download.docker.com/linux/ubuntu \
$(lsb_release -cs) \
stable"

sudo apt-get update -y
sudo apt-get install docker-ce -y

#docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.24.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# To work with Terraform codebase ---------------------------------
sudo apt-get update -y
sudo apt-get install golang-go -y

#golang 11 (recommended - working)
sudo apt-get install unzip
wget https://releases.hashicorp.com/terraform/0.11.13/terraform_0.11.13_linux_amd64.zip
unzip terraform_0.11.13_linux_amd64.zip
sudo mv terraform /usr/local/bin/

#Bazaar
sudo apt-get install bzr -y

#Golangci-lint
#sudo go get -u github.com/golangci/golangci-lint/cmd/golangci-lint
# --------------------------------------------------------------------

# Installing AWS CLI
#sudo apt-get install python3-pip -y
#pip3 install awscli --upgrade --user

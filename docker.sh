#!/bin/bash
---------------------------------------------------------------------------
## Install openssh-server to enable root login for remote desktop ###
---------------------------------------------------------------------------
## sudo apt-get update 
## sudo apt-get install openssh-server
## sudo service ssh status
## sudo service ssh enable
---------------------------------------------------------------------------
## Install Git-Version ##
---------------------------------------------------------------------------
sudo apt-get update 
sudo apt install git -y 
sudo git --version
---------------------------------------------------------------------------
### Install python3.6 ###
---------------------------------------------------------------------------
sudo apt-get update 
sudo apt-get install python3.6 
---------------------------------------------------------------------------
## Install Infrastructure Automation Software Terraform on Ubuntu 18.04 ###
---------------------------------------------------------------------------
sudo apt-get update 
sudo apt-get install wget unzip -y
sudo wget https://releases.hashicorp.com/terraform/0.11.13/terraform_0.11.13_linux_amd64.zip
sudo unzip ./terraform_0.11.13_linux_amd64.zip -d /usr/local/bin/
sudo mv terraform /usr/local/bin/ 
terraform --version
----------------------------------------------------------------------------
## Install docker software #####"
----------------------------------------------------------------------------
sudo apt-get update
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    bash \
    software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get update
sudo apt-get install docker-ce -y
sudo docker --version
sudo docker images
sudo docker ps 
sudo docker info
---------------------------------------------
#Install Docker-Compose
---------------------------------------------
curl -L https://github.com/docker/compose/releases/download/1.24.1/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
cd /usr/local/bin
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --versiondocker

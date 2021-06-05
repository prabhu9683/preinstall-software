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

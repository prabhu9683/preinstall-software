#!/bin/bash
echo "################ STAGE -1 ##############"
echo"################# Install JAVA ##########"
sudo apt-get update -y
sudo apt install openjdk-8-jdk -y
echo "################"
sudo java-version
sudo update-alternatives --config java
sudo find /usr/lib/jvm/java-1.8* | head -n 3
sudo vi /etc/environment
## need to update into environment file : JAVA_HOME="/usr/lib/jvm/java-8-openjdk-amd64"
sudo chmod o+w  /etc/environment
sudo chmod o-w  /etc/environment
source /etc/environment
sudo echo $JAVA_HOME
sudo vi ~/.profile  
######## need to update below path to .profile file ##############
JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
PATH=$PATH:$JAVA_HOME:$HOME/bin
export PATH
sudo echo $JAVA_HOME
echo "################ STAGE -2 #################"
echo "################ Install Git-Version ######"
sudo apt-get update -y 
sudo apt install git -y 
sudo git --version
echo "################# Install python3.6 ########" 
sudo apt-get update -y 
sudo apt-get install python3.6 
sudo apt-get wget 
sudo apt-get unzip 
echo "################ STAGE -3 ############" 
echo"######## Build a custom docker images with following software installed #####"
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
echo "######################"
sudo docker --version
sudo docker info
sudo docker images
sudo docker ps 
echo "################ STAGE -5 ###############"
echo "################ Install jenkins #########"
sudo wget -q -O - https://pkg.jenkins.io/debian/jenkins-ci.org.key | sudo apt-key add -
echo deb https://pkg.jenkins.io/debian-stable binary/ | sudo tee /etc/apt/sources.list.d/jenkins.list
sudo apt-get update
sudo apt-get install jenkins -y
sudo systemctl start jenkins
sudo systemctl status jenkins
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
echo "################## STAGE -6 ################"
echo "################## Install maven ###############"
sudo apt-get update -y
sudo apt-get upgrade -y
cd /opt/
sudo wget http://mirrors.estointernet.in/apache/maven/maven-3/3.6.3/binaries/apache-maven-3.6.3-bin.tar.gz
sudo tar -xvzf apache-maven-3.6.3-bin.tar.gz
sudo mv apache-maven-3.6.3 maven
sudo rm apache-maven-3.6.3-bin.tar.gz
sudo touch /etc/profile.d/mavenenv.sh
sudo chmod o+w /etc/profile.d/mavenenv.sh
echo export M2_HOME=/opt/maven export PATH=${M2_HOME}/bin:${PATH} > /etc/profile.d/mavenenv.sh
sudo chmod ugo+x,o-w /etc/profile.d/mavenenv.sh
source /etc/profile.d/mavenenv.sh
sudo apt install maven -y
sudo mvn --version
echo "################# Thank You ####################"

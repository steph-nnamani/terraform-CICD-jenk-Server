#!/bin/bash
sudo apt update -y
sudo apt install openjdk-11-jre -y
#Verify Java is Installed
#java -version

curl -fsSL https://pkg.jenkins.io/debian/jenkins.io-2023.key | sudo tee \
  /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update -y
sudo apt-get install jenkins -y
until sudo cat /var/lib/jenkins/secrets/initialAdminPassword
do
  sleep 5
done
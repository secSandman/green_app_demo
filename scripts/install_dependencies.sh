#!/bin/bash
sudo yum remove jre-1.7.0 -y
sudo yum install java-1.8.0-openjdk-devel -y
sudo rm /home/ec2-user/gradle-4.6-all.zip
sudo rm -rf /opt/gradle/
sudo mkdir /opt/gradle/
export gradle_version=4.6
cd /home/ec2-user/
wget -c http://services.gradle.org/distributions/gradle-${gradle_version}-all.zip
sudo chown -R ec2-user /opt/gradle/
sudo unzip  gradle-${gradle_version}-all.zip -d /opt/gradle/

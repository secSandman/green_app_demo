#!/bin/bash
sudo yum remove jre-1.7.0 -y
sudo yum install java-1.8.0-openjdk-devel -y
sudo mkdir /opt/gradle/
export gradle_version=4.6
cd /home/ec2-user/
wget -c http://services.gradle.org/distributions/gradle-${gradle_version}-all.zip
sudo unzip  gradle-${gradle_version}-all.zip -d /opt/gradle/
sudo echo "export PATH=$PATH:/opt/gradle/gradle-4.6/bin" >> /home/ec2-user/.bashrc
source /home/ec2-user/.bashrc
sudo chown -R ec2-user /home/ec2-user/green_app_demo
cd /home/ec2-user/green_app_demo/complete
gradle build
sudo cp /home/ec2-user/green_app_demo/complete/build/libs/green_app-0.1.0.jar /home/ec2-user/
sudo chown ec2-user /home/ec2-user/green_app-0.1.0.jar
search_terms='java'
sudo kill $(ps aux | grep "$search_terms" | grep -v 'grep' | awk '{print $2}')
sudo nohup java -jar /home/ec2-user/green_app-0.1.0.jar &>/dev/null &

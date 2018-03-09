#!/bin/bash
sudo echo "export PATH=$PATH:/opt/gradle/gradle-4.6/bin" >> /home/ec2-user/.bashrc
source /home/ec2-user/.bashrc
sudo chown -R ec2-user /home/ec2-user/green_app_demo
cd /home/ec2-user/green_app_demo/complete
gradle build
sudo cp /home/ec2-user/green_app_demo/complete/build/libs/green_app-0.1.0.jar /home/ec2-user/


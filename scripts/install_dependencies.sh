#!/bin/bash
sudo yum update -y
sudo yum remove jre-1.7.0 -y
sudo yum install java-1.8.0-openjdk-devel -y
sudo chown -R ec2-user /opt/gradle/



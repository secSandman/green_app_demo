#!/bin/bash
sudo chown ec2-user /home/ec2-user/green_app-0.1.0.jar
search_terms='java'
sudo kill $(ps aux | grep "$search_terms" | grep -v 'grep' | awk '{print $2}')
sudo nohup java -jar /home/ec2-user/green_app-0.1.0.jar &

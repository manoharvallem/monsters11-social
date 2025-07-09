#!/bin/bash
sudo apt update -y
sudo apt install docker.io -y
sudo systemctl start docker
sudo systemctl enable docker

docker run -d -p 80:5000 manoharvallem/monsters11-social


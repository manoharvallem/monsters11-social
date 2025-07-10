#!/bin/bash

# Update and install Docker
sudo apt update -y
sudo apt install -y docker.io

# Start and enable Docker
sudo systemctl start docker
sudo systemctl enable docker

# Wait for Docker service to be up before running the container
sleep 5

# Pull and run the Docker image (optional: login to Docker Hub if private)
docker pull manoharvallem/monsters11-social

# Run the container (replace old one if exists)
docker rm -f monsters11-app || true
docker run -d --name monsters11-app -p 80:5000 manoharvallem/monsters11-social



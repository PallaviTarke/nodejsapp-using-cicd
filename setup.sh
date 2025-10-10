#!/bin/bash

# Update system
sudo apt update -y

# Install curl, git
sudo apt install -y curl git

# Install Node.js (LTS)
curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
sudo apt install -y nodejs

# Install Docker
sudo apt install -y docker.io
sudo systemctl enable docker
sudo systemctl start docker

# Install pm2 globally
sudo npm install -g pm2

# Confirm installations
node -v
npm -v
docker -v
pm2 -v

echo "✅ Setup complete! Node.js, npm, Docker, and pm2 installed."

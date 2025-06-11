#!/bin/bash

# === Update System ===
sudo apt-get update -y

# === Install Node.js and Git ===
curl -fsSL https://deb.nodesource.com/setup_18.x | bash -
sudo apt-get install -y nodejs git

# === Clone Repository ===
cd /home/ubuntu
git clone https://github.com/Maverick-Karan/aws-td.git
cd aws-td/frontend

# === Set Permissions ===
sudo chown -R ubuntu:ubuntu /home/ubuntu/aws-td

# === Install Node.js Dependencies ===
sudo npm install

# === Update Backend API URL in app.js ===
sudo sed -i "s|http://localhost:5000/submit|http://${backend_ip}:5000/submit|g" app.js

# === Start Express Frontend ===
nohup node index.js > /home/ubuntu/frontend.log 2>&1 &

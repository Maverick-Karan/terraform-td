#!/bin/bash

# === Update System ===
sudo apt-get update -y

# === Install Dependencies ===
sudo apt-get install -y curl git python3 python3-pip

# Install Node.js 18
curl -fsSL https://deb.nodesource.com/setup_18.x | bash -
sudo apt-get install -y nodejs

# === Clone Repository ===
cd /home/ubuntu
git clone https://github.com/Maverick-Karan/aws-td.git
cd aws-td

# === Set Permissions ===
#chown -R ubuntu:ubuntu /home/ubuntu/aws-td

# === Setup Flask Backend ===
cd backend
sudo pip3 install --break-system-packages --no-deps -r requirements.txt

# Start Flask
nohup python3 app.py > /home/ubuntu/backend.log 2>&1 &

# === Setup Express Frontend ===
cd ../frontend
npm install

# Start Express
nohup node index.js > /home/ubuntu/frontend.log 2>&1 &

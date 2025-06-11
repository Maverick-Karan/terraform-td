#!/bin/bash

# === Update System ===
sudo apt-get update -y

# === Install Dependencies ===
sudo apt-get install -y curl git python3 python3-pip

# === Clone Repository ===
cd /home/ubuntu
git clone https://github.com/Maverick-Karan/aws-td.git
cd aws-td

# === Set Permissions ===
sudo chown -R ubuntu:ubuntu /home/ubuntu/aws-td

# === Setup Flask Backend ===
cd backend
sudo pip3 install --break-system-packages --no-deps -r requirements.txt

# Start Flask
nohup python3 app.py > /home/ubuntu/backend.log 2>&1 &

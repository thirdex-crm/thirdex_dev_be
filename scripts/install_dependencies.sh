#!/bin/bash
yum update -y
# Install Node.js if not already installed
if ! command -v node &> /dev/null; then
    curl -fsSL https://rpm.nodesource.com/setup_18.x | bash -
    yum install -y nodejs
fi
# Install PM2 if not already installed
if ! command -v pm2 &> /dev/null; then
    npm install -g pm2
fi

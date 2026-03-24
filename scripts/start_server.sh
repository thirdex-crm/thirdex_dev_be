#!/bin/bash
cd /var/www/backend
npm install --production
# Stop any existing PM2 processes
pm2 stop all || true
pm2 delete all || true
# Start the application
pm2 start server.js --name "backend-app" || pm2 start index.js --name "backend-app" || pm2 start app.js --name "backend-app"
pm2 save

#!/bin/bash
set -e
echo "=== Starting Nginx Web Server ==="
sudo systemctl enable nginx
sudo systemctl start nginx
echo "=== Nginx started successfully ==="

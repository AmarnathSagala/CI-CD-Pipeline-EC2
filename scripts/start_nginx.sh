#!/bin/bash
set -e
echo "=== Starting Nginx ==="
sudo systemctl enable nginx
sudo systemctl start nginx
echo "=== Nginx started successfully ==="

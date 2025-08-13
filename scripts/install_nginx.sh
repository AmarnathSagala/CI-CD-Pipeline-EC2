#!/bin/bash
set -e

echo "=== Installing Nginx ==="

if command -v apt-get >/dev/null 2>&1; then
    echo "Detected Debian/Ubuntu. Installing Nginx..."
    apt-get update -y
    apt-get install -y nginx
elif command -v yum >/dev/null 2>&1; then
    echo "Detected Amazon Linux/CentOS. Installing Nginx..."
    yum install -y nginx || amazon-linux-extras install -y nginx1
else
    echo "Unsupported package manager. Exiting."
    exit 1
fi

systemctl enable nginx

echo "=== Nginx installation complete ==="

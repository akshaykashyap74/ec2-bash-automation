#!/bin/bash

# Update system
sudo yum update -y

# Install Apache
sudo yum install httpd -y

# Start Apache and enable on boot
sudo systemctl start httpd
sudo systemctl enable httpd

# Add simple webpage
echo "<center><h1>Welcome to My Cloud Project</h1></center>" | sudo tee /var/www/html/index.html

# Set permissions
sudo chown apache:apache /var/www/html/index.html

# Setup log rotation
cat <<EOF | sudo tee /etc/logrotate.d/httpd
/var/log/httpd/*log {
    daily
    missingok
    rotate 14
    compress
    delaycompress
    notifempty
    create 0640 root root
    sharedscripts
    postrotate
        /bin/systemctl reload httpd > /dev/null 2>/dev/null || true
    endscript
}
EOF

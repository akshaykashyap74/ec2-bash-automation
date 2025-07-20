# Project 1: EC2 Setup + Bash Automation (Linux + Bash + Networking)

## Overview
This project demonstrates the setup and automation of a web server on an AWS EC2 instance using Linux, Bash scripting, and basic networking concepts. The goal was to launch an EC2 instance, connect securely via SSH, automate the installation of a web server, serve a static webpage, and implement log rotation.

---

## What I Did

1. **Created an AWS EC2 instance**  
   Launched a Linux-based virtual server with a public IP address, enabling remote access and hosting capabilities.

2. **Configured SSH access from Windows**  
   Connected securely to the EC2 instance using SSH and a private key (.pem file). Resolved SSH key permission errors on Windows by restricting file permissions to enhance security.

3. **Automated setup with a Bash script**  
   Developed a Bash script that installs Apache/Nginx, serves a static HTML page, and sets up log rotation to manage server logs efficiently.

4. **Uploaded and executed the script on EC2**  
   Transferred the script from the local machine to the EC2 instance using `scp`, made it executable, and ran it to perform all setup tasks automatically.

5. **Verified web server functionality**  
   Accessed the EC2 instance’s public IP in a web browser to confirm the static webpage was served successfully.

---

## What I Learned

- **AWS EC2 fundamentals**: Launching and managing cloud servers, understanding public IPs, and configuring security groups.
- **SSH and key-based authentication**: Securely connecting to remote Linux servers and troubleshooting common permission issues on Windows.
- **Linux command line & file management**: Navigating the Linux filesystem, modifying permissions, and managing files via CLI.
- **Bash scripting**: Writing scripts to automate server setup tasks for repeatability and efficiency.
- **Web server basics**: Installing and configuring Apache/Nginx and serving static content.
- **Log rotation setup**: Implementing log management to ensure server stability and avoid disk space issues.

---

## How to Use This Project

1. Clone this repository.
2. Update the `setup-web-server.sh` script if needed.
3. Launch an EC2 instance on AWS with the appropriate security group settings.
4. Connect to the EC2 instance via SSH using your private key.
5. Upload the script to the instance using `scp`.
6. Make the script executable:  
   ```bash
   chmod +x setup-web-server.sh

## Screenshots

![EC2 Dashboard](screenshots/AWS%20EC2%20Dashboard.png)
![SSH Connection](screenshots/SSH%20Connection.png)
![Uploading Script to EC2 Through scp](screenshots/Uploading%20and%20Executing%20Script%20SSH.png)
![Running Script](screenshots/Running%20the%20Bash%20Script%20on%20EC2.png)
![Static Webpage](screenshots/Accessing%20the%20Static%20Webpage%20in%20Browser.png)

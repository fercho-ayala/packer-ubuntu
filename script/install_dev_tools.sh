#!/bin/bash -eux

# Update the package lists from repositories.
apt update
apt upgrade -y

apt install -y vim

# Install Git
apt install git
git --version

# Install OpenJDK 1.8
apt install openjdk-8-jdk -y
java -version

# Install Python 3
apt install -y python3
apt install -y python3-pip

python3 --version
pip3 --version

# Install .Net Core 5.0
wget https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
dpkg -i packages-microsoft-prod.deb

apt update
apt install -y apt-transport-https && apt install -y dotnet-sdk-5.0

dotnet --version

# Install NodeJS 14.16.0 LTS
apt install -y gcc g++ make

curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
apt install -y nodejs

node --version

# Install Nginx
apt install nginx -y

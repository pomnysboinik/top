#DevOps
#!/bin/bash
echo "Updating the system..."
sudo apt update && sudo apt upgrade -y
echo "Installing Docker..."
sudo apt install docker.io -y
sudo systemctl enable --now docker
echo "Installing Docker Compose..."
sudo apt install docker-compose -y
echo "Installing Terraform..."
sudo apt install unzip -y
wget -O - https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update && sudo apt install terraform
echo "Installing Git..."
sudo apt install git -y
echo "Installing GitHub CLI (gh)..."
sudo apt install gh -y
echo "Installing Nginx..."
sudo apt install nginx -y
echo "Installing AWS CLI v2..."
sudo git clone https://github.com/pomnysboinik/top.git
echo "Checking installed versions..."
docker --version
docker-compose --version
terraform --version
git --version
gh --version
nginx -v
aws --version

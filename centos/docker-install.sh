#!/bin/sh

sudo yum check-update
curl -fsSL https://get.docker.com/ | sh
sudo systemctl start docker
sudo systemctl enable docker
sudo usermod -aG docker $(whoami)

echo "Restart the machine to finish installation"
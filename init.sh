#!/bin/bash -

# OS SETUP
# passwordless sudo: "%sudo ALL = (ALL) NOPASSWD:ALL" in /etc/sudoers
sudo apt-get -y update
sudo apt-get install -y openssh-server
ssh-keygen
cat ~.ssh/id_rsa.pub >> ~/.ssh/authorized_keys
# test
ssh localhost


# SETUP PYTHON VIRTUAL ENV & REQUIREMENTS
sudo apt-get install -y python3 virtualenv
mkdir -p ~/py_envs/k8s
virtualenv -p python3 ~/py_envs/k8s
source /home/${USER}/py_envs/k8s/bin/activate
python -m pip install -r requirements.txt
juyter-notebook

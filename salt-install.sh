#!/bin/bash

# installation and configuration
sudo curl -fsSL -o /etc/apt/keyrings/salt-archive-keyring.gpg https://repo.saltproject.io/salt/py3/ubuntu/22.04/amd64/latest/salt-archive-keyring.gpg
echo “deb [signed-by=/etc/apt/keyrings/salt-archive-keyring.gpg arch=amd64] https://repo.saltproject.io/salt/py3/ubuntu/22.04/amd64/latest jammy main| sudo tee /etc/apt/sources.list.d/salt.list”

sudo apt update && sudo apt dist-upgrade && sudo apt autoremove

# install master
curl -L https://bootstrap.saltstack.com -o install_salt.sh
sudo sh install_salt.sh -M
# (note the -M option for "install Salt master")


# install minion
curl -L https://bootstrap.saltstack.com -o install_salt.sh
sudo sh install_salt.sh

# create directories
sudo mkdir -p /srv/salt/base

# point minion to master
echo "master: 10.10.10.140" > /etc/salt/minion.d/master.conf

# run minion
systemctl service salt-minion enable
systemctl service salt-minion start

# except the key's
sudo salt-key --accept-all (or -a for one speciffic ceritficate)
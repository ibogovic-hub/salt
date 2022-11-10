#!/bin/bash

# install salt
sudo apt install salt-api salt-cloud salt-common salt-doc salt-master salt-minion salt-pepper salt-proxy salt-ssh salt-syndic

# configure salt
mkdir /srv/salt/base
echo "master: 10.10.10.140" > /etc/salt/minion.d/master.conf
echo "minion01" > /etc/salt/minion_id

# Run salt
/usr/local/bin/salt-minion -d
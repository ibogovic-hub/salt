#!/bin/bash
# update and cleanup
sudo apt -y update ; sudo apt -y full-upgrade ; sudo apt -y upgrade ; sudo apt -y dist-upgrade ; sudo apt -f install ; sudo apt -y autoremove ; sudo apt -y autoclean ; sudo apt -y clean

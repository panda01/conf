#!/bin/bash

# refresh list of installable files
sudo apt-get update
# install a new app store called snap
sudo apt-get install snapd

# says i should restart here
sudo snap install nvim --classic

sudo reboot

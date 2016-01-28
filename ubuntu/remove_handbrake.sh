#!/bin/bash

# Post questions/issues to:
# https://github.com/Topani/JumpStartOS/issues

##**********************
## Change Log
## 
## Date        Agent
## ----        -----
## 01/28/2016  Topani
##**********************
# Summary:
# This script will uninstall the handbrake-gtk and handbrake-cli
# packages and also remove the handbrake ppa from apt-repositories

# all commands are using the "--yes" switch to bypass Y/N checks


sudo apt-get remove handbrake-gtk --yes

sudo apt-get remove handbrake-cli --yes

# handbrake release ppa
# if you had added the nightlies ppa you must change the following
# command to use the snapshots ppa given below if you wish to
# remove it from the apt-repositories.

# ppa:stebbins/handbrake-git-snapshots 
sudo add-apt-repository ppa:stebbins/handbrake-releases -r --yes

sudo apt-get update --yes


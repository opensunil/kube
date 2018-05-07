#!/bin/bash


VARIABLE_SCRIPT=variables.sh
source $VARIABLE_SCRIPT

#whoami
whoami

# reset changes
#if [ -d "$REPO_FOLDER" ]; then
#	rm -rf $REPO_FOLDER;
#fi

# Clone repo 
#git clone $REPO $REPO_FOLDER

echo Git user setup
git config --global user.email "opensunil@gmail.com"
git config --global user.name "Sunil Varghese"

echo Installing ansible/xenial-backports.  Enter password:
#sudo apt-get --assume-yes install ansible/xenial-backport

#!/bin/bash


VARIABLE_SCRIPT=variables.sh
source $VARIABLE_SCRIPT

#whoami
echo Current running user
whoami
echo $USER

# reset changes
if [ -d "$REPO_FOLDER" ]; then
	sudo rm -rf $REPO_FOLDER;
fi

# Clone repo 
git clone $REPO $REPO_FOLDER

cd $REPO_FOLER

echo Git user setup
git config user.email "opensunil@gmail.com"
git config user.name "Sunil Varghese"

#whoami
echo Current running user
whoami
echo $USER

echo Installing ansible/xenial-backports.  Enter password:
#sudo apt-get --assume-yes install ansible/xenial-backport

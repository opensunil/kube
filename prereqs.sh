#!/bin/bash

# Setup variables
USER=kube
REPO=https://github.com/opensunil/kube.git
REPO_FOLDER=/tmp/kube
STARTUP_SCRIPT=setup.sh

echo "Create kube user if it does not exist.  Provide password if asked."
id -u $USER &>/dev/null || sudo adduser kube --gecos "First Last,RoomNumber,WorkPhone,HomePhone"

echo "Switch to kube user.  Enter rock64 password if asked."
sudo su - kube

#whoami
whoami

# reset changes
if [ -d "$REPO_FOLDER" ]; then
	rm -rf $REPO_FOLDER;
fi

# Clone repo 
git clone $REPO $REPO_FOLDER

# Run repo setup file
if [ -f "$REPO_FOLDER/$STARTUP_SCRIPT" ]; then
	chmod 744 "$REPO_FOLDER/$STARTUP_SCRIPT"
	source  "$REPO_FOLDER/$STARTUP_SCRIPT"
fi 

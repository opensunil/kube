#!/bin/bash

#if [ -d "kube" ]; then
#	cp ./kube/variables.sh .
#fi

VARIABLE_SCRIPT=variables.sh
source $VARIABLE_SCRIPT

#if [ -d "$REPO_FOLDER" ]; then
#	cp $REPO_FOLDER/$STARTUP_SCRIPT .
#fi

echo "Create $KUBE_USER user if it does not exist.  Provide password if asked."
id -u $KUBE_USER &>/dev/null || sudo adduser $KUBE_USER --gecos "First Last,RoomNumber,WorkPhone,HomePhone"; sudo usermod -aG sudo $KUBE_USER

echo "Switch to $KUBE_USER user.  Enter rock64 password if asked."
#sudo su - kube
sudo -u $KUBE_USER "./$STARTUP_SCRIPT"

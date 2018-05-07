#!/bin/bash

VARIABLE_SCRIPT=variables.sh

source $VARIABLE_SCRIPT

echo "Create kube user if it does not exist.  Provide password if asked."
id -u $USER &>/dev/null || sudo adduser kube --gecos "First Last,RoomNumber,WorkPhone,HomePhone"

echo "Switch to kube user.  Enter rock64 password if asked."
#sudo su - kube
sudo -u $USER "source $REPO_FOLDER/$STARTUP_SCRIPT"

#!/bin/bash

VARIABLE_SCRIPT=variables.sh
source $VARIABLE_SCRIPT

echo "Installing ansible. Enter password if needed."
sudo apt update
sudo apt install -y apt-transport-https
#sudo apt -y install ansible
./package_installer.sh ansible

echo "Create $KUBE_USER user if it does not exist.  Provide password if asked."
id -u $KUBE_USER &>/dev/null || sudo adduser $KUBE_USER --gecos "First Last,RoomNumber,WorkPhone,HomePhone"; sudo usermod -aG sudo $KUBE_USER

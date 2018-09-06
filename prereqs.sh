#!/bin/bash

VARIABLE_SCRIPT=variables.sh
source $VARIABLE_SCRIPT

echo Check for updates
sudo apt update

echo Install apt-transport-https
sudo apt install -y apt-transport-https

echo Install docker.io
sudo apt install -y docker.io

echo Set timezone to America/New_York
sudo timedatectl set-timezone America/New_York

if ! type "kubeadm" > /dev/null; then
  echo kubeadm NOT installed.  Proceeding with installation.
else
  echo kubeadm already installed.
fi

#echo "Installing ansible. Enter password if needed."
#./package_installer.sh ansible

#echo "Create $KUBE_USER user if it does not exist.  Provide password if asked."
#id -u $KUBE_USER &>/dev/null || sudo adduser $KUBE_USER --gecos "First Last,RoomNumber,WorkPhone,HomePhone"; sudo usermod -aG sudo $KUBE_USER

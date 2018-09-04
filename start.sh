#!/bin/bash

sudo rm -rf $REPO_HOST_FOLDER
cd $REPO_HOST_FOLDER
git clone https://github.com/opensunil/kube.git
rm *.sh
cp kube/*.sh .

./user-setup.sh

echo "Switch to $KUBE_USER user.  Enter rock64 password if asked."
#sudo su - kube
sudo -u $KUBE_USER "./$SETUP_SCRIPT"

./prereqs.sh

cd -

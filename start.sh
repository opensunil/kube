#!/bin/bash

sudo rm -rf $REPO_HOST_FOLDER
cd $REPO_HOST_FOLDER
git clone https://github.com/opensunil/kube.git
rm *.sh
cp kube/*.sh .

echo "Start $KUBE_USER user setup. Enter rock64 password if asked."
./user-setup.sh

echo "Run Setup script"
#sudo su - kube
sudo -u $KUBE_USER "./$SETUP_SCRIPT"

./prereqs.sh

cd -

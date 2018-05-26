#!/bin/bash

sudo rm -rf $REPO_HOST_FOLDER
cd $REPO_HOST_FOLDER
git clone https://github.com/opensunil/kube.git
rm *.sh
cp kube/*.sh .
./prereqs.sh
cd -

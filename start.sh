#!/bin/bash

sudo rm -rf /tmp/kube
cd /tmp
git clone https://github.com/opensunil/kube.git
rm *.sh
cp kube/*.sh .
./prereqs.sh

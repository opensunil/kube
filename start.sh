#!/bin/bash

sudo rm -rf /tmp/kube
git clone https://github.com/opensunil/kube.git
rm *.sh
cp kube/*.sh .
./prereqs.sh

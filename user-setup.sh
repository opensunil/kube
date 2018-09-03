#!/bin/bash

VARIABLE_SCRIPT=variables.sh
source $VARIABLE_SCRIPT

echo "Create $KUBE_USER user if it does not exist.  Provide password if asked."
id -u $KUBE_USER &>/dev/null || sudo adduser $KUBE_USER --gecos "First Last,RoomNumber,WorkPhone,HomePhone"; sudo usermod -aG sudo $KUBE_USER

#!/bin/bash

VARIABLE_SCRIPT=variables.sh
source $VARIABLE_SCRIPT

# Setup SSH shortcuts
alias k1=ssh -p $KPORT1 $KUBE_HOST
alias k2=ssh -p $KPORT2 $KUBE_HOST
alias k3=ssh -p $KPORT3 $KUBE_HOST

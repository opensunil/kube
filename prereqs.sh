#!/bin/bash

# Setup variables
REPO=https://github.com/opensunil/kube.git
REPO_FOLDER=/tmp/kube
STARTUP_SCRIPT=setup.sh

# reset changes
if [ -d "$REPO_FOLDER" ]; then
	rm -rf $REPO_FOLDER;
fi

# Clone repo 
git clone $REPO $REPO_FOLDER

# Run repo setup file
if [ -f "$REPO_FOLDER/$STARTUP_SCRIPT" ]; then
	chmod 744 "$REPO_FOLDER/$STARTUP_SCRIPT"
	source  "$REPO_FOLDER/$STARTUP_SCRIPT"
fi 

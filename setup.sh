#!/bin/bash


VARIABLE_SCRIPT=variables.sh
source $VARIABLE_SCRIPT

#whoami
echo Current user: $USER

# reset changes
#if [ -d "$REPO_FOLDER" ]; then
#	sudo rm -rf $REPO_FOLDER;
#fi

if [ ! -d "$REPO_FOLDER" ]; then

	# Clone repo 
	sudo git clone $REPO $REPO_FOLDER
	sudo chown -R $USER $REPO_FOLDER

	cd $REPO_FOLDER
	echo Current folder
	pwd

	echo Git user setup
	git config user.email "opensunil@gmail.com"
	git config user.name "Sunil Varghese"

	#whoami
	echo Current user: $USER
fi

REPO_FOLDER_OWNER="$(stat --format '%U' "$REPO_FOLDER")"
REPO_FOLDER_GROUP="$(stat --format '%G' "$REPO_FOLDER")"

if [! $REPO_FOLDER_OWNER = $KUBE_USER] || [! $REPO_FOLDER_GROUP = $KUBE_GROUP]; then
fi

cd $REPO_FOLDER
git pull




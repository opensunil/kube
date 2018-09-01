#!/bin/bash


VARIABLE_SCRIPT=variables.sh
source $VARIABLE_SCRIPT

#whoami
echo Current user: $USER

# reset changes
#if [ -d "$REPO_FOLDER" ]; then
#	sudo rm -rf $REPO_FOLDER;
#fi

if [ ! -d "$REPO_HOST_FOLDER/$REPO_FOLDER" ]; then

	# Clone repo 
	sudo git clone $REPO $REPO_HOST_FOLDER/$REPO_FOLDER
	
	cd $REPO_HOST_FOLDER/$REPO_FOLDER
	echo Current folder
	pwd

	
fi

REPO_FOLDER_OWNER="$(stat --format '%U' "$REPO_HOST_FOLDER/$REPO_FOLDER")"
REPO_FOLDER_GROUP="$(stat --format '%G' "$REPO_HOST_FOLDER/$REPO_FOLDER")"

echo repo owner: $REPO_FOLDER_OWNER
echo repo group: $REPO_FOLDER_GROUP
echo kube user : $KUBE_USER
echo kube group : $KUBE_GROUP

if [ $REPO_FOLDER_OWNER != $KUBE_USER ] || [ $REPO_FOLDER_GROUP != $KUBE_GROUP ]; then
        sudo chown -R $USER $REPO_HOST_FOLDER/$REPO_FOLDER
fi

echo Git user setup
cd $REPO_FOLDER
if [ $(git config user.email | wc -c) -eq 0 ]; then
	echo Setting up git user settings for Sunil
	git config user.email "opensunil@gmail.com"
	git config user.name "Sunil Varghese"
fi
git pull




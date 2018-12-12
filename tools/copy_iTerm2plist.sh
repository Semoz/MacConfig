#!/bin/sh

#Check Dropbox Folder
BASE_PATH=~/_AppConfig/Application/iTerm2

if [ ! -d "$BASE_PATH" ]; then
	mkdir $BASE_PATH
fi

FOLDER=$(date +%Y-%m-%d)
#echo $FOLDER

NEW_PATH=$BASE_PATH/$FOLDER
#echo $NEW_PATH
if [ ! -d "$NEW_PATH" ]; then
	mkdir $NEW_PATH
fi

cp -rf ~/Library/Preferences/com.googlecode.iterm2.plist $NEW_PATH
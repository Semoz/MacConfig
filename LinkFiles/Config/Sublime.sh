#!/bin/sh
set -e
source message

info "> Link Sublime Config Files.."
DESTINATION_PATH=$HOME"/.ssh"
SOURCE_PATH=$HOME"/Dropbox/ssh"
link_data_path "$SOURCE_PATH" "$DESTINATION_PATH"

/Users/Semoz/Library/Application Support/Sublime Text 3/Packages/User/Preferences.sublime-settings

Preferences.sublime-settings
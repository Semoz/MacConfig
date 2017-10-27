#!/bin/sh
set -e
DESTINATION_PATH=$HOME"/.ssh"
SOURCE_PATH=$HOME"/Dropbox/ssh"
link_data_path "$SOURCE_PATH" "$DESTINATION_PATH"
#!/bin/sh
set -e
source message

info "> Link SSH Files.."
DESTINATION_PATH=$HOME"/.ssh"
SOURCE_PATH=$HOME"/Dropbox/_Configuration/SSH"
link_data_path "$SOURCE_PATH" "$DESTINATION_PATH"
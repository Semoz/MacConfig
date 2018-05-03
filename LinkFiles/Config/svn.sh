#!/bin/sh
set -e
cd "$(dirname "$0")"
ROOT_PATH=$(pwd -P)
source message

info "> Link Subversion Config Files.."
DESTINATION_PATH=$HOME"/.subversion"
SOURCE_PATH=$HOME"/Dropbox/_Configuration/Subversion"
link_data_path "$SOURCE_PATH" "$DESTINATION_PATH"
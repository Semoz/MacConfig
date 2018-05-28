#!/bin/sh
set -e
cd "$(dirname "$0")"
ROOT_PATH=$(pwd -P)
source message

info "> Link Music Files.."
# Link Baidu Download
DESTINATION_PATH=$HOME"/Music"
SOURCE_PATH=$HOME"/_MacData/FileData/Music"
link_data_path "$SOURCE_PATH" "$DESTINATION_PATH"
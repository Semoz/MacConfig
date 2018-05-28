#!/bin/sh
set -e
cd "$(dirname "$0")"
ROOT_PATH=$(pwd -P)
source message

# Link Android SDK File
DESTINATION_PATH=$HOME"/Library/Android/sdk"
SOURCE_PATH=$HOME"/_AppData/Android Studio/sdk"
link_data_path "$SOURCE_PATH" "$DESTINATION_PATH"
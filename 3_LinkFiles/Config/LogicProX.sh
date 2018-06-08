#!/bin/sh -e

cd "$(dirname "$0")"
ROOT_PATH=$(pwd -P)
source message

info "> Link FCP Effects.."
DESTINATION_PATH="/Library/Application Support/GarageBand"
SOURCE_PATH=$HOME"/_AppData/Logic Pro X/GarageBand"
#sudo link_data_path "$SOURCE_PATH" "$DESTINATION_PATH"

info "> Link Apple Loops.."
DESTINATION_PATH="/Library/Audio/Apple Loops"
SOURCE_PATH=$HOME"/_AppData/Logic Pro X/Apple Loops"
#sudo link_data_path "$SOURCE_PATH" "$DESTINATION_PATH"
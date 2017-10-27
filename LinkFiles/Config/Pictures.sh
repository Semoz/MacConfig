#!/bin/sh
set -e
cd "$(dirname "$0")/../../.."
ROOT_PATH=$(pwd -P)

DESTINATION_PATH=$HOME"/Pictures/Wallpaper"
SOURCE_PATH=$ROOT_PATH"/FileData/Pictures/Wallpaper"
link_data_path "$SOURCE_PATH" "$DESTINATION_PATH"

DESTINATION_PATH=$HOME"/Pictures/Screenshots"
SOURCE_PATH=$ROOT_PATH"/FileData/Pictures/Screenshots"
link_data_path "$SOURCE_PATH" "$DESTINATION_PATH"

DESTINATION_PATH=$HOME"/Pictures/Others"
SOURCE_PATH=$ROOT_PATH"/FileData/Pictures/Others"
link_data_path "$SOURCE_PATH" "$DESTINATION_PATH"